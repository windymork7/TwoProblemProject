<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문제 풀이 사이트</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style type="text/css">
   div
   {
      /* border: 1px solid; */   
   }
</style>
</head>
<body>
<div align="center">
   <header>
      <div style="background-color: #D0F5A9;">
         <a href="Problem.jsp"><b><font size="10">대 박 문 제 풀 기<img src="image/Penguin.jpg" style="width: 50px; height: 50px;"></font></b></a>
      </div>
   </header>
      
   <nav>
      <div>
         <button type="button" class="btn btn-success" onclick="start()">문제 풀기</button>
      </div>
   </nav>
   
   <section>
      <div style="height: 50px;"></div>
      
      <div class="row">
         <div id="categori1" class="col-md-3"></div>
         <div id="categori2" class="col-md-3"></div>
         <div id="categori3" class="col-md-3"></div>
         <div id="categori4" class="col-md-3"></div>
      </div>
      
      <div class="row">
         <div style="height: 20px;"></div>
         <div id="title" class="col-md-4"></div>
         <div id="problem" class="col-md-8" align="left"></div>
      </div>
      
      <div style="height: 50px;"></div>
      
      <div class="row" style="height: 400px;" align="left">
         <div class="col-md-2" style="height: 400px;"></div>
         <div id="view" class="col-md-8" style="height: 400px;"></div>
         <div class="col-md-2" style="height: 400px;"></div>
      </div>
         <div id="answerHere">
            <!-- <audio autoplay controls="controls">
               <source src="audio/cool - a mourning image.mp3" type="audio/mp3">
            </audio> -->
         </div>
      </section>
   
   <footer>
      <div style="bottom: 0px; width: 100%; height: 200px;">
         <img src="image/java.jpg" style="width: 100%; height: 200px;">
      </div>
   </footer>
</div>

</body>
<script type="text/javascript">

   	var random = Math.floor(Math.random()*5);
   	var html;
   
   	
	
   function start()
   {
      html = "";
      html += "<button type='button' class='btn btn-warning' onclick='programProblem()'>프로그램언어</button>";
      $("#categori1").html(html);

      html = "";
      html += "<button type='button' class='btn btn-warning' onclick='commonProblem()'>상식</button>";
      $("#categori2").html(html);

      html = "";
      html += "<button type='button' class='btn btn-warning' onclick='capitalProblem()'>수도</button>";
      $("#categori3").html(html);

      html = "";
      html += "<button type='button' class='btn btn-warning' onclick='sportProblem()'>스포츠</button>";
      $("#categori4").html(html);
   }
   
   function programProblem()
   {
      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");
      
      
      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);
      
      $.ajax({
         url : "json/ScriptMoonJae.jsp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var program = obj.program;
            var html = "";
         	
            answer = program[random].pro[0].val6;
            
            html += "<b><font size='6' style='line-height: 68px;'>"+program[random].pro[0].val0+"</font>";
            $("#problem").html(html);
            
            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+program[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+program[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+program[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+program[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+program[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         }
      });
   }
   
   function commonProblem()
   {
      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");
      
      
      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);
      
      $.ajax({
         url : "json/CommonMoonJae.jsp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var CommonSense = obj.CommonSense;
            var html = "";
         	
            answer = CommonSense[random].pro[0].val6;
            
            html += "<b><font size='6' style='line-height: 68px;'>"+CommonSense[random].pro[0].val0+"</font>";
            $("#problem").html(html);
            
            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+CommonSense[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+CommonSense[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+CommonSense[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+CommonSense[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+CommonSense[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         }
      });
   }
   
   function capitalProblem()
   {
      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");
      
      
      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);
      
      $.ajax({
         url : "json/CapitalMoonJae.jsp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var capital = obj.capital;
            var html = "";
         	
            answer = capital[random].pro[0].val6;
            
            html += "<b><font size='6' style='line-height: 68px;'>"+capital[random].pro[0].val0+"</font>";
            $("#problem").html(html);
            
            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+capital[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+capital[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+capital[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+capital[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+capital[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         }
      });
   }
   
   function sportProblem()
   {
      $("#title").css("border", "1px solid green");
      $("#problem").css("border", "1px solid green");
      
      
      html = "";
      html += "<font size='10'><strong>문 제</strong></font>";
      $("#title").html(html);
      
      $.ajax({
         url : "json/SportMoonJae.jsp",
         type : "get",
         data : "",
         success : function(data){
        	var obj = JSON.parse(data);
            var sport = obj.sport;
            var html = "";
         	
            answer = sport[random].pro[0].val6;
            
            html += "<b><font size='6' style='line-height: 68px;'>"+sport[random].pro[0].val0+"</font>";
            $("#problem").html(html);
            
            html = "<input type='radio' name='bogi' value='val1'>";
            html += "<span id='val1'><font size='4'>"+sport[random].pro[0].val1+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val2'>";
            html += "<span id='val2'><font size='4'>"+sport[random].pro[0].val2+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val3'>";
            html += "<span id='val3'><font size='4'>"+sport[random].pro[0].val3+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val4'>";
            html += "<span id='val4'><font size='4'>"+sport[random].pro[0].val4+"</font></span><br>";
            html += "<input type='radio' name='bogi' value='val5'>";
            html += "<span id='val5'><font size='4'>"+sport[random].pro[0].val5+"</font></span><br><br>";
            html += "<div align='center'><button type='button' class='btn btn-danger' onclick='submit("+'answer'+")'>정답확인</button></div>"
            $("#view").html(html);
         }
      });
   }
   
   
   
   function submit(answer)
   {
	   var radioVal = $("input[name='bogi']:checked").val();
	   
       $(("#"+answer)).css("color", "red");
       
	   if (answer == radioVal)
	   {
            html = "";
            html += "<font size='10'><strong>정답입니다.</strong></font>";
            $("#answerHere").html(html);
            
	   }
	   else
	   {
            html = "";
            html += "<font size='10'><strong>오답입니다.</strong></font>";
            $("#answerHere").html(html);
	   }
	  	
   }
</script>
</html>