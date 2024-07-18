<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>OPC UA Client</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
  <div class="group-1">
    <div class="recipe-main"></div>
    <div class="recipe-footer"></div>
    <div class="number"><input type="text" class="input-number" oninput="validateNumberInput(event)"/></div>
    <div class="name"><input type="text" class="input-name" /></div>
    <div class="comment"><input type="text" class="input-comment"/></div>
    <div class="segment">Segment</div>
    <div class="number2">Number</div>
    <div class="name2">Name</div>
    <div class="comment2">Comment</div>
    <div class="recipe-details">Recipe details</div>
    <div class="process-step">Process step</div>
    <div class="time">Time</div>
    <div class="min">[min]</div>
    <div class="c">[°C]</div>
    <div class="c2">[°C]</div>
    <div class="c3">[°C]</div>
    <div class="min2">[min]</div>
    <div class="mbar">[mbar]</div>
    <div class="k-n">[kN]</div>
    <div class="k-n2">[kN]</div>
    <div class="k-n3">[kN]</div>
    <div class="k-n-s">[kN/s]</div>
    <div class="mm">[mm]</div>
    <div class="mm2">[mm]</div>
    <div class="mm3">[mm]</div>
    <div class="min3">[min]</div>
    <div class="min4">[min]</div>
    <div class="div">[-]</div>
    <div class="mm-s">[mm/s]</div>
    <div class="temperature">Temperature</div>
    <div class="temperature-tolerance-controller">
      Temperature tolerance
      <br />
      controller
    </div>
    <div class="temperature-tolerance-holdback">
      Temperature tolerance
      <br />
      holdback
    </div>
    <div class="hold-back-timeout-heating">
      Hold Back Timeout
      <br />
      Heating
    </div>
    <div class="pressure-set-value">Pressure set value</div>
    <div class="pressing-capacity-f-1">Pressing capacity F1</div>
    <div class="pressing-capacity-f-2">Pressing capacity F2</div>
    <div class="force-tolerance">Force Tolerance</div>
    <div class="position-absolut-z">Position absolut “z”</div>
    <div class="position-relatly-z-z">Position relatly “+z/-z”</div>
    <div class="distance-tolerance">Distance Tolerance</div>
    <div class="holding-time-1">Holding time 1</div>
    <div class="holding-time-2">Holding time 2</div>
    <div class="number-of-loops">Number of Loops</div>
    <div class="speed-of-plunger">Speed of Plunger</div>
    <div class="gradient-of-force">Gradient of Force</div>

    <!---------------------------------input text----------------------------------------->

    <div class="segment-0"><input type="text" class="input-segment" id="segment_0" value="0" disabled/></div>
    <div class="segment-1"><input type="text" class="input-segment" id="segment_1" value="1" disabled/></div>
    <div class="segment-2"><input type="text" class="input-segment" id="segment_2" value="2" disabled/></div>
    <div class="segment-3"><input type="text" class="input-segment" id="segment_3" value="3" disabled/></div>
    <div class="segment-4"><input type="text" class="input-segment" id="segment_4" value="4" disabled/></div>
    <div class="segment-5"><input type="text" class="input-segment" id="segment_5" value="5" disabled/></div>
    <div class="segment-6"><input type="text" class="input-segment" id="segment_6" value="6" disabled/></div>
    <div class="segment-7"><input type="text" class="input-segment" id="segment_7" value="7" disabled/></div>
    <div class="segment-8"><input type="text" class="input-segment" id="segment_8" value="8" disabled/></div>
    <div class="segment-9"><input type="text" class="input-segment" id="segment_9" value="9" disabled/></div>
    <div class="segment-10"><input type="text" class="input-segment" id="segment_10" value="10" disabled/></div>
    <div class="segment-11"><input type="text" class="input-segment" id="segment_11" value="11" disabled/></div>
    <div class="segment-12"><input type="text" class="input-segment" id="segment_12" value="12" disabled/></div>
    <div class="segment-13"><input type="text" class="input-segment" id="segment_13" value="13" disabled/></div>
    <div class="segment-14"><input type="text" class="input-segment" id="segment_14" value="14" disabled/></div>
    <div class="segment-15"><input type="text" class="input-segment" id="segment_15" value="15" disabled/></div>
    <div class="segment-16"><input type="text" class="input-segment" id="segment_16" value="16" disabled/></div>
    <div class="segment-17"><input type="text" class="input-segment" id="segment_17" value="17" disabled/></div>
    <div class="segment-18"><input type="text" class="input-segment" id="segment_18" value="18" disabled/></div>
    <div class="segment-19"><input type="text" class="input-segment" id="segment_19" value="19" disabled/></div>
    <div class="segment-20"><input type="text" class="input-segment" id="segment_20" value="20" disabled/></div>
    <div class="segment-21"><input type="text" class="input-segment" id="segment_21" value="21" disabled/></div>
    <div class="segment-22"><input type="text" class="input-segment" id="segment_22" value="22" disabled/></div>
    <div class="segment-23"><input type="text" class="input-segment" id="segment_23" value="23" disabled/></div>
    <div class="segment-24"><input type="text" class="input-segment" id="segment_24" value="24" disabled/></div>
    <div class="segment-25"><input type="text" class="input-segment" id="segment_25" value="25" disabled/></div>
    <div class="segment-26"><input type="text" class="input-segment" id="segment_26" value="26" disabled/></div>
    <div class="segment-27"><input type="text" class="input-segment" id="segment_27" value="27" disabled/></div>
    <div class="segment-28"><input type="text" class="input-segment" id="segment_28" value="28" disabled/></div>
    <div class="segment-29"><input type="text" class="input-segment" id="segment_29" value="29" disabled/></div>
    <div class="segment-30"><input type="text" class="input-segment" id="segment_30" value="30" disabled/></div>
    <div class="segment-31"><input type="text" class="input-segment" id="segment_31" value="31" disabled/></div>
    <div class="segment-32"><input type="text" class="input-segment" id="segment_32" value="32" disabled/></div>
    <div class="segment-33"><input type="text" class="input-segment" id="segment_33" value="33" disabled/></div>
    <div class="segment-34"><input type="text" class="input-segment" id="segment_34" value="34" disabled/></div>
    <div class="segment-35"><input type="text" class="input-segment" id="segment_35" value="35" disabled/></div>
    <div class="segment-36"><input type="text" class="input-segment" id="segment_36" value="36" disabled/></div>
    <div class="segment-37"><input type="text" class="input-segment" id="segment_37" value="37" disabled/></div>
    <div class="segment-38"><input type="text" class="input-segment" id="segment_38" value="38" disabled/></div>
    <div class="segment-39"><input type="text" class="input-segment" id="segment_39" value="39" disabled/></div>

    <div class="process-step-0"><input type="text" class="input-text" id="process_step_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.PROCESS_STEP_0" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-1"><input type="text" class="input-text" id="process_step_1" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-2"><input type="text" class="input-text" id="process_step_2" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-3"><input type="text" class="input-text" id="process_step_3" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-4"><input type="text" class="input-text" id="process_step_4" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-5"><input type="text" class="input-text" id="process_step_5" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-6"><input type="text" class="input-text" id="process_step_6" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-7"><input type="text" class="input-text" id="process_step_7" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-8"><input type="text" class="input-text" id="process_step_8" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-9"><input type="text" class="input-text" id="process_step_9" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-10"><input type="text" class="input-text" id="process_step_10" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-11"><input type="text" class="input-text" id="process_step_11" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-12"><input type="text" class="input-text" id="process_step_12" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-13"><input type="text" class="input-text" id="process_step_13" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-14"><input type="text" class="input-text" id="process_step_14" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-15"><input type="text" class="input-text" id="process_step_15" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-16"><input type="text" class="input-text" id="process_step_16" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-17"><input type="text" class="input-text" id="process_step_17" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-18"><input type="text" class="input-text" id="process_step_18" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-19"><input type="text" class="input-text" id="process_step_19" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-20"><input type="text" class="input-text" id="process_step_20" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-21"><input type="text" class="input-text" id="process_step_21" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-22"><input type="text" class="input-text" id="process_step_22" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-23"><input type="text" class="input-text" id="process_step_23" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-24"><input type="text" class="input-text" id="process_step_24" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-25"><input type="text" class="input-text" id="process_step_25" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-26"><input type="text" class="input-text" id="process_step_26" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-27"><input type="text" class="input-text" id="process_step_27" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-28"><input type="text" class="input-text" id="process_step_28" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-29"><input type="text" class="input-text" id="process_step_29" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-30"><input type="text" class="input-text" id="process_step_30" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-31"><input type="text" class="input-text" id="process_step_31" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-32"><input type="text" class="input-text" id="process_step_32" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-33"><input type="text" class="input-text" id="process_step_33" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-34"><input type="text" class="input-text" id="process_step_34" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-35"><input type="text" class="input-text" id="process_step_35" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-36"><input type="text" class="input-text" id="process_step_36" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-37"><input type="text" class="input-text" id="process_step_37" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-38"><input type="text" class="input-text" id="process_step_38" oninput="validateNumberInput(event)"/></div>
    <div class="process-step-39"><input type="text" class="input-text" id="process_step_39" oninput="validateNumberInput(event)"/></div>

    <div class="time-0"><input type="text" class="input-text" id="time_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TIME_0" oninput="validateNumberInput(event)"/></div>
    <div class="time-1"><input type="text" class="input-text" id="time_1" oninput="validateNumberInput(event)"/></div>
    <div class="time-2"><input type="text" class="input-text" id="time_2" oninput="validateNumberInput(event)"/></div>
    <div class="time-3"><input type="text" class="input-text" id="time_3" oninput="validateNumberInput(event)"/></div>
    <div class="time-4"><input type="text" class="input-text" id="time_4" oninput="validateNumberInput(event)"/></div>
    <div class="time-5"><input type="text" class="input-text" id="time_5" oninput="validateNumberInput(event)"/></div>
    <div class="time-6"><input type="text" class="input-text" id="time_6" oninput="validateNumberInput(event)"/></div>
    <div class="time-7"><input type="text" class="input-text" id="time_7" oninput="validateNumberInput(event)"/></div>
    <div class="time-8"><input type="text" class="input-text" id="time_8" oninput="validateNumberInput(event)"/></div>
    <div class="time-9"><input type="text" class="input-text" id="time_9" oninput="validateNumberInput(event)"/></div>
    <div class="time-10"><input type="text" class="input-text" id="time_10" oninput="validateNumberInput(event)"/></div>
    <div class="time-11"><input type="text" class="input-text" id="time_11" oninput="validateNumberInput(event)"/></div>
    <div class="time-12"><input type="text" class="input-text" id="time_12" oninput="validateNumberInput(event)"/></div>
    <div class="time-13"><input type="text" class="input-text" id="time_13" oninput="validateNumberInput(event)"/></div>
    <div class="time-14"><input type="text" class="input-text" id="time_14" oninput="validateNumberInput(event)"/></div>
    <div class="time-15"><input type="text" class="input-text" id="time_15" oninput="validateNumberInput(event)"/></div>
    <div class="time-16"><input type="text" class="input-text" id="time_16" oninput="validateNumberInput(event)"/></div>
    <div class="time-17"><input type="text" class="input-text" id="time_17" oninput="validateNumberInput(event)"/></div>
    <div class="time-18"><input type="text" class="input-text" id="time_18" oninput="validateNumberInput(event)"/></div>
    <div class="time-19"><input type="text" class="input-text" id="time_19" oninput="validateNumberInput(event)"/></div>
    <div class="time-20"><input type="text" class="input-text" id="time_20" oninput="validateNumberInput(event)"/></div>
    <div class="time-21"><input type="text" class="input-text" id="time_21" oninput="validateNumberInput(event)"/></div>
    <div class="time-22"><input type="text" class="input-text" id="time_22" oninput="validateNumberInput(event)"/></div>
    <div class="time-23"><input type="text" class="input-text" id="time_23" oninput="validateNumberInput(event)"/></div>
    <div class="time-24"><input type="text" class="input-text" id="time_24" oninput="validateNumberInput(event)"/></div>
    <div class="time-25"><input type="text" class="input-text" id="time_25" oninput="validateNumberInput(event)"/></div>
    <div class="time-26"><input type="text" class="input-text" id="time_26" oninput="validateNumberInput(event)"/></div>
    <div class="time-27"><input type="text" class="input-text" id="time_27" oninput="validateNumberInput(event)"/></div>
    <div class="time-28"><input type="text" class="input-text" id="time_28" oninput="validateNumberInput(event)"/></div>
    <div class="time-29"><input type="text" class="input-text" id="time_29" oninput="validateNumberInput(event)"/></div>
    <div class="time-30"><input type="text" class="input-text" id="time_30" oninput="validateNumberInput(event)"/></div>
    <div class="time-31"><input type="text" class="input-text" id="time_31" oninput="validateNumberInput(event)"/></div>
    <div class="time-32"><input type="text" class="input-text" id="time_32" oninput="validateNumberInput(event)"/></div>
    <div class="time-33"><input type="text" class="input-text" id="time_33" oninput="validateNumberInput(event)"/></div>
    <div class="time-34"><input type="text" class="input-text" id="time_34" oninput="validateNumberInput(event)"/></div>
    <div class="time-35"><input type="text" class="input-text" id="time_35" oninput="validateNumberInput(event)"/></div>
    <div class="time-36"><input type="text" class="input-text" id="time_36" oninput="validateNumberInput(event)"/></div>
    <div class="time-37"><input type="text" class="input-text" id="time_37" oninput="validateNumberInput(event)"/></div>
    <div class="time-38"><input type="text" class="input-text" id="time_38" oninput="validateNumberInput(event)"/></div>
    <div class="time-39"><input type="text" class="input-text" id="time_39" oninput="validateNumberInput(event)"/></div>

    <div class="temperature-0"><input type="text" class="input-text" id="temperature_0" name="DONGHWA.PLC.RECIPE.SEGMENT_0.TEMPERATURE_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-1"><input type="text" class="input-text" id="temperature_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-2"><input type="text" class="input-text" id="temperature_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-3"><input type="text" class="input-text" id="temperature_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-4"><input type="text" class="input-text" id="temperature_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-5"><input type="text" class="input-text" id="temperature_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-6"><input type="text" class="input-text" id="temperature_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-7"><input type="text" class="input-text" id="temperature_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-8"><input type="text" class="input-text" id="temperature_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-9"><input type="text" class="input-text" id="temperature_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-10"><input type="text" class="input-text" id="temperature_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-11"><input type="text" class="input-text" id="temperature_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-12"><input type="text" class="input-text" id="temperature_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-13"><input type="text" class="input-text" id="temperature_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-14"><input type="text" class="input-text" id="temperature_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-15"><input type="text" class="input-text" id="temperature_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-16"><input type="text" class="input-text" id="temperature_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-17"><input type="text" class="input-text" id="temperature_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-18"><input type="text" class="input-text" id="temperature_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-19"><input type="text" class="input-text" id="temperature_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-20"><input type="text" class="input-text" id="temperature_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-21"><input type="text" class="input-text" id="temperature_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-22"><input type="text" class="input-text" id="temperature_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-23"><input type="text" class="input-text" id="temperature_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-24"><input type="text" class="input-text" id="temperature_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-25"><input type="text" class="input-text" id="temperature_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-26"><input type="text" class="input-text" id="temperature_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-27"><input type="text" class="input-text" id="temperature_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-28"><input type="text" class="input-text" id="temperature_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-29"><input type="text" class="input-text" id="temperature_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-30"><input type="text" class="input-text" id="temperature_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-31"><input type="text" class="input-text" id="temperature_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-32"><input type="text" class="input-text" id="temperature_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-33"><input type="text" class="input-text" id="temperature_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-34"><input type="text" class="input-text" id="temperature_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-35"><input type="text" class="input-text" id="temperature_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-36"><input type="text" class="input-text" id="temperature_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-37"><input type="text" class="input-text" id="temperature_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-38"><input type="text" class="input-text" id="temperature_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-39"><input type="text" class="input-text" id="temperature_39" oninput="validateNumberInput(event)"/></div>
    
    <div class="temperature-tc-0"><input type="text" class="input-text" id="temperature_tc_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-1"><input type="text" class="input-text" id="temperature_tc_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-2"><input type="text" class="input-text" id="temperature_tc_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-3"><input type="text" class="input-text" id="temperature_tc_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-4"><input type="text" class="input-text" id="temperature_tc_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-5"><input type="text" class="input-text" id="temperature_tc_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-6"><input type="text" class="input-text" id="temperature_tc_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-7"><input type="text" class="input-text" id="temperature_tc_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-8"><input type="text" class="input-text" id="temperature_tc_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-9"><input type="text" class="input-text" id="temperature_tc_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-10"><input type="text" class="input-text" id="temperature_tc_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-11"><input type="text" class="input-text" id="temperature_tc_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-12"><input type="text" class="input-text" id="temperature_tc_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-13"><input type="text" class="input-text" id="temperature_tc_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-14"><input type="text" class="input-text" id="temperature_tc_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-15"><input type="text" class="input-text" id="temperature_tc_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-16"><input type="text" class="input-text" id="temperature_tc_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-17"><input type="text" class="input-text" id="temperature_tc_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-18"><input type="text" class="input-text" id="temperature_tc_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-19"><input type="text" class="input-text" id="temperature_tc_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-20"><input type="text" class="input-text" id="temperature_tc_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-21"><input type="text" class="input-text" id="temperature_tc_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-22"><input type="text" class="input-text" id="temperature_tc_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-23"><input type="text" class="input-text" id="temperature_tc_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-24"><input type="text" class="input-text" id="temperature_tc_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-25"><input type="text" class="input-text" id="temperature_tc_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-26"><input type="text" class="input-text" id="temperature_tc_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-27"><input type="text" class="input-text" id="temperature_tc_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-28"><input type="text" class="input-text" id="temperature_tc_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-29"><input type="text" class="input-text" id="temperature_tc_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-30"><input type="text" class="input-text" id="temperature_tc_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-31"><input type="text" class="input-text" id="temperature_tc_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-32"><input type="text" class="input-text" id="temperature_tc_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-33"><input type="text" class="input-text" id="temperature_tc_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-34"><input type="text" class="input-text" id="temperature_tc_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-35"><input type="text" class="input-text" id="temperature_tc_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-36"><input type="text" class="input-text" id="temperature_tc_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-37"><input type="text" class="input-text" id="temperature_tc_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-38"><input type="text" class="input-text" id="temperature_tc_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-tc-39"><input type="text" class="input-text" id="temperature_tc_39" oninput="validateNumberInput(event)"/></div>

    <div class="temperature-th-0"><input type="text" class="input-text" id="temperature_th_0" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-1"><input type="text" class="input-text" id="temperature_th_1" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-2"><input type="text" class="input-text" id="temperature_th_2" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-3"><input type="text" class="input-text" id="temperature_th_3" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-4"><input type="text" class="input-text" id="temperature_th_4" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-5"><input type="text" class="input-text" id="temperature_th_5" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-6"><input type="text" class="input-text" id="temperature_th_6" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-7"><input type="text" class="input-text" id="temperature_th_7" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-8"><input type="text" class="input-text" id="temperature_th_8" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-9"><input type="text" class="input-text" id="temperature_th_9" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-10"><input type="text" class="input-text" id="temperature_th_10" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-11"><input type="text" class="input-text" id="temperature_th_11" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-12"><input type="text" class="input-text" id="temperature_th_12" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-13"><input type="text" class="input-text" id="temperature_th_13" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-14"><input type="text" class="input-text" id="temperature_th_14" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-15"><input type="text" class="input-text" id="temperature_th_15" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-16"><input type="text" class="input-text" id="temperature_th_16" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-17"><input type="text" class="input-text" id="temperature_th_17" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-18"><input type="text" class="input-text" id="temperature_th_18" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-19"><input type="text" class="input-text" id="temperature_th_19" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-20"><input type="text" class="input-text" id="temperature_th_20" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-21"><input type="text" class="input-text" id="temperature_th_21" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-22"><input type="text" class="input-text" id="temperature_th_22" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-23"><input type="text" class="input-text" id="temperature_th_23" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-24"><input type="text" class="input-text" id="temperature_th_24" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-25"><input type="text" class="input-text" id="temperature_th_25" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-26"><input type="text" class="input-text" id="temperature_th_26" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-27"><input type="text" class="input-text" id="temperature_th_27" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-28"><input type="text" class="input-text" id="temperature_th_28" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-29"><input type="text" class="input-text" id="temperature_th_29" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-30"><input type="text" class="input-text" id="temperature_th_30" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-31"><input type="text" class="input-text" id="temperature_th_31" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-32"><input type="text" class="input-text" id="temperature_th_32" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-33"><input type="text" class="input-text" id="temperature_th_33" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-34"><input type="text" class="input-text" id="temperature_th_34" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-35"><input type="text" class="input-text" id="temperature_th_35" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-36"><input type="text" class="input-text" id="temperature_th_36" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-37"><input type="text" class="input-text" id="temperature_th_37" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-38"><input type="text" class="input-text" id="temperature_th_38" oninput="validateNumberInput(event)"/></div>
    <div class="temperature-th-39"><input type="text" class="input-text" id="temperature_th_39" oninput="validateNumberInput(event)"/></div>

    <div class="hbth-0"><input type="text" class="input-text" id="hbth_0" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-1"><input type="text" class="input-text" id="hbth_1" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-2"><input type="text" class="input-text" id="hbth_2" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-3"><input type="text" class="input-text" id="hbth_3" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-4"><input type="text" class="input-text" id="hbth_4" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-5"><input type="text" class="input-text" id="hbth_5" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-6"><input type="text" class="input-text" id="hbth_6" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-7"><input type="text" class="input-text" id="hbth_7" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-8"><input type="text" class="input-text" id="hbth_8" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-9"><input type="text" class="input-text" id="hbth_9" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-10"><input type="text" class="input-text" id="hbth_10" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-11"><input type="text" class="input-text" id="hbth_11" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-12"><input type="text" class="input-text" id="hbth_12" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-13"><input type="text" class="input-text" id="hbth_13" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-14"><input type="text" class="input-text" id="hbth_14" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-15"><input type="text" class="input-text" id="hbth_15" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-16"><input type="text" class="input-text" id="hbth_16" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-17"><input type="text" class="input-text" id="hbth_17" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-18"><input type="text" class="input-text" id="hbth_18" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-19"><input type="text" class="input-text" id="hbth_19" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-20"><input type="text" class="input-text" id="hbth_20" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-21"><input type="text" class="input-text" id="hbth_21" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-22"><input type="text" class="input-text" id="hbth_22" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-23"><input type="text" class="input-text" id="hbth_23" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-24"><input type="text" class="input-text" id="hbth_24" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-25"><input type="text" class="input-text" id="hbth_25" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-26"><input type="text" class="input-text" id="hbth_26" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-27"><input type="text" class="input-text" id="hbth_27" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-28"><input type="text" class="input-text" id="hbth_28" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-29"><input type="text" class="input-text" id="hbth_29" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-30"><input type="text" class="input-text" id="hbth_30" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-31"><input type="text" class="input-text" id="hbth_31" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-32"><input type="text" class="input-text" id="hbth_32" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-33"><input type="text" class="input-text" id="hbth_33" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-34"><input type="text" class="input-text" id="hbth_34" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-35"><input type="text" class="input-text" id="hbth_35" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-36"><input type="text" class="input-text" id="hbth_36" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-37"><input type="text" class="input-text" id="hbth_37" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-38"><input type="text" class="input-text" id="hbth_38" oninput="validateNumberInput(event)"/></div>
    <div class="hbth-39"><input type="text" class="input-text" id="hbth_39" oninput="validateNumberInput(event)"/></div>

    <div class="pressure-sv-0"><input type="text" class="input-text" id="pressure_sv_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-1"><input type="text" class="input-text" id="pressure_sv_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-2"><input type="text" class="input-text" id="pressure_sv_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-3"><input type="text" class="input-text" id="pressure_sv_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-4"><input type="text" class="input-text" id="pressure_sv_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-5"><input type="text" class="input-text" id="pressure_sv_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-6"><input type="text" class="input-text" id="pressure_sv_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-7"><input type="text" class="input-text" id="pressure_sv_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-8"><input type="text" class="input-text" id="pressure_sv_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-9"><input type="text" class="input-text" id="pressure_sv_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-10"><input type="text" class="input-text" id="pressure_sv_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-11"><input type="text" class="input-text" id="pressure_sv_11" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-12"><input type="text" class="input-text" id="pressure_sv_12" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-13"><input type="text" class="input-text" id="pressure_sv_13" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-14"><input type="text" class="input-text" id="pressure_sv_14" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-15"><input type="text" class="input-text" id="pressure_sv_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-16"><input type="text" class="input-text" id="pressure_sv_16" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-17"><input type="text" class="input-text" id="pressure_sv_17" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-18"><input type="text" class="input-text" id="pressure_sv_18" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-19"><input type="text" class="input-text" id="pressure_sv_19" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-20"><input type="text" class="input-text" id="pressure_sv_20" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-21"><input type="text" class="input-text" id="pressure_sv_21" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-22"><input type="text" class="input-text" id="pressure_sv_22" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-23"><input type="text" class="input-text" id="pressure_sv_23" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-24"><input type="text" class="input-text" id="pressure_sv_24" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-25"><input type="text" class="input-text" id="pressure_sv_25" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-26"><input type="text" class="input-text" id="pressure_sv_26" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-27"><input type="text" class="input-text" id="pressure_sv_27" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-28"><input type="text" class="input-text" id="pressure_sv_28" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-29"><input type="text" class="input-text" id="pressure_sv_29" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-30"><input type="text" class="input-text" id="pressure_sv_30" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-31"><input type="text" class="input-text" id="pressure_sv_31" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-32"><input type="text" class="input-text" id="pressure_sv_32" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-33"><input type="text" class="input-text" id="pressure_sv_33" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-34"><input type="text" class="input-text" id="pressure_sv_34" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-35"><input type="text" class="input-text" id="pressure_sv_35" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-36"><input type="text" class="input-text" id="pressure_sv_36" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-37"><input type="text" class="input-text" id="pressure_sv_37" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-38"><input type="text" class="input-text" id="pressure_sv_38" oninput="validateNumberInput(event)"/></div>
    <div class="pressure-sv-39"><input type="text" class="input-text" id="pressure_sv_39" oninput="validateNumberInput(event)"/></div>

    <div class="pressing-one-0"><input type="text" class="input-text" id="pressing_one_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-1"><input type="text" class="input-text" id="pressing_one_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-2"><input type="text" class="input-text" id="pressing_one_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-3"><input type="text" class="input-text" id="pressing_one_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-4"><input type="text" class="input-text" id="pressing_one_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-5"><input type="text" class="input-text" id="pressing_one_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-6"><input type="text" class="input-text" id="pressing_one_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-7"><input type="text" class="input-text" id="pressing_one_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-8"><input type="text" class="input-text" id="pressing_one_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-9"><input type="text" class="input-text" id="pressing_one_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-10"><input type="text" class="input-text" id="pressing_one_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-11"><input type="text" class="input-text" id="pressing_one_11" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-12"><input type="text" class="input-text" id="pressing_one_12" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-13"><input type="text" class="input-text" id="pressing_one_13" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-14"><input type="text" class="input-text" id="pressing_one_14" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-15"><input type="text" class="input-text" id="pressing_one_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-16"><input type="text" class="input-text" id="pressing_one_16" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-17"><input type="text" class="input-text" id="pressing_one_17" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-18"><input type="text" class="input-text" id="pressing_one_18" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-19"><input type="text" class="input-text" id="pressing_one_19" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-20"><input type="text" class="input-text" id="pressing_one_20" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-21"><input type="text" class="input-text" id="pressing_one_21" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-22"><input type="text" class="input-text" id="pressing_one_22" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-23"><input type="text" class="input-text" id="pressing_one_23" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-24"><input type="text" class="input-text" id="pressing_one_24" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-25"><input type="text" class="input-text" id="pressing_one_25" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-26"><input type="text" class="input-text" id="pressing_one_26" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-27"><input type="text" class="input-text" id="pressing_one_27" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-28"><input type="text" class="input-text" id="pressing_one_28" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-29"><input type="text" class="input-text" id="pressing_one_29" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-30"><input type="text" class="input-text" id="pressing_one_30" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-31"><input type="text" class="input-text" id="pressing_one_31" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-32"><input type="text" class="input-text" id="pressing_one_32" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-33"><input type="text" class="input-text" id="pressing_one_33" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-34"><input type="text" class="input-text" id="pressing_one_34" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-35"><input type="text" class="input-text" id="pressing_one_35" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-36"><input type="text" class="input-text" id="pressing_one_36" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-37"><input type="text" class="input-text" id="pressing_one_37" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-38"><input type="text" class="input-text" id="pressing_one_38" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-one-39"><input type="text" class="input-text" id="pressing_one_39" oninput="validateNumberInput(event)"/></div>

    <div class="pressing-two-0"><input type="text" class="input-text" id="pressing_two_0" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-1"><input type="text" class="input-text" id="pressing_two_1" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-2"><input type="text" class="input-text" id="pressing_two_2" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-3"><input type="text" class="input-text" id="pressing_two_3" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-4"><input type="text" class="input-text" id="pressing_two_4" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-5"><input type="text" class="input-text" id="pressing_two_5" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-6"><input type="text" class="input-text" id="pressing_two_6" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-7"><input type="text" class="input-text" id="pressing_two_7" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-8"><input type="text" class="input-text" id="pressing_two_8" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-9"><input type="text" class="input-text" id="pressing_two_9" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-10"><input type="text" class="input-text" id="pressing_two_10" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-11"><input type="text" class="input-text" id="pressing_two_11" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-12"><input type="text" class="input-text" id="pressing_two_12" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-13"><input type="text" class="input-text" id="pressing_two_13" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-14"><input type="text" class="input-text" id="pressing_two_14" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-15"><input type="text" class="input-text" id="pressing_two_15" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-16"><input type="text" class="input-text" id="pressing_two_16" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-17"><input type="text" class="input-text" id="pressing_two_17" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-18"><input type="text" class="input-text" id="pressing_two_18" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-19"><input type="text" class="input-text" id="pressing_two_19" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-20"><input type="text" class="input-text" id="pressing_two_20" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-21"><input type="text" class="input-text" id="pressing_two_21" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-22"><input type="text" class="input-text" id="pressing_two_22" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-23"><input type="text" class="input-text" id="pressing_two_23" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-24"><input type="text" class="input-text" id="pressing_two_24" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-25"><input type="text" class="input-text" id="pressing_two_25" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-26"><input type="text" class="input-text" id="pressing_two_26" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-27"><input type="text" class="input-text" id="pressing_two_27" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-28"><input type="text" class="input-text" id="pressing_two_28" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-29"><input type="text" class="input-text" id="pressing_two_29" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-30"><input type="text" class="input-text" id="pressing_two_30" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-31"><input type="text" class="input-text" id="pressing_two_31" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-32"><input type="text" class="input-text" id="pressing_two_32" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-33"><input type="text" class="input-text" id="pressing_two_33" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-34"><input type="text" class="input-text" id="pressing_two_34" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-35"><input type="text" class="input-text" id="pressing_two_35" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-36"><input type="text" class="input-text" id="pressing_two_36" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-37"><input type="text" class="input-text" id="pressing_two_37" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-38"><input type="text" class="input-text" id="pressing_two_38" oninput="validateNumberInput(event)"/></div>
    <div class="pressing-two-39"><input type="text" class="input-text" id="pressing_two_39" oninput="validateNumberInput(event)"/></div>

    <div class="force-tol-0"><input type="text" class="input-text" id="force_tol_0" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-1"><input type="text" class="input-text" id="force_tol_1" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-2"><input type="text" class="input-text" id="force_tol_2" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-3"><input type="text" class="input-text" id="force_tol_3" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-4"><input type="text" class="input-text" id="force_tol_4" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-5"><input type="text" class="input-text" id="force_tol_5" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-6"><input type="text" class="input-text" id="force_tol_6" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-7"><input type="text" class="input-text" id="force_tol_7" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-8"><input type="text" class="input-text" id="force_tol_8" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-9"><input type="text" class="input-text" id="force_tol_9" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-10"><input type="text" class="input-text" id="force_tol_10" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-11"><input type="text" class="input-text" id="force_tol_11" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-12"><input type="text" class="input-text" id="force_tol_12" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-13"><input type="text" class="input-text" id="force_tol_13" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-14"><input type="text" class="input-text" id="force_tol_14" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-15"><input type="text" class="input-text" id="force_tol_15" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-16"><input type="text" class="input-text" id="force_tol_16" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-17"><input type="text" class="input-text" id="force_tol_17" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-18"><input type="text" class="input-text" id="force_tol_18" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-19"><input type="text" class="input-text" id="force_tol_19" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-20"><input type="text" class="input-text" id="force_tol_20" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-21"><input type="text" class="input-text" id="force_tol_21" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-22"><input type="text" class="input-text" id="force_tol_22" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-23"><input type="text" class="input-text" id="force_tol_23" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-24"><input type="text" class="input-text" id="force_tol_24" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-25"><input type="text" class="input-text" id="force_tol_25" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-26"><input type="text" class="input-text" id="force_tol_26" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-27"><input type="text" class="input-text" id="force_tol_27" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-28"><input type="text" class="input-text" id="force_tol_28" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-29"><input type="text" class="input-text" id="force_tol_29" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-30"><input type="text" class="input-text" id="force_tol_30" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-31"><input type="text" class="input-text" id="force_tol_31" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-32"><input type="text" class="input-text" id="force_tol_32" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-33"><input type="text" class="input-text" id="force_tol_33" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-34"><input type="text" class="input-text" id="force_tol_34" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-35"><input type="text" class="input-text" id="force_tol_35" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-36"><input type="text" class="input-text" id="force_tol_36" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-37"><input type="text" class="input-text" id="force_tol_37" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-38"><input type="text" class="input-text" id="force_tol_38" oninput="validateNumberInput(event)"/></div>
    <div class="force-tol-39"><input type="text" class="input-text" id="force_tol_39" oninput="validateNumberInput(event)"/></div>

    <div class="position-ab-0"><input type="text" class="input-text" id="position_ab_0" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-1"><input type="text" class="input-text" id="position_ab_1" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-2"><input type="text" class="input-text" id="position_ab_2" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-3"><input type="text" class="input-text" id="position_ab_3" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-4"><input type="text" class="input-text" id="position_ab_4" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-5"><input type="text" class="input-text" id="position_ab_5" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-6"><input type="text" class="input-text" id="position_ab_6" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-7"><input type="text" class="input-text" id="position_ab_7" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-8"><input type="text" class="input-text" id="position_ab_8" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-9"><input type="text" class="input-text" id="position_ab_9" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-10"><input type="text" class="input-text" id="position_ab_10" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-11"><input type="text" class="input-text" id="position_ab_11" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-12"><input type="text" class="input-text" id="position_ab_12" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-13"><input type="text" class="input-text" id="position_ab_13" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-14"><input type="text" class="input-text" id="position_ab_14" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-15"><input type="text" class="input-text" id="position_ab_15" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-16"><input type="text" class="input-text" id="position_ab_16" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-17"><input type="text" class="input-text" id="position_ab_17" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-18"><input type="text" class="input-text" id="position_ab_18" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-19"><input type="text" class="input-text" id="position_ab_19" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-20"><input type="text" class="input-text" id="position_ab_20" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-21"><input type="text" class="input-text" id="position_ab_21" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-22"><input type="text" class="input-text" id="position_ab_22" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-23"><input type="text" class="input-text" id="position_ab_23" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-24"><input type="text" class="input-text" id="position_ab_24" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-25"><input type="text" class="input-text" id="position_ab_25" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-26"><input type="text" class="input-text" id="position_ab_26" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-27"><input type="text" class="input-text" id="position_ab_27" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-28"><input type="text" class="input-text" id="position_ab_28" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-29"><input type="text" class="input-text" id="position_ab_29" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-30"><input type="text" class="input-text" id="position_ab_30" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-31"><input type="text" class="input-text" id="position_ab_31" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-32"><input type="text" class="input-text" id="position_ab_32" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-33"><input type="text" class="input-text" id="position_ab_33" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-34"><input type="text" class="input-text" id="position_ab_34" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-35"><input type="text" class="input-text" id="position_ab_35" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-36"><input type="text" class="input-text" id="position_ab_36" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-37"><input type="text" class="input-text" id="position_ab_37" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-38"><input type="text" class="input-text" id="position_ab_38" oninput="validateNumberInput(event)"/></div>
    <div class="position-ab-39"><input type="text" class="input-text" id="position_ab_39" oninput="validateNumberInput(event)"/></div>

    <div class="position-rel-0"><input type="text" class="input-text" id="position_rel_0" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-1"><input type="text" class="input-text" id="position_rel_1" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-2"><input type="text" class="input-text" id="position_rel_2" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-3"><input type="text" class="input-text" id="position_rel_3" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-4"><input type="text" class="input-text" id="position_rel_4" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-5"><input type="text" class="input-text" id="position_rel_5" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-6"><input type="text" class="input-text" id="position_rel_6" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-7"><input type="text" class="input-text" id="position_rel_7" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-8"><input type="text" class="input-text" id="position_rel_8" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-9"><input type="text" class="input-text" id="position_rel_9" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-10"><input type="text" class="input-text" id="position_rel_10" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-11"><input type="text" class="input-text" id="position_rel_11" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-12"><input type="text" class="input-text" id="position_rel_12" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-13"><input type="text" class="input-text" id="position_rel_13" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-14"><input type="text" class="input-text" id="position_rel_14" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-15"><input type="text" class="input-text" id="position_rel_15" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-16"><input type="text" class="input-text" id="position_rel_16" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-17"><input type="text" class="input-text" id="position_rel_17" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-18"><input type="text" class="input-text" id="position_rel_18" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-19"><input type="text" class="input-text" id="position_rel_19" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-20"><input type="text" class="input-text" id="position_rel_20" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-21"><input type="text" class="input-text" id="position_rel_21" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-22"><input type="text" class="input-text" id="position_rel_22" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-23"><input type="text" class="input-text" id="position_rel_23" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-24"><input type="text" class="input-text" id="position_rel_24" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-25"><input type="text" class="input-text" id="position_rel_25" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-26"><input type="text" class="input-text" id="position_rel_26" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-27"><input type="text" class="input-text" id="position_rel_27" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-28"><input type="text" class="input-text" id="position_rel_28" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-29"><input type="text" class="input-text" id="position_rel_29" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-30"><input type="text" class="input-text" id="position_rel_30" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-31"><input type="text" class="input-text" id="position_rel_31" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-32"><input type="text" class="input-text" id="position_rel_32" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-33"><input type="text" class="input-text" id="position_rel_33" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-34"><input type="text" class="input-text" id="position_rel_34" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-35"><input type="text" class="input-text" id="position_rel_35" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-36"><input type="text" class="input-text" id="position_rel_36" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-37"><input type="text" class="input-text" id="position_rel_37" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-38"><input type="text" class="input-text" id="position_rel_38" oninput="validateNumberInput(event)"/></div>
    <div class="position-rel-39"><input type="text" class="input-text" id="position_rel_39" oninput="validateNumberInput(event)"/></div>

    <div class="distance-0"><input type="text" class="input-text" id="distance_0" oninput="validateNumberInput(event)"/></div>
    <div class="distance-1"><input type="text" class="input-text" id="distance_1" oninput="validateNumberInput(event)"/></div>
    <div class="distance-2"><input type="text" class="input-text" id="distance_2" oninput="validateNumberInput(event)"/></div>
    <div class="distance-3"><input type="text" class="input-text" id="distance_3" oninput="validateNumberInput(event)"/></div>
    <div class="distance-4"><input type="text" class="input-text" id="distance_4" oninput="validateNumberInput(event)"/></div>
    <div class="distance-5"><input type="text" class="input-text" id="distance_5" oninput="validateNumberInput(event)"/></div>
    <div class="distance-6"><input type="text" class="input-text" id="distance_6" oninput="validateNumberInput(event)"/></div>
    <div class="distance-7"><input type="text" class="input-text" id="distance_7" oninput="validateNumberInput(event)"/></div>
    <div class="distance-8"><input type="text" class="input-text" id="distance_8" oninput="validateNumberInput(event)"/></div>
    <div class="distance-9"><input type="text" class="input-text" id="distance_9" oninput="validateNumberInput(event)"/></div>
    <div class="distance-10"><input type="text" class="input-text" id="distance_10" oninput="validateNumberInput(event)"/></div>
    <div class="distance-11"><input type="text" class="input-text" id="distance_11" oninput="validateNumberInput(event)"/></div>
    <div class="distance-12"><input type="text" class="input-text" id="distance_12" oninput="validateNumberInput(event)"/></div>
    <div class="distance-13"><input type="text" class="input-text" id="distance_13" oninput="validateNumberInput(event)"/></div>
    <div class="distance-14"><input type="text" class="input-text" id="distance_14" oninput="validateNumberInput(event)"/></div>
    <div class="distance-15"><input type="text" class="input-text" id="distance_15" oninput="validateNumberInput(event)"/></div>
    <div class="distance-16"><input type="text" class="input-text" id="distance_16" oninput="validateNumberInput(event)"/></div>
    <div class="distance-17"><input type="text" class="input-text" id="distance_17" oninput="validateNumberInput(event)"/></div>
    <div class="distance-18"><input type="text" class="input-text" id="distance_18" oninput="validateNumberInput(event)"/></div>
    <div class="distance-19"><input type="text" class="input-text" id="distance_19" oninput="validateNumberInput(event)"/></div>
    <div class="distance-20"><input type="text" class="input-text" id="distance_20" oninput="validateNumberInput(event)"/></div>
    <div class="distance-21"><input type="text" class="input-text" id="distance_21" oninput="validateNumberInput(event)"/></div>
    <div class="distance-22"><input type="text" class="input-text" id="distance_22" oninput="validateNumberInput(event)"/></div>
    <div class="distance-23"><input type="text" class="input-text" id="distance_23" oninput="validateNumberInput(event)"/></div>
    <div class="distance-24"><input type="text" class="input-text" id="distance_24" oninput="validateNumberInput(event)"/></div>
    <div class="distance-25"><input type="text" class="input-text" id="distance_25" oninput="validateNumberInput(event)"/></div>
    <div class="distance-26"><input type="text" class="input-text" id="distance_26" oninput="validateNumberInput(event)"/></div>
    <div class="distance-27"><input type="text" class="input-text" id="distance_27" oninput="validateNumberInput(event)"/></div>
    <div class="distance-28"><input type="text" class="input-text" id="distance_28" oninput="validateNumberInput(event)"/></div>
    <div class="distance-29"><input type="text" class="input-text" id="distance_29" oninput="validateNumberInput(event)"/></div>
    <div class="distance-30"><input type="text" class="input-text" id="distance_30" oninput="validateNumberInput(event)"/></div>
    <div class="distance-31"><input type="text" class="input-text" id="distance_31" oninput="validateNumberInput(event)"/></div>
    <div class="distance-32"><input type="text" class="input-text" id="distance_32" oninput="validateNumberInput(event)"/></div>
    <div class="distance-33"><input type="text" class="input-text" id="distance_33" oninput="validateNumberInput(event)"/></div>
    <div class="distance-34"><input type="text" class="input-text" id="distance_34" oninput="validateNumberInput(event)"/></div>
    <div class="distance-35"><input type="text" class="input-text" id="distance_35" oninput="validateNumberInput(event)"/></div>
    <div class="distance-36"><input type="text" class="input-text" id="distance_36" oninput="validateNumberInput(event)"/></div>
    <div class="distance-37"><input type="text" class="input-text" id="distance_37" oninput="validateNumberInput(event)"/></div>
    <div class="distance-38"><input type="text" class="input-text" id="distance_38" oninput="validateNumberInput(event)"/></div>
    <div class="distance-39"><input type="text" class="input-text" id="distance_39" oninput="validateNumberInput(event)"/></div>

    <div class="holding-one-0"><input type="text" class="input-text" id="holding_one_0" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-1"><input type="text" class="input-text" id="holding_one_1" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-2"><input type="text" class="input-text" id="holding_one_2" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-3"><input type="text" class="input-text" id="holding_one_3" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-4"><input type="text" class="input-text" id="holding_one_4" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-5"><input type="text" class="input-text" id="holding_one_5" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-6"><input type="text" class="input-text" id="holding_one_6" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-7"><input type="text" class="input-text" id="holding_one_7" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-8"><input type="text" class="input-text" id="holding_one_8" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-9"><input type="text" class="input-text" id="holding_one_9" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-10"><input type="text" class="input-text" id="holding_one_10" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-11"><input type="text" class="input-text" id="holding_one_11" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-12"><input type="text" class="input-text" id="holding_one_12" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-13"><input type="text" class="input-text" id="holding_one_13" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-14"><input type="text" class="input-text" id="holding_one_14" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-15"><input type="text" class="input-text" id="holding_one_15" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-16"><input type="text" class="input-text" id="holding_one_16" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-17"><input type="text" class="input-text" id="holding_one_17" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-18"><input type="text" class="input-text" id="holding_one_18" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-19"><input type="text" class="input-text" id="holding_one_19" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-20"><input type="text" class="input-text" id="holding_one_20" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-21"><input type="text" class="input-text" id="holding_one_21" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-22"><input type="text" class="input-text" id="holding_one_22" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-23"><input type="text" class="input-text" id="holding_one_23" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-24"><input type="text" class="input-text" id="holding_one_24" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-25"><input type="text" class="input-text" id="holding_one_25" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-26"><input type="text" class="input-text" id="holding_one_26" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-27"><input type="text" class="input-text" id="holding_one_27" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-28"><input type="text" class="input-text" id="holding_one_28" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-29"><input type="text" class="input-text" id="holding_one_29" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-30"><input type="text" class="input-text" id="holding_one_30" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-31"><input type="text" class="input-text" id="holding_one_31" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-32"><input type="text" class="input-text" id="holding_one_32" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-33"><input type="text" class="input-text" id="holding_one_33" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-34"><input type="text" class="input-text" id="holding_one_34" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-35"><input type="text" class="input-text" id="holding_one_35" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-36"><input type="text" class="input-text" id="holding_one_36" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-37"><input type="text" class="input-text" id="holding_one_37" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-38"><input type="text" class="input-text" id="holding_one_38" oninput="validateNumberInput(event)"/></div>
    <div class="holding-one-39"><input type="text" class="input-text" id="holding_one_39" oninput="validateNumberInput(event)"/></div>

    <div class="holding-two-0"><input type="text" class="input-text" id="holding_two_0" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-1"><input type="text" class="input-text" id="holding_two_1" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-2"><input type="text" class="input-text" id="holding_two_2" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-3"><input type="text" class="input-text" id="holding_two_3" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-4"><input type="text" class="input-text" id="holding_two_4" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-5"><input type="text" class="input-text" id="holding_two_5" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-6"><input type="text" class="input-text" id="holding_two_6" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-7"><input type="text" class="input-text" id="holding_two_7" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-8"><input type="text" class="input-text" id="holding_two_8" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-9"><input type="text" class="input-text" id="holding_two_9" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-10"><input type="text" class="input-text" id="holding_two_10" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-11"><input type="text" class="input-text" id="holding_two_11" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-12"><input type="text" class="input-text" id="holding_two_12" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-13"><input type="text" class="input-text" id="holding_two_13" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-14"><input type="text" class="input-text" id="holding_two_14" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-15"><input type="text" class="input-text" id="holding_two_15" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-16"><input type="text" class="input-text" id="holding_two_16" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-17"><input type="text" class="input-text" id="holding_two_17" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-18"><input type="text" class="input-text" id="holding_two_18" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-19"><input type="text" class="input-text" id="holding_two_19" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-20"><input type="text" class="input-text" id="holding_two_20" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-21"><input type="text" class="input-text" id="holding_two_21" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-22"><input type="text" class="input-text" id="holding_two_22" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-23"><input type="text" class="input-text" id="holding_two_23" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-24"><input type="text" class="input-text" id="holding_two_24" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-25"><input type="text" class="input-text" id="holding_two_25" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-26"><input type="text" class="input-text" id="holding_two_26" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-27"><input type="text" class="input-text" id="holding_two_27" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-28"><input type="text" class="input-text" id="holding_two_28" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-29"><input type="text" class="input-text" id="holding_two_29" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-30"><input type="text" class="input-text" id="holding_two_30" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-31"><input type="text" class="input-text" id="holding_two_31" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-32"><input type="text" class="input-text" id="holding_two_32" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-33"><input type="text" class="input-text" id="holding_two_33" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-34"><input type="text" class="input-text" id="holding_two_34" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-35"><input type="text" class="input-text" id="holding_two_35" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-36"><input type="text" class="input-text" id="holding_two_36" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-37"><input type="text" class="input-text" id="holding_two_37" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-38"><input type="text" class="input-text" id="holding_two_38" oninput="validateNumberInput(event)"/></div>
    <div class="holding-two-39"><input type="text" class="input-text" id="holding_two_39" oninput="validateNumberInput(event)"/></div>

    <div class="number-loops-0"><input type="text" class="input-text" id="number_loops_0" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-1"><input type="text" class="input-text" id="number_loops_1" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-2"><input type="text" class="input-text" id="number_loops_2" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-3"><input type="text" class="input-text" id="number_loops_3" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-4"><input type="text" class="input-text" id="number_loops_4" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-5"><input type="text" class="input-text" id="number_loops_5" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-6"><input type="text" class="input-text" id="number_loops_6" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-7"><input type="text" class="input-text" id="number_loops_7" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-8"><input type="text" class="input-text" id="number_loops_8" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-9"><input type="text" class="input-text" id="number_loops_9" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-10"><input type="text" class="input-text" id="number_loops_10" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-11"><input type="text" class="input-text" id="number_loops_11" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-12"><input type="text" class="input-text" id="number_loops_12" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-13"><input type="text" class="input-text" id="number_loops_13" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-14"><input type="text" class="input-text" id="number_loops_14" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-15"><input type="text" class="input-text" id="number_loops_15" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-16"><input type="text" class="input-text" id="number_loops_16" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-17"><input type="text" class="input-text" id="number_loops_17" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-18"><input type="text" class="input-text" id="number_loops_18" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-19"><input type="text" class="input-text" id="number_loops_19" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-20"><input type="text" class="input-text" id="number_loops_20" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-21"><input type="text" class="input-text" id="number_loops_21" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-22"><input type="text" class="input-text" id="number_loops_22" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-23"><input type="text" class="input-text" id="number_loops_23" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-24"><input type="text" class="input-text" id="number_loops_24" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-25"><input type="text" class="input-text" id="number_loops_25" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-26"><input type="text" class="input-text" id="number_loops_26" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-27"><input type="text" class="input-text" id="number_loops_27" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-28"><input type="text" class="input-text" id="number_loops_28" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-29"><input type="text" class="input-text" id="number_loops_29" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-30"><input type="text" class="input-text" id="number_loops_30" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-31"><input type="text" class="input-text" id="number_loops_31" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-32"><input type="text" class="input-text" id="number_loops_32" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-33"><input type="text" class="input-text" id="number_loops_33" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-34"><input type="text" class="input-text" id="number_loops_34" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-35"><input type="text" class="input-text" id="number_loops_35" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-36"><input type="text" class="input-text" id="number_loops_36" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-37"><input type="text" class="input-text" id="number_loops_37" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-38"><input type="text" class="input-text" id="number_loops_38" oninput="validateNumberInput(event)"/></div>
    <div class="number-loops-39"><input type="text" class="input-text" id="number_loops_39" oninput="validateNumberInput(event)"/></div>

    <div class="speed-plunger-0"><input type="text" class="input-text" id="speed_plunger_0" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-1"><input type="text" class="input-text" id="speed_plunger_1" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-2"><input type="text" class="input-text" id="speed_plunger_2" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-3"><input type="text" class="input-text" id="speed_plunger_3" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-4"><input type="text" class="input-text" id="speed_plunger_4" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-5"><input type="text" class="input-text" id="speed_plunger_5" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-6"><input type="text" class="input-text" id="speed_plunger_6" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-7"><input type="text" class="input-text" id="speed_plunger_7" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-8"><input type="text" class="input-text" id="speed_plunger_8" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-9"><input type="text" class="input-text" id="speed_plunger_9" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-10"><input type="text" class="input-text" id="speed_plunger_10" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-11"><input type="text" class="input-text" id="speed_plunger_11" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-12"><input type="text" class="input-text" id="speed_plunger_12" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-13"><input type="text" class="input-text" id="speed_plunger_13" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-14"><input type="text" class="input-text" id="speed_plunger_14" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-15"><input type="text" class="input-text" id="speed_plunger_15" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-16"><input type="text" class="input-text" id="speed_plunger_16" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-17"><input type="text" class="input-text" id="speed_plunger_17" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-18"><input type="text" class="input-text" id="speed_plunger_18" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-19"><input type="text" class="input-text" id="speed_plunger_19" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-20"><input type="text" class="input-text" id="speed_plunger_20" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-21"><input type="text" class="input-text" id="speed_plunger_21" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-22"><input type="text" class="input-text" id="speed_plunger_22" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-23"><input type="text" class="input-text" id="speed_plunger_23" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-24"><input type="text" class="input-text" id="speed_plunger_24" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-25"><input type="text" class="input-text" id="speed_plunger_25" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-26"><input type="text" class="input-text" id="speed_plunger_26" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-27"><input type="text" class="input-text" id="speed_plunger_27" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-28"><input type="text" class="input-text" id="speed_plunger_28" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-29"><input type="text" class="input-text" id="speed_plunger_29" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-30"><input type="text" class="input-text" id="speed_plunger_30" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-31"><input type="text" class="input-text" id="speed_plunger_31" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-32"><input type="text" class="input-text" id="speed_plunger_32" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-33"><input type="text" class="input-text" id="speed_plunger_33" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-34"><input type="text" class="input-text" id="speed_plunger_34" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-35"><input type="text" class="input-text" id="speed_plunger_35" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-36"><input type="text" class="input-text" id="speed_plunger_36" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-37"><input type="text" class="input-text" id="speed_plunger_37" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-38"><input type="text" class="input-text" id="speed_plunger_38" oninput="validateNumberInput(event)"/></div>
    <div class="speed-plunger-39"><input type="text" class="input-text" id="speed_plunger_39" oninput="validateNumberInput(event)"/></div>

    <div class="gradient-force-0"><input type="text" class="input-text" id="gradient_force_0" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-1"><input type="text" class="input-text" id="gradient_force_1" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-2"><input type="text" class="input-text" id="gradient_force_2" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-3"><input type="text" class="input-text" id="gradient_force_3" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-4"><input type="text" class="input-text" id="gradient_force_4" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-5"><input type="text" class="input-text" id="gradient_force_5" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-6"><input type="text" class="input-text" id="gradient_force_6" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-7"><input type="text" class="input-text" id="gradient_force_7" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-8"><input type="text" class="input-text" id="gradient_force_8" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-9"><input type="text" class="input-text" id="gradient_force_9" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-10"><input type="text" class="input-text" id="gradient_force_10" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-11"><input type="text" class="input-text" id="gradient_force_11" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-12"><input type="text" class="input-text" id="gradient_force_12" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-13"><input type="text" class="input-text" id="gradient_force_13" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-14"><input type="text" class="input-text" id="gradient_force_14" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-15"><input type="text" class="input-text" id="gradient_force_15" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-16"><input type="text" class="input-text" id="gradient_force_16" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-17"><input type="text" class="input-text" id="gradient_force_17" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-18"><input type="text" class="input-text" id="gradient_force_18" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-19"><input type="text" class="input-text" id="gradient_force_19" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-20"><input type="text" class="input-text" id="gradient_force_20" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-21"><input type="text" class="input-text" id="gradient_force_21" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-22"><input type="text" class="input-text" id="gradient_force_22" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-23"><input type="text" class="input-text" id="gradient_force_23" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-24"><input type="text" class="input-text" id="gradient_force_24" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-25"><input type="text" class="input-text" id="gradient_force_25" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-26"><input type="text" class="input-text" id="gradient_force_26" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-27"><input type="text" class="input-text" id="gradient_force_27" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-28"><input type="text" class="input-text" id="gradient_force_28" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-29"><input type="text" class="input-text" id="gradient_force_29" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-30"><input type="text" class="input-text" id="gradient_force_30" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-31"><input type="text" class="input-text" id="gradient_force_31" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-32"><input type="text" class="input-text" id="gradient_force_32" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-33"><input type="text" class="input-text" id="gradient_force_33" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-34"><input type="text" class="input-text" id="gradient_force_34" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-35"><input type="text" class="input-text" id="gradient_force_35" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-36"><input type="text" class="input-text" id="gradient_force_36" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-37"><input type="text" class="input-text" id="gradient_force_37" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-38"><input type="text" class="input-text" id="gradient_force_38" oninput="validateNumberInput(event)"/></div>
    <div class="gradient-force-39"><input type="text" class="input-text" id="gradient_force_39" oninput="validateNumberInput(event)"/></div>
    <div class="fastcooling">Fastcooling</div>
    <div class="gas-nTwo">Gas N2</div>
    <div class="gas-ar">Gas Ar</div>
    <div class="spare">Spare</div>
    <div class="hydraulic-unlt-off">Hydraulic Unlt OFF</div>
    <div class="press-capacity-control">Press capacity control</div>
    <div class="press-position-control-abs">Press position control (abs.)</div>
    <div class="press-distance-control-rel">Press distance control (rel.)</div>

    <!--------------------------------------------check box--------------------------------------------->

    <div class="fastcooling-0"><input type="checkbox" id="fastcooling_0" class="input-checkbox" name="DONGHWA.PLC.RECIPE.SEGMENT_0.FASTCOOLING_0"></div>
    <div class="fastcooling-1"><input type="checkbox" id="fastcooling_1" class="input-checkbox"></div>
    <div class="fastcooling-2"><input type="checkbox" id="fastcooling_2" class="input-checkbox"></div>
    <div class="fastcooling-3"><input type="checkbox" id="fastcooling_3" class="input-checkbox"></div>
    <div class="fastcooling-4"><input type="checkbox" id="fastcooling_4" class="input-checkbox"></div>
    <div class="fastcooling-5"><input type="checkbox" id="fastcooling_5" class="input-checkbox"></div>
    <div class="fastcooling-6"><input type="checkbox" id="fastcooling_6" class="input-checkbox"></div>
    <div class="fastcooling-7"><input type="checkbox" id="fastcooling_7" class="input-checkbox"></div>
    <div class="fastcooling-8"><input type="checkbox" id="fastcooling_8" class="input-checkbox"></div>
    <div class="fastcooling-9"><input type="checkbox" id="fastcooling_9" class="input-checkbox"></div>
    <div class="fastcooling-10"><input type="checkbox" id="fastcooling_10" class="input-checkbox"></div>
    <div class="fastcooling-11"><input type="checkbox" id="fastcooling_11" class="input-checkbox"></div>
    <div class="fastcooling-12"><input type="checkbox" id="fastcooling_12" class="input-checkbox"></div>
    <div class="fastcooling-13"><input type="checkbox" id="fastcooling_13" class="input-checkbox"></div>
    <div class="fastcooling-14"><input type="checkbox" id="fastcooling_14" class="input-checkbox"></div>
    <div class="fastcooling-15"><input type="checkbox" id="fastcooling_15" class="input-checkbox"></div>
    <div class="fastcooling-16"><input type="checkbox" id="fastcooling_16" class="input-checkbox"></div>
    <div class="fastcooling-17"><input type="checkbox" id="fastcooling_17" class="input-checkbox"></div>
    <div class="fastcooling-18"><input type="checkbox" id="fastcooling_18" class="input-checkbox"></div>
    <div class="fastcooling-19"><input type="checkbox" id="fastcooling_19" class="input-checkbox"></div>
    <div class="fastcooling-20"><input type="checkbox" id="fastcooling_20" class="input-checkbox"></div>
    <div class="fastcooling-21"><input type="checkbox" id="fastcooling_21" class="input-checkbox"></div>
    <div class="fastcooling-22"><input type="checkbox" id="fastcooling_22" class="input-checkbox"></div>
    <div class="fastcooling-23"><input type="checkbox" id="fastcooling_23" class="input-checkbox"></div>
    <div class="fastcooling-24"><input type="checkbox" id="fastcooling_24" class="input-checkbox"></div>
    <div class="fastcooling-25"><input type="checkbox" id="fastcooling_25" class="input-checkbox"></div>
    <div class="fastcooling-26"><input type="checkbox" id="fastcooling_26" class="input-checkbox"></div>
    <div class="fastcooling-27"><input type="checkbox" id="fastcooling_27" class="input-checkbox"></div>
    <div class="fastcooling-28"><input type="checkbox" id="fastcooling_28" class="input-checkbox"></div>
    <div class="fastcooling-29"><input type="checkbox" id="fastcooling_29" class="input-checkbox"></div>
    <div class="fastcooling-30"><input type="checkbox" id="fastcooling_30" class="input-checkbox"></div>
    <div class="fastcooling-31"><input type="checkbox" id="fastcooling_31" class="input-checkbox"></div>
    <div class="fastcooling-32"><input type="checkbox" id="fastcooling_32" class="input-checkbox"></div>
    <div class="fastcooling-33"><input type="checkbox" id="fastcooling_33" class="input-checkbox"></div>
    <div class="fastcooling-34"><input type="checkbox" id="fastcooling_34" class="input-checkbox"></div>
    <div class="fastcooling-35"><input type="checkbox" id="fastcooling_35" class="input-checkbox"></div>
    <div class="fastcooling-36"><input type="checkbox" id="fastcooling_36" class="input-checkbox"></div>
    <div class="fastcooling-37"><input type="checkbox" id="fastcooling_37" class="input-checkbox"></div>
    <div class="fastcooling-38"><input type="checkbox" id="fastcooling_38" class="input-checkbox"></div>
    <div class="fastcooling-39"><input type="checkbox" id="fastcooling_39" class="input-checkbox"></div>

    <div class="gas-n-0"><input type="checkbox" id="gas_n_0" class="input-checkbox"></div>
    <div class="gas-n-1"><input type="checkbox" id="gas_n_1" class="input-checkbox"></div>
    <div class="gas-n-2"><input type="checkbox" id="gas_n_2" class="input-checkbox"></div>
    <div class="gas-n-3"><input type="checkbox" id="gas_n_3" class="input-checkbox"></div>
    <div class="gas-n-4"><input type="checkbox" id="gas_n_4" class="input-checkbox"></div>
    <div class="gas-n-5"><input type="checkbox" id="gas_n_5" class="input-checkbox"></div>
    <div class="gas-n-6"><input type="checkbox" id="gas_n_6" class="input-checkbox"></div>
    <div class="gas-n-7"><input type="checkbox" id="gas_n_7" class="input-checkbox"></div>
    <div class="gas-n-8"><input type="checkbox" id="gas_n_8" class="input-checkbox"></div>
    <div class="gas-n-9"><input type="checkbox" id="gas_n_9" class="input-checkbox"></div>
    <div class="gas-n-10"><input type="checkbox" id="gas_n_10" class="input-checkbox"></div>
    <div class="gas-n-11"><input type="checkbox" id="gas_n_11" class="input-checkbox"></div>
    <div class="gas-n-12"><input type="checkbox" id="gas_n_12" class="input-checkbox"></div>
    <div class="gas-n-13"><input type="checkbox" id="gas_n_13" class="input-checkbox"></div>
    <div class="gas-n-14"><input type="checkbox" id="gas_n_14" class="input-checkbox"></div>
    <div class="gas-n-15"><input type="checkbox" id="gas_n_15" class="input-checkbox"></div>
    <div class="gas-n-16"><input type="checkbox" id="gas_n_16" class="input-checkbox"></div>
    <div class="gas-n-17"><input type="checkbox" id="gas_n_17" class="input-checkbox"></div>
    <div class="gas-n-18"><input type="checkbox" id="gas_n_18" class="input-checkbox"></div>
    <div class="gas-n-19"><input type="checkbox" id="gas_n_19" class="input-checkbox"></div>
    <div class="gas-n-20"><input type="checkbox" id="gas_n_20" class="input-checkbox"></div>
    <div class="gas-n-21"><input type="checkbox" id="gas_n_21" class="input-checkbox"></div>
    <div class="gas-n-22"><input type="checkbox" id="gas_n_22" class="input-checkbox"></div>
    <div class="gas-n-23"><input type="checkbox" id="gas_n_23" class="input-checkbox"></div>
    <div class="gas-n-24"><input type="checkbox" id="gas_n_24" class="input-checkbox"></div>
    <div class="gas-n-25"><input type="checkbox" id="gas_n_25" class="input-checkbox"></div>
    <div class="gas-n-26"><input type="checkbox" id="gas_n_26" class="input-checkbox"></div>
    <div class="gas-n-27"><input type="checkbox" id="gas_n_27" class="input-checkbox"></div>
    <div class="gas-n-28"><input type="checkbox" id="gas_n_28" class="input-checkbox"></div>
    <div class="gas-n-29"><input type="checkbox" id="gas_n_29" class="input-checkbox"></div>
    <div class="gas-n-30"><input type="checkbox" id="gas_n_30" class="input-checkbox"></div>
    <div class="gas-n-31"><input type="checkbox" id="gas_n_31" class="input-checkbox"></div>
    <div class="gas-n-32"><input type="checkbox" id="gas_n_32" class="input-checkbox"></div>
    <div class="gas-n-33"><input type="checkbox" id="gas_n_33" class="input-checkbox"></div>
    <div class="gas-n-34"><input type="checkbox" id="gas_n_34" class="input-checkbox"></div>
    <div class="gas-n-35"><input type="checkbox" id="gas_n_35" class="input-checkbox"></div>
    <div class="gas-n-36"><input type="checkbox" id="gas_n_36" class="input-checkbox"></div>
    <div class="gas-n-37"><input type="checkbox" id="gas_n_37" class="input-checkbox"></div>
    <div class="gas-n-38"><input type="checkbox" id="gas_n_38" class="input-checkbox"></div>
    <div class="gas-n-39"><input type="checkbox" id="gas_n_39" class="input-checkbox"></div>

    <div class="gas-a-0"><input type="checkbox" id="gas_a_0" class="input-checkbox"></div>
    <div class="gas-a-1"><input type="checkbox" id="gas_a_1" class="input-checkbox"></div>
    <div class="gas-a-2"><input type="checkbox" id="gas_a_2" class="input-checkbox"></div>
    <div class="gas-a-3"><input type="checkbox" id="gas_a_3" class="input-checkbox"></div>
    <div class="gas-a-4"><input type="checkbox" id="gas_a_4" class="input-checkbox"></div>
    <div class="gas-a-5"><input type="checkbox" id="gas_a_5" class="input-checkbox"></div>
    <div class="gas-a-6"><input type="checkbox" id="gas_a_6" class="input-checkbox"></div>
    <div class="gas-a-7"><input type="checkbox" id="gas_a_7" class="input-checkbox"></div>
    <div class="gas-a-8"><input type="checkbox" id="gas_a_8" class="input-checkbox"></div>
    <div class="gas-a-9"><input type="checkbox" id="gas_a_9" class="input-checkbox"></div>
    <div class="gas-a-10"><input type="checkbox" id="gas_a_10" class="input-checkbox"></div>
    <div class="gas-a-11"><input type="checkbox" id="gas_a_11" class="input-checkbox"></div>
    <div class="gas-a-12"><input type="checkbox" id="gas_a_12" class="input-checkbox"></div>
    <div class="gas-a-13"><input type="checkbox" id="gas_a_13" class="input-checkbox"></div>
    <div class="gas-a-14"><input type="checkbox" id="gas_a_14" class="input-checkbox"></div>
    <div class="gas-a-15"><input type="checkbox" id="gas_a_15" class="input-checkbox"></div>
    <div class="gas-a-16"><input type="checkbox" id="gas_a_16" class="input-checkbox"></div>
    <div class="gas-a-17"><input type="checkbox" id="gas_a_17" class="input-checkbox"></div>
    <div class="gas-a-18"><input type="checkbox" id="gas_a_18" class="input-checkbox"></div>
    <div class="gas-a-19"><input type="checkbox" id="gas_a_19" class="input-checkbox"></div>
    <div class="gas-a-20"><input type="checkbox" id="gas_a_20" class="input-checkbox"></div>
    <div class="gas-a-21"><input type="checkbox" id="gas_a_21" class="input-checkbox"></div>
    <div class="gas-a-22"><input type="checkbox" id="gas_a_22" class="input-checkbox"></div>
    <div class="gas-a-23"><input type="checkbox" id="gas_a_23" class="input-checkbox"></div>
    <div class="gas-a-24"><input type="checkbox" id="gas_a_24" class="input-checkbox"></div>
    <div class="gas-a-25"><input type="checkbox" id="gas_a_25" class="input-checkbox"></div>
    <div class="gas-a-26"><input type="checkbox" id="gas_a_26" class="input-checkbox"></div>
    <div class="gas-a-27"><input type="checkbox" id="gas_a_27" class="input-checkbox"></div>
    <div class="gas-a-28"><input type="checkbox" id="gas_a_28" class="input-checkbox"></div>
    <div class="gas-a-29"><input type="checkbox" id="gas_a_29" class="input-checkbox"></div>
    <div class="gas-a-30"><input type="checkbox" id="gas_a_30" class="input-checkbox"></div>
    <div class="gas-a-31"><input type="checkbox" id="gas_a_31" class="input-checkbox"></div>
    <div class="gas-a-32"><input type="checkbox" id="gas_a_32" class="input-checkbox"></div>
    <div class="gas-a-33"><input type="checkbox" id="gas_a_33" class="input-checkbox"></div>
    <div class="gas-a-34"><input type="checkbox" id="gas_a_34" class="input-checkbox"></div>
    <div class="gas-a-35"><input type="checkbox" id="gas_a_35" class="input-checkbox"></div>
    <div class="gas-a-36"><input type="checkbox" id="gas_a_36" class="input-checkbox"></div>
    <div class="gas-a-37"><input type="checkbox" id="gas_a_37" class="input-checkbox"></div>
    <div class="gas-a-38"><input type="checkbox" id="gas_a_38" class="input-checkbox"></div>
    <div class="gas-a-39"><input type="checkbox" id="gas_a_39" class="input-checkbox"></div>

    <div class="spare-0"><input type="checkbox" id="spare_0" class="input-checkbox"></div>
    <div class="spare-1"><input type="checkbox" id="spare_1" class="input-checkbox"></div>
    <div class="spare-2"><input type="checkbox" id="spare_2" class="input-checkbox"></div>
    <div class="spare-3"><input type="checkbox" id="spare_3" class="input-checkbox"></div>
    <div class="spare-4"><input type="checkbox" id="spare_4" class="input-checkbox"></div>
    <div class="spare-5"><input type="checkbox" id="spare_5" class="input-checkbox"></div>
    <div class="spare-6"><input type="checkbox" id="spare_6" class="input-checkbox"></div>
    <div class="spare-7"><input type="checkbox" id="spare_7" class="input-checkbox"></div>
    <div class="spare-8"><input type="checkbox" id="spare_8" class="input-checkbox"></div>
    <div class="spare-9"><input type="checkbox" id="spare_9" class="input-checkbox"></div>
    <div class="spare-10"><input type="checkbox" id="spare_10" class="input-checkbox"></div>
    <div class="spare-11"><input type="checkbox" id="spare_11" class="input-checkbox"></div>
    <div class="spare-12"><input type="checkbox" id="spare_12" class="input-checkbox"></div>
    <div class="spare-13"><input type="checkbox" id="spare_13" class="input-checkbox"></div>
    <div class="spare-14"><input type="checkbox" id="spare_14" class="input-checkbox"></div>
    <div class="spare-15"><input type="checkbox" id="spare_15" class="input-checkbox"></div>
    <div class="spare-16"><input type="checkbox" id="spare_16" class="input-checkbox"></div>
    <div class="spare-17"><input type="checkbox" id="spare_17" class="input-checkbox"></div>
    <div class="spare-18"><input type="checkbox" id="spare_18" class="input-checkbox"></div>
    <div class="spare-19"><input type="checkbox" id="spare_19" class="input-checkbox"></div>
    <div class="spare-20"><input type="checkbox" id="spare_20" class="input-checkbox"></div>
    <div class="spare-21"><input type="checkbox" id="spare_21" class="input-checkbox"></div>
    <div class="spare-22"><input type="checkbox" id="spare_22" class="input-checkbox"></div>
    <div class="spare-23"><input type="checkbox" id="spare_23" class="input-checkbox"></div>
    <div class="spare-24"><input type="checkbox" id="spare_24" class="input-checkbox"></div>
    <div class="spare-25"><input type="checkbox" id="spare_25" class="input-checkbox"></div>
    <div class="spare-26"><input type="checkbox" id="spare_26" class="input-checkbox"></div>
    <div class="spare-27"><input type="checkbox" id="spare_27" class="input-checkbox"></div>
    <div class="spare-28"><input type="checkbox" id="spare_28" class="input-checkbox"></div>
    <div class="spare-29"><input type="checkbox" id="spare_29" class="input-checkbox"></div>
    <div class="spare-30"><input type="checkbox" id="spare_30" class="input-checkbox"></div>
    <div class="spare-31"><input type="checkbox" id="spare_31" class="input-checkbox"></div>
    <div class="spare-32"><input type="checkbox" id="spare_32" class="input-checkbox"></div>
    <div class="spare-33"><input type="checkbox" id="spare_33" class="input-checkbox"></div>
    <div class="spare-34"><input type="checkbox" id="spare_34" class="input-checkbox"></div>
    <div class="spare-35"><input type="checkbox" id="spare_35" class="input-checkbox"></div>
    <div class="spare-36"><input type="checkbox" id="spare_36" class="input-checkbox"></div>
    <div class="spare-37"><input type="checkbox" id="spare_37" class="input-checkbox"></div>
    <div class="spare-38"><input type="checkbox" id="spare_38" class="input-checkbox"></div>
    <div class="spare-39"><input type="checkbox" id="spare_39" class="input-checkbox"></div>

    <div class="hydrulic-off-0"><input type="checkbox" id="hydrulic_off_0" class="input-checkbox"></div>
    <div class="hydrulic-off-1"><input type="checkbox" id="hydrulic_off_1" class="input-checkbox"></div>
    <div class="hydrulic-off-2"><input type="checkbox" id="hydrulic_off_2" class="input-checkbox"></div>
    <div class="hydrulic-off-3"><input type="checkbox" id="hydrulic_off_3" class="input-checkbox"></div>
    <div class="hydrulic-off-4"><input type="checkbox" id="hydrulic_off_4" class="input-checkbox"></div>
    <div class="hydrulic-off-5"><input type="checkbox" id="hydrulic_off_5" class="input-checkbox"></div>
    <div class="hydrulic-off-6"><input type="checkbox" id="hydrulic_off_6" class="input-checkbox"></div>
    <div class="hydrulic-off-7"><input type="checkbox" id="hydrulic_off_7" class="input-checkbox"></div>
    <div class="hydrulic-off-8"><input type="checkbox" id="hydrulic_off_8" class="input-checkbox"></div>
    <div class="hydrulic-off-9"><input type="checkbox" id="hydrulic_off_9" class="input-checkbox"></div>
    <div class="hydrulic-off-10"><input type="checkbox" id="hydrulic_off_10" class="input-checkbox"></div>
    <div class="hydrulic-off-11"><input type="checkbox" id="hydrulic_off_11" class="input-checkbox"></div>
    <div class="hydrulic-off-12"><input type="checkbox" id="hydrulic_off_12" class="input-checkbox"></div>
    <div class="hydrulic-off-13"><input type="checkbox" id="hydrulic_off_13" class="input-checkbox"></div>
    <div class="hydrulic-off-14"><input type="checkbox" id="hydrulic_off_14" class="input-checkbox"></div>
    <div class="hydrulic-off-15"><input type="checkbox" id="hydrulic_off_15" class="input-checkbox"></div>
    <div class="hydrulic-off-16"><input type="checkbox" id="hydrulic_off_16" class="input-checkbox"></div>
    <div class="hydrulic-off-17"><input type="checkbox" id="hydrulic_off_17" class="input-checkbox"></div>
    <div class="hydrulic-off-18"><input type="checkbox" id="hydrulic_off_18" class="input-checkbox"></div>
    <div class="hydrulic-off-19"><input type="checkbox" id="hydrulic_off_19" class="input-checkbox"></div>
    <div class="hydrulic-off-20"><input type="checkbox" id="hydrulic_off_20" class="input-checkbox"></div>
    <div class="hydrulic-off-21"><input type="checkbox" id="hydrulic_off_21" class="input-checkbox"></div>
    <div class="hydrulic-off-22"><input type="checkbox" id="hydrulic_off_22" class="input-checkbox"></div>
    <div class="hydrulic-off-23"><input type="checkbox" id="hydrulic_off_23" class="input-checkbox"></div>
    <div class="hydrulic-off-24"><input type="checkbox" id="hydrulic_off_24" class="input-checkbox"></div>
    <div class="hydrulic-off-25"><input type="checkbox" id="hydrulic_off_25" class="input-checkbox"></div>
    <div class="hydrulic-off-26"><input type="checkbox" id="hydrulic_off_26" class="input-checkbox"></div>
    <div class="hydrulic-off-27"><input type="checkbox" id="hydrulic_off_27" class="input-checkbox"></div>
    <div class="hydrulic-off-28"><input type="checkbox" id="hydrulic_off_28" class="input-checkbox"></div>
    <div class="hydrulic-off-29"><input type="checkbox" id="hydrulic_off_29" class="input-checkbox"></div>
    <div class="hydrulic-off-30"><input type="checkbox" id="hydrulic_off_30" class="input-checkbox"></div>
    <div class="hydrulic-off-31"><input type="checkbox" id="hydrulic_off_31" class="input-checkbox"></div>
    <div class="hydrulic-off-32"><input type="checkbox" id="hydrulic_off_32" class="input-checkbox"></div>
    <div class="hydrulic-off-33"><input type="checkbox" id="hydrulic_off_33" class="input-checkbox"></div>
    <div class="hydrulic-off-34"><input type="checkbox" id="hydrulic_off_34" class="input-checkbox"></div>
    <div class="hydrulic-off-35"><input type="checkbox" id="hydrulic_off_35" class="input-checkbox"></div>
    <div class="hydrulic-off-36"><input type="checkbox" id="hydrulic_off_36" class="input-checkbox"></div>
    <div class="hydrulic-off-37"><input type="checkbox" id="hydrulic_off_37" class="input-checkbox"></div>
    <div class="hydrulic-off-38"><input type="checkbox" id="hydrulic_off_38" class="input-checkbox"></div>
    <div class="hydrulic-off-39"><input type="checkbox" id="hydrulic_off_39" class="input-checkbox"></div>

    <div class="press-capacity-0"><input type="checkbox" id="press_capacity_0" class="input-checkbox"></div>
    <div class="press-capacity-1"><input type="checkbox" id="press_capacity_1" class="input-checkbox"></div>
    <div class="press-capacity-2"><input type="checkbox" id="press_capacity_2" class="input-checkbox"></div>
    <div class="press-capacity-3"><input type="checkbox" id="press_capacity_3" class="input-checkbox"></div>
    <div class="press-capacity-4"><input type="checkbox" id="press_capacity_4" class="input-checkbox"></div>
    <div class="press-capacity-5"><input type="checkbox" id="press_capacity_5" class="input-checkbox"></div>
    <div class="press-capacity-6"><input type="checkbox" id="press_capacity_6" class="input-checkbox"></div>
    <div class="press-capacity-7"><input type="checkbox" id="press_capacity_7" class="input-checkbox"></div>
    <div class="press-capacity-8"><input type="checkbox" id="press_capacity_8" class="input-checkbox"></div>
    <div class="press-capacity-9"><input type="checkbox" id="press_capacity_9" class="input-checkbox"></div>
    <div class="press-capacity-10"><input type="checkbox" id="press_capacity_10" class="input-checkbox"></div>
    <div class="press-capacity-11"><input type="checkbox" id="press_capacity_11" class="input-checkbox"></div>
    <div class="press-capacity-12"><input type="checkbox" id="press_capacity_12" class="input-checkbox"></div>
    <div class="press-capacity-13"><input type="checkbox" id="press_capacity_13" class="input-checkbox"></div>
    <div class="press-capacity-14"><input type="checkbox" id="press_capacity_14" class="input-checkbox"></div>
    <div class="press-capacity-15"><input type="checkbox" id="press_capacity_15" class="input-checkbox"></div>
    <div class="press-capacity-16"><input type="checkbox" id="press_capacity_16" class="input-checkbox"></div>
    <div class="press-capacity-17"><input type="checkbox" id="press_capacity_17" class="input-checkbox"></div>
    <div class="press-capacity-18"><input type="checkbox" id="press_capacity_18" class="input-checkbox"></div>
    <div class="press-capacity-19"><input type="checkbox" id="press_capacity_19" class="input-checkbox"></div>
    <div class="press-capacity-20"><input type="checkbox" id="press_capacity_20" class="input-checkbox"></div>
    <div class="press-capacity-21"><input type="checkbox" id="press_capacity_21" class="input-checkbox"></div>
    <div class="press-capacity-22"><input type="checkbox" id="press_capacity_22" class="input-checkbox"></div>
    <div class="press-capacity-23"><input type="checkbox" id="press_capacity_23" class="input-checkbox"></div>
    <div class="press-capacity-24"><input type="checkbox" id="press_capacity_24" class="input-checkbox"></div>
    <div class="press-capacity-25"><input type="checkbox" id="press_capacity_25" class="input-checkbox"></div>
    <div class="press-capacity-26"><input type="checkbox" id="press_capacity_26" class="input-checkbox"></div>
    <div class="press-capacity-27"><input type="checkbox" id="press_capacity_27" class="input-checkbox"></div>
    <div class="press-capacity-28"><input type="checkbox" id="press_capacity_28" class="input-checkbox"></div>
    <div class="press-capacity-29"><input type="checkbox" id="press_capacity_29" class="input-checkbox"></div>
    <div class="press-capacity-30"><input type="checkbox" id="press_capacity_30" class="input-checkbox"></div>
    <div class="press-capacity-31"><input type="checkbox" id="press_capacity_31" class="input-checkbox"></div>
    <div class="press-capacity-32"><input type="checkbox" id="press_capacity_32" class="input-checkbox"></div>
    <div class="press-capacity-33"><input type="checkbox" id="press_capacity_33" class="input-checkbox"></div>
    <div class="press-capacity-34"><input type="checkbox" id="press_capacity_34" class="input-checkbox"></div>
    <div class="press-capacity-35"><input type="checkbox" id="press_capacity_35" class="input-checkbox"></div>
    <div class="press-capacity-36"><input type="checkbox" id="press_capacity_36" class="input-checkbox"></div>
    <div class="press-capacity-37"><input type="checkbox" id="press_capacity_37" class="input-checkbox"></div>
    <div class="press-capacity-38"><input type="checkbox" id="press_capacity_38" class="input-checkbox"></div>
    <div class="press-capacity-39"><input type="checkbox" id="press_capacity_39" class="input-checkbox"></div>

    <div class="press-position-0"><input type="checkbox" id="press_position_0" class="input-checkbox"></div>
    <div class="press-position-1"><input type="checkbox" id="press_position_1" class="input-checkbox"></div>
    <div class="press-position-2"><input type="checkbox" id="press_position_2" class="input-checkbox"></div>
    <div class="press-position-3"><input type="checkbox" id="press_position_3" class="input-checkbox"></div>
    <div class="press-position-4"><input type="checkbox" id="press_position_4" class="input-checkbox"></div>
    <div class="press-position-5"><input type="checkbox" id="press_position_5" class="input-checkbox"></div>
    <div class="press-position-6"><input type="checkbox" id="press_position_6" class="input-checkbox"></div>
    <div class="press-position-7"><input type="checkbox" id="press_position_7" class="input-checkbox"></div>
    <div class="press-position-8"><input type="checkbox" id="press_position_8" class="input-checkbox"></div>
    <div class="press-position-9"><input type="checkbox" id="press_position_9" class="input-checkbox"></div>
    <div class="press-position-10"><input type="checkbox" id="press_position_10" class="input-checkbox"></div>
    <div class="press-position-11"><input type="checkbox" id="press_position_11" class="input-checkbox"></div>
    <div class="press-position-12"><input type="checkbox" id="press_position_12" class="input-checkbox"></div>
    <div class="press-position-13"><input type="checkbox" id="press_position_13" class="input-checkbox"></div>
    <div class="press-position-14"><input type="checkbox" id="press_position_14" class="input-checkbox"></div>
    <div class="press-position-15"><input type="checkbox" id="press_position_15" class="input-checkbox"></div>
    <div class="press-position-16"><input type="checkbox" id="press_position_16" class="input-checkbox"></div>
    <div class="press-position-17"><input type="checkbox" id="press_position_17" class="input-checkbox"></div>
    <div class="press-position-18"><input type="checkbox" id="press_position_18" class="input-checkbox"></div>
    <div class="press-position-19"><input type="checkbox" id="press_position_19" class="input-checkbox"></div>
    <div class="press-position-20"><input type="checkbox" id="press_position_20" class="input-checkbox"></div>
    <div class="press-position-21"><input type="checkbox" id="press_position_21" class="input-checkbox"></div>
    <div class="press-position-22"><input type="checkbox" id="press_position_22" class="input-checkbox"></div>
    <div class="press-position-23"><input type="checkbox" id="press_position_23" class="input-checkbox"></div>
    <div class="press-position-24"><input type="checkbox" id="press_position_24" class="input-checkbox"></div>
    <div class="press-position-25"><input type="checkbox" id="press_position_25" class="input-checkbox"></div>
    <div class="press-position-26"><input type="checkbox" id="press_position_26" class="input-checkbox"></div>
    <div class="press-position-27"><input type="checkbox" id="press_position_27" class="input-checkbox"></div>
    <div class="press-position-28"><input type="checkbox" id="press_position_28" class="input-checkbox"></div>
    <div class="press-position-29"><input type="checkbox" id="press_position_29" class="input-checkbox"></div>
    <div class="press-position-30"><input type="checkbox" id="press_position_30" class="input-checkbox"></div>
    <div class="press-position-31"><input type="checkbox" id="press_position_31" class="input-checkbox"></div>
    <div class="press-position-32"><input type="checkbox" id="press_position_32" class="input-checkbox"></div>
    <div class="press-position-33"><input type="checkbox" id="press_position_33" class="input-checkbox"></div>
    <div class="press-position-34"><input type="checkbox" id="press_position_34" class="input-checkbox"></div>
    <div class="press-position-35"><input type="checkbox" id="press_position_35" class="input-checkbox"></div>
    <div class="press-position-36"><input type="checkbox" id="press_position_36" class="input-checkbox"></div>
    <div class="press-position-37"><input type="checkbox" id="press_position_37" class="input-checkbox"></div>
    <div class="press-position-38"><input type="checkbox" id="press_position_38" class="input-checkbox"></div>
    <div class="press-position-39"><input type="checkbox" id="press_position_39" class="input-checkbox"></div>

    <div class="press-distance-0"><input type="checkbox" id="press_distance_0" class="input-checkbox"></div>
    <div class="press-distance-1"><input type="checkbox" id="press_distance_1" class="input-checkbox"></div>
    <div class="press-distance-2"><input type="checkbox" id="press_distance_2" class="input-checkbox"></div>
    <div class="press-distance-3"><input type="checkbox" id="press_distance_3" class="input-checkbox"></div>
    <div class="press-distance-4"><input type="checkbox" id="press_distance_4" class="input-checkbox"></div>
    <div class="press-distance-5"><input type="checkbox" id="press_distance_5" class="input-checkbox"></div>
    <div class="press-distance-6"><input type="checkbox" id="press_distance_6" class="input-checkbox"></div>
    <div class="press-distance-7"><input type="checkbox" id="press_distance_7" class="input-checkbox"></div>
    <div class="press-distance-8"><input type="checkbox" id="press_distance_8" class="input-checkbox"></div>
    <div class="press-distance-9"><input type="checkbox" id="press_distance_9" class="input-checkbox"></div>
    <div class="press-distance-10"><input type="checkbox" id="press_distance_10" class="input-checkbox"></div>
    <div class="press-distance-11"><input type="checkbox" id="press_distance_11" class="input-checkbox"></div>
    <div class="press-distance-12"><input type="checkbox" id="press_distance_12" class="input-checkbox"></div>
    <div class="press-distance-13"><input type="checkbox" id="press_distance_13" class="input-checkbox"></div>
    <div class="press-distance-14"><input type="checkbox" id="press_distance_14" class="input-checkbox"></div>
    <div class="press-distance-15"><input type="checkbox" id="press_distance_15" class="input-checkbox"></div>
    <div class="press-distance-16"><input type="checkbox" id="press_distance_16" class="input-checkbox"></div>
    <div class="press-distance-17"><input type="checkbox" id="press_distance_17" class="input-checkbox"></div>
    <div class="press-distance-18"><input type="checkbox" id="press_distance_18" class="input-checkbox"></div>
    <div class="press-distance-19"><input type="checkbox" id="press_distance_19" class="input-checkbox"></div>
    <div class="press-distance-20"><input type="checkbox" id="press_distance_20" class="input-checkbox"></div>
    <div class="press-distance-21"><input type="checkbox" id="press_distance_21" class="input-checkbox"></div>
    <div class="press-distance-22"><input type="checkbox" id="press_distance_22" class="input-checkbox"></div>
    <div class="press-distance-23"><input type="checkbox" id="press_distance_23" class="input-checkbox"></div>
    <div class="press-distance-24"><input type="checkbox" id="press_distance_24" class="input-checkbox"></div>
    <div class="press-distance-25"><input type="checkbox" id="press_distance_25" class="input-checkbox"></div>
    <div class="press-distance-26"><input type="checkbox" id="press_distance_26" class="input-checkbox"></div>
    <div class="press-distance-27"><input type="checkbox" id="press_distance_27" class="input-checkbox"></div>
    <div class="press-distance-28"><input type="checkbox" id="press_distance_28" class="input-checkbox"></div>
    <div class="press-distance-29"><input type="checkbox" id="press_distance_29" class="input-checkbox"></div>
    <div class="press-distance-30"><input type="checkbox" id="press_distance_30" class="input-checkbox"></div>
    <div class="press-distance-31"><input type="checkbox" id="press_distance_31" class="input-checkbox"></div>
    <div class="press-distance-32"><input type="checkbox" id="press_distance_32" class="input-checkbox"></div>
    <div class="press-distance-33"><input type="checkbox" id="press_distance_33" class="input-checkbox"></div>
    <div class="press-distance-34"><input type="checkbox" id="press_distance_34" class="input-checkbox"></div>
    <div class="press-distance-35"><input type="checkbox" id="press_distance_35" class="input-checkbox"></div>
    <div class="press-distance-36"><input type="checkbox" id="press_distance_36" class="input-checkbox"></div>
    <div class="press-distance-37"><input type="checkbox" id="press_distance_37" class="input-checkbox"></div>
    <div class="press-distance-38"><input type="checkbox" id="press_distance_38" class="input-checkbox"></div>
    <div class="press-distance-39"><input type="checkbox" id="press_distance_39" class="input-checkbox"></div>
    <div class="frame-304">
      <div class="display-actual-row"><input type="checkbox" class="check-display-actual-row"></div>
      <div class="display-actual-row2">display actual row</div>
      <div class="edit">Edit</div>
      <div class="global-parameters"></div>
      <div class="global-parameters2">Global Parameters</div>
      <div class="save">Save</div>
      <button class="save-to-db">Save to Database</button>
      <div class="protocol">Protocol</div>
      <div class="graphical-process"></div>
      <div class="insert-segment"></div>
      <div class="save-to-csv"></div>
      <div class="delete-segment"></div>
      <button class="save-to-plc">Save to PLC</button>
      <div class="print"></div>
      <div class="back-to-recipe-overview">&lt;&lt; Back to recipe-overview</div>
      <div class="save-to-csv-file">Save to csv-file</div>
      <div class="print2">print</div>
      <div class="graphical-process2">Graphical Process</div>
      <div class="insert-segment2">Insert Segment</div>
      <div class="delete-segment2">Delete Segment</div>
      
    </div>
    <div class="_0-program-end">0 - Program end</div>
    <div class="_3-cooling-vacuum">3 - Cooling vacuum</div>
    <div class="_1-heating-vacuum">1 - Heating vacuum</div>
    <div class="_2-heating-gas-stationary">2 - Heating gas stationary</div>
    <div class="_4-cooling-gas-stationary">4 - Cooling gas stationary</div>
    <div class="process-step2">Process step</div>
  </div>
  
