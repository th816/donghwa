<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>세창스틸</title>
<link rel="shortcut icon" href="resources/image/KPF.jpg"
   type="image/x-icon" />
<jsp:include page="pluginpage.jsp" />

<style>

.control-label {
    font-size: 20px; 
    margin-top: 5px;
    font-weight: bold;
    margin-left:30px;
    margin-right:10px;
    white-space: nowrap;
    width: 120px;
    text-overflow: ellipsis;
    }
    
    
 #pt-1 pb-1 bg-light{
  margin-left:30px;
    margin-top: 5px;
 }   
    
    
#memoModal {
   width: 600px;
   height: 400px;
   position: fixed;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   background-color: #fefefe;
   padding: 20px;
   border: 1px solid #888;
   box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
   transition: 0.3s;
}

#saveMemo {
   float: right;
   height: 50PX;
}

.modal-content {
   width: 100%;
   height: 80%;
}

.close {
   color: #aaa;
   float: right;
   font-size: 28px;
   font-weight: bold;
   position: absolute;
   top: 10px;
   right: 10px;
   cursor: pointer;
}

.close:hover, .close:focus {
   color: black;
   text-decoration: none;
}

.datepicker {
   border: none;
   border-bottom: 2px solid #9e9e9e;
   font-size: 1.3em;
   margin-bottom: 20px;
}

#hourInput, #minuteInput {
   border: none;
   border-bottom: 1px solid #9e9e9e;
   font-size: 1.2em;
   margin-bottom: 20px;
}

textarea {
   height: 215px;
   width: 100%;
   padding: 12px 20px;
   box-sizing: border-box;
   border: 2px solid #ccc;
   border-radius: 4px;
   background-color: #f8f8f8;
   font-size: 16px;
   resize: none;
}

#saveMemo {
   background-color: #4CAF50;
   color: white;
   padding: 15px 32px;
   text-align: center;
   text-decoration: none;
   display: inline-block;
   font-size: 16px;
   margin: 4px 2px;
   cursor: pointer;
   border: none;
   border-radius: 4px;
   
}

#deleteMemoButton {
    background-color: #f44336; 
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border: none;
    border-radius: 4px;
    float: right;
   height: 50PX;
   
}
img {
   -webkit-perspective: 1;
}

#container .highcharts-legend {
    font-size: 14px;
    color: #333;
}

.over {
   background-color: #FF00FF !important;
}

#sidebar {
   background-color: #123478;
}

.menuCloseBtn:hover {
   color: red;
}

.menuHeader {
   font-size: 12pt;
   font-weight: 700;
}

.menuBody {
   font-size: 10pt;
   font-weight: 700;
}


.button-1line {
   width: 130px;
    font-size: 16px; 
    background-color: #007bff; 
    color: #fff; 
    padding: 10px 20px;
    border: none; 
    border-radius: 4px; 
    cursor: pointer;
     height: 45px;
     margin-top: 0px;
     margin-left: 700px;
     text-align: center;
      font-weight: bold;
}
.button-3line {
width: 130px;
    font-size: 16px;
    background-color: #28a745;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    height: 45px;
    margin-left: 20px;
     font-weight: bold;
}

.form-check-input {
     margin-bottom: 20px;
      margin-left: 20px;
     
  
}
#search_gb {
    -webkit-transform: scale(2); /* 체크박스 크기 확대 */
}
</style>

