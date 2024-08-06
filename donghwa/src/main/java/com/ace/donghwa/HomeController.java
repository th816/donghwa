package com.ace.donghwa;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.stream.Collectors;

import org.eclipse.milo.opcua.sdk.client.OpcUaClient;
import org.eclipse.milo.opcua.sdk.client.nodes.UaVariableNode;
import org.eclipse.milo.opcua.stack.core.AttributeId;
import org.eclipse.milo.opcua.stack.core.Identifiers;
import org.eclipse.milo.opcua.stack.core.UaException;
import org.eclipse.milo.opcua.stack.core.types.builtin.DataValue;
import org.eclipse.milo.opcua.stack.core.types.builtin.NodeId;
import org.eclipse.milo.opcua.stack.core.types.builtin.StatusCode;
import org.eclipse.milo.opcua.stack.core.types.builtin.Variant;
import org.eclipse.milo.opcua.stack.core.types.builtin.unsigned.UShort;
import org.eclipse.milo.opcua.stack.core.types.builtin.unsigned.Unsigned;
import org.eclipse.milo.opcua.stack.core.types.enumerated.TimestampsToReturn;
import org.eclipse.milo.opcua.stack.core.types.structured.RequestHeader;
import org.eclipse.milo.opcua.stack.core.types.structured.WriteRequest;
import org.eclipse.milo.opcua.stack.core.types.structured.WriteResponse;
import org.eclipse.milo.opcua.stack.core.types.structured.WriteValue;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        return "recipeTest";
    }
    
    @RequestMapping(value = "/globalParameter", method = RequestMethod.GET)
    public String globalParameter(Locale locale, Model model) {
        return "globalParameter";
    }
    
    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String main(Locale locale, Model model) {
        return "main";
    }

    @RequestMapping(value = "/opc", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> opc() throws UaException, InterruptedException, ExecutionException {

        OpcUaClient client = OpcUaClient.create("opc.tcp://192.168.1.62:5660");

        // 클라이언트 연결
        client.connect().get();

        // 단일 노드 읽기
        NodeId singleNodeId = new NodeId(2, "OPC_TEST.TEST_GROUP.VALUE1");
        CompletableFuture<DataValue> singleFuture = client.readValue(0, TimestampsToReturn.Both, singleNodeId);
        DataValue singleValue = singleFuture.get();
        System.out.println("Read value: " + singleValue.getValue());
        
        // 여러 노드의 ID
        List<NodeId> nodeIds = Arrays.asList(
            new NodeId(2, "OPC_TEST.PLC.D.D902"),
            new NodeId(2, "OPC_TEST.PLC.D.D903"),
            new NodeId(2, "OPC_TEST.PLC.D.D904")
        );

        // 여러 노드 읽기
        List<CompletableFuture<DataValue>> futures = nodeIds.stream()
            .map(nodeId -> client.readValue(0, TimestampsToReturn.Both, nodeId))
            .collect(Collectors.toList());

        // CompletableFuture를 사용하여 모든 값을 한꺼번에 대기
        CompletableFuture<Void> allFutures = CompletableFuture.allOf(futures.toArray(new CompletableFuture[0]));
        allFutures.get();

        // 각 노드의 값을 출력 및 저장
        Map<String, Object> responseMap = new HashMap<>();
        responseMap.put("singleValue", singleValue.getValue().getValue());
        Map<String, Object> multiValues = new HashMap<>();
        for (int i = 0; i < nodeIds.size(); i++) {
            DataValue value = futures.get(i).get();
            multiValues.put(nodeIds.get(i).toString(), value.getValue().getValue());
        }
        responseMap.put("multiValues", multiValues);
        System.out.println("읽어온 노드값 : " + multiValues);
        // 클라이언트 연결 종료
        client.disconnect().get();

        return responseMap;
    }

    @RequestMapping(value = "/write", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, String> write(@RequestBody List<NodeValuePair> nodeValuePairs)
            throws UaException, InterruptedException, ExecutionException {

        OpcUaClient client = OpcUaClient.create("opc.tcp://192.168.1.62:5660");

        // 클라이언트 연결
        client.connect().get();

        UShort namespaceIndex = Unsigned.ushort(2);
        List<CompletableFuture<StatusCode>> futures = new ArrayList<>();

        for (NodeValuePair pair : nodeValuePairs) {
            String nodeIdStr = pair.getNodeId();
            short valueStr = pair.getValue();

            NodeId nodeId = new NodeId(namespaceIndex, nodeIdStr);
            DataValue dataValue = new DataValue(new Variant(valueStr));

            // 노드에 값 쓰기
            futures.add(client.writeValue(nodeId, dataValue));
        }

        boolean allGood = true;
        for (CompletableFuture<StatusCode> future : futures) {
            StatusCode statusCode = future.get();
            if (!statusCode.isGood()) {
                allGood = false;
                System.out.println("Failed to write value: " + statusCode);
            }
        }

        // 클라이언트 연결 종료
        client.disconnect().get();

        // 응답 생성
        Map<String, String> response = new HashMap<>();
        if (allGood) {
            response.put("status", "success");
            response.put("message", "All values written successfully");
        } else {
            response.put("status", "failure");
            response.put("message", "Some values failed to write");
        }

        return response;
    }

    public static class NodeValuePair {
        private String nodeId;
        private short value;

        // Getters and Setters
        public String getNodeId() {
            return nodeId;
        }

        public void setNodeId(String nodeId) {
            this.nodeId = nodeId;
        }

        public short getValue() {
            return value;
        }

        public void setValue(short value) {
            this.value = value;
        }
    }
}