</body>



<script>
  function validateNumberInput(event) {
      const input = event.target;
      input.value = input.value.replace(/[^0-9]/g, '');
  }
</script>

<script>
        $(document).ready(function(){
            $("#readValuesBtn").click(function(){
                $.ajax({
                    url: "/donghwa/opc",
                    method: "GET",
                    success: function(data) {
                        $("#readValuesResult").html(JSON.stringify(data, null, 2));
                    },
                    error: function(error) {
                        $("#readValuesResult").html("Error: " + error.responseText);
                    }
                });
            });


            $("#readSingleValueBtn").click(function(){
                $.ajax({
                    url: "/",
                    method: "GET",
                    success: function(data) {
                        $("#readSingleValueResult").html(data);
                    },
                    error: function(error) {
                        $("#readSingleValueResult").html("Error: " + error.responseText);
                    }
                });
            });
        });


        $(document).ready(function() {
            // 버튼 클릭 이벤트 핸들러 설정
            $('.save-to-plc').click(function() {
                const data = [];
                $('.input-text').each(function() {
                    const inputField = $(this);
                    const value = inputField.val(); 
                    const nodeId = inputField.attr('name'); 
                    data.push({
                        nodeId: nodeId,
                        value: value
                    });
                });

                $('.input-checkbox:checked').each(function() {
                    const checkboxField = $(this);
                    const nodeId = checkboxField.attr('name');
                    const value = 1; 
                    data.push({
                        nodeId: nodeId,
                        value: value
                    });
                });

                sendAjax(data);
            });
        });

        function sendAjax(data) {
            $.ajax({
                url: "/donghwa/write",
                type: "POST",
                dataType: "json",
                contentType: "application/json; charset=utf-8",
                data: JSON.stringify(data),
                success: function(response) {
                    console.log('서버 응답:', response);
                },
                error: function(xhr, status, error) {
                    console.error('AJAX 에러:', status, error);
                }
            });
        }
    </script>


</html>