</head>
<body>
   <!-- alert다이얼로그 한줄 -->
   <div style="display: none;" id="alert-form" title="확인창">
      <span id="alertSpan"></span>
   </div>


   <!-- alert다이얼로그 두줄 -->
   <div style="display: none;" id="alert2-form" title="확인창">
      <span id="alert2Span1" style="display: block;"></span> <span
         id="alert2Span2" style="display: block;"></span>
   </div>

   <!-- alert다이얼로그 두줄 활성화전용 -->
   <div style="display: none;" id="alert3-form" title="확인창">
      <span id="alert3Span1" style="display: block;"></span> <span
         id="alert3Span2" style="display: block;"></span>
   </div>

   <!-- 삭제다이얼로그 -->
   <div style="display: none;" id="delete-form" title="확인창">
      <span id="deleteSpan"></span>
   </div>


   <div class="wrapper d-flex align-items-stretch">
      <jsp:include page="include/sidebar.jsp" />

      <!-- class="pl-4 pl-md-5"-->

      <div id="content">
         <jsp:include page="include/header.jsp" />
         <div class="container-fluid">
            <div class="form-row">
               <div class="container-fluid ml-1 mt-2">
                  <div class="form-row mb-1">
                     <form id="searchForm" name="searchForm" action="i002_excel"
                        class="form-inline" autocomplete="off" method="post">
                     
                        <div class="d-flex">
                         
                           <div class="p-1 bg-light">
                              <label for="" class="control-label text-center"
                                 style="width: 5vw;">1라인 조회기간:</label>
                           </div>
                           <div class="pt-1 pb-1 bg-light">
                              <input id="sdate" name="sdate" type="text"
                                 class="form-control-sm datepicker text-center"
                                 style="width: 100px; height: 35px; font-size: 12pt; font-weight: 700;"
                                 readonly="readonly" /> <input id="stime" name="stime"
                                 type="text" class="form-control-sm timepicker text-center"
                                 style="width: 80px; height: 35px; font-size: 12pt; font-weight: 700;"
                                 readonly="readonly" /> ~ <input id="edate" name="edate"
                                 type="text" class="form-control-sm datepicker text-center"
                                 style="width: 100px; height: 35px; font-size: 12pt; font-weight: 700;"
                                 readonly="readonly" /> <input id="etime" name="etime"
                                 type="text" class="form-control-sm timepicker text-center"
                                 style="width: 80px; height: 35px; font-size: 12pt; font-weight: 700;"
                                 readonly="readonly" />
                           </div>

                           <div class="form-check ml-3">
                              <input class="form-check-input" type="checkbox" id="search_gb"
                                 name="search_gb" value="N"
                                 style="-webkit-transform: scale(2);" /> <label
                                 class="form-check-label" for="search_gb"
                                 style="cursor: pointer; font-weight: 700; font-size: 14pt; padding-left: 5px; margin-bottom: 20px">
                                 이력 검색 </label>
                           </div>

                           <button type="button" class="btn btn-outline-primary ml-2 mt-1"
                              id="trendSearchBtn" style="height: 35px; margin-bottom: 20px;"
                              onclick="trendSearch();" disabled="disabled" >
                              <i class="fa fa-search" aria-hidden="true" style="width: 30px; height: 40px; padding-left: 5px;"></i> 조회
                           </button>
                           <div>
                           <a href="s004.jsp"><button type="button" class="button-1line">1라인</button></a>
                           <a href="s004_line3.jsp"><button type="button" class="button-3line">3라인</button></a>
                           </div>
                        
                        </div>
                        
                        
                        
                     </form>
                     <form id="updateMemoForm" method="post">
                        <div id="memoModal" class="modal">
                           <div class="modal-content">
                              <span class="close" id="closeModal">&times;</span>
                              <div id="datetimePicker">
                                 <input type="text" id="datePicker" class="datepicker"
                                    placeholder="날짜">
                                 <div>
                                    <span id="hourInput"></span> <span id="minuteInput"></span> <span id="secondInput"></span>
                                 </div>
                                 <div>
                                 <!--    <span id="xInput">X</span><span id="yInput">Y</span> -->
                                 </div>
                                 <textarea id="memoText" placeholder="메모를 입력하세요"></textarea>
                                 <input type="hidden" id="MemoC" />
                                 
                                 <button type="button" id="saveMemo">저장</button>
                                 <button type="button" id="deleteMemoButton">삭제</button>
                              </div>
                           </div>
                        </div>
                        
                        <input type="hidden" id="bupumModalDatatimeDisplay" />
                        <input type="hidden" id="bupumModalDatatimeClick" />
                     
                     </form>

                     
                  </div>
               </div>
            </div>

            <div id="container" style="width: 1800px; height: 800px;"></div>
         </div>
      </div>

   </div>

   <a style="display: none;" id="downloadLink" href="#" download="#"></a>
   <div id="chartImg" style="display: none;"></div>


   <script>
   
   
   



   //전역변수
   var chartInterval;
   var timeInterval;
   
   var chart;
   var chartData;
   
   var dateInterval;
   
   var sessionInterval;
   
   var dateTimeJson;
   var tic1_pv, tic2_pv, tic1_sp1, tic1_sp2, tic1_sp3, tic2_sp1, tic2_sp2, tic2_sp3;
   
   //로드
   $(function() {
      getSessionData();
      
      sessionInterval = setInterval("getSessionData()", 10000);      
   
      $('.datepicker').datepicker({
          format: "yyyy-mm-dd",   //데이터 포맷 형식(yyyy : 년 mm : 월 dd : 일 )
//          startDate: '-10d',   //달력에서 선택 할 수 있는 가장 빠른 날짜. 이전으로는 선택 불가능 ( d : 일 m : 달 y : 년 w : 주)
//          endDate: '+10d',   //달력에서 선택 할 수 있는 가장 느린 날짜. 이후로 선택 불가 ( d : 일 m : 달 y : 년 w : 주)
          autoclose : true,   //사용자가 날짜를 클릭하면 자동 캘린더가 닫히는 옵션
          calendarWeeks : false, //캘린더 옆에 몇 주차인지 보여주는 옵션 기본값 false 보여주려면 true
          clearBtn : false, //날짜 선택한 값 초기화 해주는 버튼 보여주는 옵션 기본값 false 보여주려면 true
//          datesDisabled : ['2019-06-24','2019-06-26'],//선택 불가능한 일 설정 하는 배열 위에 있는 format 과 형식이 같아야함.
//          daysOfWeekDisabled : [0,6],   //선택 불가능한 요일 설정 0 : 일요일 ~ 6 : 토요일
//          daysOfWeekHighlighted : [3], //강조 되어야 하는 요일 설정
          disableTouchKeyboard : false,   //모바일에서 플러그인 작동 여부 기본값 false 가 작동 true가 작동 안함.
          immediateUpdates: false,   //사용자가 보는 화면으로 바로바로 날짜를 변경할지 여부 기본값 :false 
          multidate : false, //여러 날짜 선택할 수 있게 하는 옵션 기본값 :false 
          multidateSeparator :",", //여러 날짜를 선택했을 때 사이에 나타나는 글짜 2019-05-01,2019-06-01
          templates : {
              leftArrow: '<i class="fa fa-long-arrow-left"></i>',
              rightArrow: '<i class="fa fa-long-arrow-right"></i>'
          }, //다음달 이전달로 넘어가는 화살표 모양 커스텀 마이징 
          showWeekDays : true ,// 위에 요일 보여주는 옵션 기본값 : true
//          title: "테스트",   //캘린더 상단에 보여주는 타이틀
          todayHighlight : true ,   //오늘 날짜에 하이라이팅 기능 기본값 :false 
//          toggleActive : true,   //이미 선택된 날짜 선택하면 기본값 : false인경우 그대로 유지 true인 경우 날짜 삭제
          weekStart : 0 ,//달력 시작 요일 선택하는 것 기본값은 0인 일요일 
          language : "ko"//달력의 언어 선택, 그에 맞는 js로 교체해줘야한다.
//          ,container:"input"
         ,orientation:"bottom"
      }).on("changeDate",function(e){
         
      });//datepicker end

      //timepicker 초기화
       $(".timepicker").timepicker({
          step:30,
          timeFormat:"H:i"
       });         
      
       getTrendSearchTime();

       
       
       setTimeout(function(){
          getChart();
          
          timeInterval = setInterval("getTrendSearchTime()",10000);
       },500);
       
   });
   
   /*이벤트*/
   $("#search_gb").on("click", function(){
      if($("#search_gb").is(":checked") == true){
         //이력검색 활성화
         $("#sdate").removeAttr("readonly");
         $("#stime").removeAttr("readonly");
         $("#edate").removeAttr("readonly");
         $("#etime").removeAttr("readonly");
         
         
         $("#trendSearchBtn").removeAttr("disabled");
         
         clearInterval(timeInterval);
         clearInterval(chartInterval);
         
         
      }else{
         $("#sdate").attr("readonly", true);
         $("#stime").attr("readonly", true);
         $("#edate").attr("readonly", true);
         $("#etime").attr("readonly", true);

                  
         $("#trendSearchBtn").attr("disabled", true);
         
         getTrendSearchTime();
         timeInterval = setInterval("getTrendSearchTime()", 10000);
         
         setTimeout(function(){
            chartStart();
            chartInterval = setInterval("chartStart()", 10000);
         }, 300);
         
      }
   });

   $("#chartCaptureBtn").on("click", function(){

      $("#chartCapture")[0].click();
   });

   $("#chartExcelBtn").on("click", function(){
      var sdate = $("#sdate").val();
      var edate = $("#edate").val();
      var stime = $("#stime").val();
      var etime = $("#etime").val();
      console.log("sdate - " +sdate+", edate - :"+edate);
      
      $.ajax({
         url:"i004_excel.jsp",
         type:"post",
         dataType:"json",
         data:{
            "sdate":sdate,
            "edate":edate,
            "stime":stime,
            "etime":etime
         },
         success:function(result){
            console.log(result);
            //'/resources/downloads/'+
            $('#downloadLink').prop('href', "/web_trend/"+result.fileName); 
            console.log(result.fileName);
            $('#downloadLink').prop('download', result.fileName);
      
            $('#downloadLink')[0].click();
            setTimeout(function(){
               $.ajax({
                  url:"d004_excelFile.jsp",
                  type:"post",
                  dataType:"json",
                  data:{"fileName":result.fileName},
                  success:function(rst){
                     console.log(rst);
                  }
               });
            },300);
         }
      });
      
   });
      
   
   $('#saveMemo').on("click",function(){
//       event.preventDefault(); 

       var tdatetime2 = $("#bupumModalDatatimeClick").val();
       var memoC = $("#MemoC").val();
       var memoText = $("#memoText").val();
       
       $.ajax({
           type: 'POST',
           url: 'l004_memo.jsp',
           data: {
               tdatetime2: tdatetime2,
               memoC: memoC,
               memoText: memoText,
               "procGB" : "U"
           },
           success: function (response) {
               if (response.indexOf('success') != -1) {
                   // 메모가 성공적으로 업데이트된 경우

                   // 업데이트된 값을 화면에 반영했으므로 모달을 숨깁니다.
                   $('#memoModal').hide();

                   // 업데이트된 메모를 화면에 바로 보여줍니다.
             
                   // 차트 데이터를 새로 받아와 차트를 업데이트합니다.
                   getChartData();
               } else {
                   alert('메모 업데이트에 실패했습니다.');
               }
           },
       });
   });

   $('#deleteMemoButton').click(function () {
       var tdatetime2 = $("#bupumModalDatatimeClick").val();
       var memoC = $("#MemoC").val();
       var memoText = $("#memoText").val();
       
       
       $.ajax({
           type: 'POST',
           url: 'l004_memo.jsp',
           data: {
               tdatetime2: tdatetime2,
                  memoC: memoC,
                  memoText: memoText,
                  "procGB" : "D"
           },
           success: function (response) {
               if (response.indexOf('success') != -1) {
                   // 메모가 성공적으로 삭제된 경우

                   // 업데이트된 값을 화면에 반영했으므로 모달을 숨깁니다.
                   $('#memoModal').hide();

                   // 차트 데이터를 새로 받아와 차트를 업데이트합니다.
                   getChartData();
               } else {
                   alert('메모 삭제에 실패했습니다.');
               }
           },
       });
   });



   //함수
   function getSessionData(){
      var session_data = "${sessionScope.u_id}";
      
      if(session_data == null || session_data == ""){
         
         location.href = "index.jsp";
      }      
   }
   
   function chartExport(){
      var form = document.forms["searchForm"];
      
      form.action = "i002_export.jsp";
      form.submit();
   }
   
   function checkDate(i) {
      var result;
       if(i<=9){
          result = "0"+i;
      }else{
         result = i;
      }
         return result;
   }
   

   
   function trendSearch(){
      var sdt = new Date($("#sdate").val()+" "+$("#stime").val());
      var edt = new Date($("#edate").val()+" "+$("#etime").val());
      
      var diffTime = Math.ceil((edt.getTime()-sdt.getTime())/(1000));
      
      if(diffTime < 0){
         $("#alert-form").dialog("option","title","검색오류!");
         $("#alertSpan").text("종료시간이 시작시간보다 클 수 없습니다.");
         alertDialog.dialog("open");
         getTrendSearchTime();
         return;
         
      }else{
//         chartStart();
         getChartData();
      }
   }
   
   function chartStart(){
      getChart();
   }
   
   function unix_timestamp(t){
       var date = new Date(t*1000);
       var year = date.getFullYear();
       var month = "0" + (date.getMonth()+1);
       var day = "0" + date.getDate();
       var hour = "0" + date.getHours();
       var minute = "0" + date.getMinutes();
       var second = "0" + date.getSeconds();
       return year + "-" + month.substr(-2) + "-" + day.substr(-2) + "</br> " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2);
   }
   
   function unix_timestamp_tooltip(t){
       var date = new Date(t*1000);
       var year = date.getFullYear();
       var month = "0" + (date.getMonth()+1);
       var day = "0" + date.getDate();
       var hour = "0" + date.getHours();
       var minute = "0" + date.getMinutes();
       var second = "0" + date.getSeconds();
       return year + "-" + month.substr(-2) + "-" + day.substr(-2) + " " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2);
   }   
   
   function unix_timestamp_onClick(t){
       var date = new Date(t*1000);
       var year = date.getFullYear();
       var month = "0" + (date.getMonth()+1);
       var day = "0" + date.getDate();
       var hour = "0" + date.getHours();
       var minute = "0" + date.getMinutes();
       var second = "0" + date.getSeconds();
       return year + "-" + month.substr(-2) + "-" + day.substr(-2) + " " + hour.substr(-2) + ":" + minute.substr(-2) + ":" + second.substr(-2);
   }   


   
   
   function getChart(){
       
       const chart = Highcharts.chart('container', {
           chart: {
               type: "spline",
               panning: true,
               panKey: "shift",
               zoomType: "x",
               styleMode: true
           },
           time: {
               timezone: "Indonesian",
               useUTC: true
           },
           /*
           tooltip: {
            
              formatter: function() {
                   var pointIndex = this.point.index;
                   var ticMemo = tic_memo[pointIndex];
                   return ticMemo;
               },
           
           },*/
           title: {
               text: ' '
           },
           yAxis: [{
               crosshair: {
                   width: 3,
                   color: '#5D5D5D',
                   zIndex: 5
               },
               title: {
                   text: 'Temper(℃)'
               },
               labels: {
                   style: {
                       fontSize: "14pt"
                   }
               },
               min: 0,
               max: 1300
           }],
           xAxis: {
               crosshair: {
                   width: 3,
                   color: '#5D5D5D',
                   zIndex: 5
               },
               labels: {
                   formatter: function () {
                       return unix_timestamp(this.value);
//                  return this.value;
                   },
                   style: {
                       fontSize: "11pt"
                   }
               },
               tickmarkPlacement: 'on',
               startOnTick: false
           },
           legend: {
               layout: 'vertical',
               align: 'right',
               verticalAlign: 'middle'
           },
           plotOptions: {
               series: {
                   dataLabels: {
                       dataLabels: {
                           format: '{point.label}'
                       },
                       selected: true,
                       cursor: 'pointer',
                       marker: {
                           radius: 1
                       }
                   },
                   point: {
                       events: {
                          click: function () {
                             
                             
                              // 클릭된 데이터 포인트의 날짜와 값
                              var clickedDate = unix_timestamp_onClick(this.x);  // 함수 적용
                              var clickedValueY = this.y;
                              var clickedValueX = this.x;
                              
                              console.log(this.dataLabel);
                              if(typeof this.dataLabel != 'undefined'){
                                 $("#memoText").val(this.dataLabel.textStr);   
                              }else{
                                 $("#memoText").val("");
                              }
                              
                              $("#MemoC").val(this.series.name);
                                             
                              
                              // 모달을 열고
                              $("#memoModal").show();
                              $(document).keyup(function(e) {
                                  if (e.key === "Escape") { // ESC 키를 누르면
                                      $("#memoModal").hide(); // 모달 창을 닫습니다.
                                  }
                              });
                              $("#closeModal").click(function() {
                              $("#memoModal").hide();
                              });
                              // 날짜와 시간을 분리
                              var dateParts = clickedDate.split(" ")[0];
                              var timeParts = clickedDate.split(" ")[1].split(":");

                              // 날짜 선택기와 시간 텍스트에 클릭된 데이터 포인트의 날짜를 설정
                              $("#datePicker").val(dateParts); // YYYY-MM-DD 형식
                              $("#hourInput").text(timeParts[0] + '시');
                              $("#minuteInput").text(timeParts[1] + '분');
                          
                             

                              $("#bupumModalDatatimeClick").val(clickedDate);
                              $("#bupumModalDatatimeClick").val(clickedDate);
                              // 메모 입력 필드에 클릭된 데이터 포인트의 값을 설정
                             
                              $("#yInput").val(clickedValueY);
                              $("#xInput").val(clickedValueX);
                             
                              
                              
 //                             var clickedMemo = tic_memo[this.index];
 //                             console.log("클릭메모 : "+clickedMemo);
                              
                              
                              

                            /*   console.log(clickedDate);
                              console.log(this.ticMemo);
                              console.log(clickedValueY); 
                              console.log(clickedMemo);  */
                          }
                     

                       }
                   }
               }
           },
           
        series: [
        	tic1_pvJson, tic2_pvJson, /* tic3_pvJson, */ tic1_spJson, tic2_spJson, /* tic3_spJson, */
        	tic1_pvMv, tic2_pvMv, /* tic3_pvMv, */ tic1_spMv, tic2_spMv/* , tic3_spMv */
        ],
            
        responsive: {
            rules: [{
                condition: {
                    maxWidth: 700
                },
                chartOptions: {
                    legend: {
                        layout: 'horizontal',
                        align: 'center',
                        verticalAlign: 'bottom'
                    }
                }
            }]
        },
        /*
        tooltip: {
           split:true,
         formatter:function(){
            var tool;
            
            tool = 
            '<span style=color:'+this.points[0].color+'><b>TIC#1 PV :</b></span> <b>' + this.points[0].y + '</b></br>'+
               '<span style=color:'+this.points[1].color+'><b>TIC#2 PV :</b></span> <b>' + this.points[1].y + '</b></br>'+
               '<span style=color:'+this.points[2].color+'><b>TIC#1 SV1 :</b></span> <b>' + this.points[2].y + '</b></br>'+
               '<span style=color:'+this.points[3].color+'><b>TIC#1 SV2 :</b></span> <b>' + this.points[3].y + '</b></br>'+
               '<span style=color:'+this.points[4].color+'><b>TIC#1 SV3 :</b></span> <b>' + this.points[4].y + '</b></br>'+
               '<span style=color:'+this.points[5].color+'><b>TIC#2 SV1 :</b></span> <b>' + this.points[5].y + '</b></br>'+
               '<span style=color:'+this.points[6].color+'><b>TIC#2 SV2 :</span> <b>' + this.points[6].y + '</b></br>'+
               '<span style=color:'+this.points[7].color+'><b>TIC#2 SV3 :</span> <b>' + this.points[7].y + '</b></br>'+
                '날짜-시간 : <b>' + unix_timestamp_tooltip(this.x) + '</b>';
                
                return tool;
         }
        },    
        */
        exporting: {
            enabled: false
        },
        legend: {
            itemStyle: {
                fontSize: "11pt"
            },
        verticalAlign: 'top',
        align: 'right'
        }
        
    });
} 

   

   
   
   function getTrendSearchTime(){

//      console.log("실시간 년월일시분초");
       // 현재 날짜를 얻기
           var currentDate = new Date();

           // 현재 날짜에서 1일을 빼기
           currentDate.setDate(currentDate.getDate() - 1);

           // 날짜 포맷 변경 (yyyy-mm-dd)
           var initialStartDate = currentDate.toISOString().slice(0, 10);

           // 초기값 설정
           var initialStartTime = "00:00";

           // 현재 날짜를 얻기
           var currentEndDate = new Date();

           // edate 초기값 설정 (현재 날짜)
           var initialEndDate = currentEndDate.toISOString().slice(0, 10);

           // etime 초기값 설정 (현재 시간)
           var initialEndTime = ("0" + currentEndDate.getHours()).slice(-2) + ":" + ("0" + currentEndDate.getMinutes()).slice(-2);

      $.ajax({
         url:"l_dateSearch.jsp",
         type:"post",
         dataType:"json",
         success:function(result){
            $("#sdate").datepicker("update", initialStartDate);
           $("#stime").val(initialStartTime);
           $("#edate").datepicker("update", initialEndDate);
           $("#etime").val(initialEndTime);

            

            getChartData();
         }
      });

   }

   
/*    var tic_memoArr = []; //1101 */
   
    function getChartData(){
      
//      console.log("sdate : "+$("#sdate").val());
      
      $.ajax({
         url:"l004.jsp",
         type:"post",
         dataType:"json",
         data:{            
            "sdate":$("#sdate").val(),
            "edate":$("#edate").val(),
            "stime":$("#stime").val(),
            "etime":$("#etime").val()
         },
         success:function(result){
//            console.log(result.data);

            
           datetimeJson = result.data.datetime;
           tic1_pvJson = result.data.tic1_pv;

            tic1_pvJson = result.data.tic1_pv;
            tic2_pvJson = result.data.tic2_pv;
            tic3_pvJson = result.data.tic3_pv;
            tic1_spJson = result.data.tic1_sp;
            tic2_spJson = result.data.tic2_sp;
            tic3_spJson = result.data.tic3_sp;
            
            
            tic1_pvMv = result.data.tic1_pvMv;
            tic2_pvMv = result.data.tic2_pvMv;
            tic3_pvMv = result.data.tic3_pvMv;
            tic1_spMv = result.data.tic1_spMv;
            tic2_spMv = result.data.tic2_spMv;
            tic3_spMv = result.data.tic3_spMv;        
            
            
            var chart = $("#container").highcharts();
            
            if(typeof chart != 'undefined'){
            
               chart.series[0].update(tic1_pvJson,false);
               chart.series[1].update(tic2_pvJson,false);
               //chart.series[2].update(tic3_pvJson,false);
               chart.series[2].update(tic1_spJson,false);
               chart.series[3].update(tic2_spJson,false);
               //chart.series[5].update(tic3_spJson,false);
            chart.series[4].update(tic1_pvMv,false);
            chart.series[5].update(tic2_pvMv,false);            
            //chart.series[8].update(tic3_pvMv,false);
            chart.series[6].update(tic1_spMv,false);
            chart.series[7].update(tic2_spMv,false);
            //chart.series[11].update(tic3_spMv,false);              
            
            
               chart.redraw();
              
            }else{
               console.log("언디파인드");
               
            }
         }
      });
   }
   
 

   
   </script>
</body>
</html>