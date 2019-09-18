<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript"  src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
#add-task-page{
width: 400px;
    background: #e2e2e2;
    border: 1px solid #ccc;
    margin: 0 auto;
}
</style>

<script type="text/javascript">
var today = new Date();
var date = today.getFullYear()+'-'+(today.getMonth()+1)+'-'+today.getDate();
var time = today.getHours() + ":" + today.getMinutes() + ":" + today.getSeconds();
var hour = today.getHours();
var minute = today.getMinutes();
var seconds = today.getSeconds();

var dateTime = today.toLocaleTimeString();
function startTimer(){

//alert(dateTime);
// document.getElementById("mySelect").disabled = true;
// document.querySelector('startTime').value(datetime);
$('#startTime').val(dateTime);
}

// EndTime 
 var myVar = setInterval(myTimer ,dateTime);
function myTimer() {
  var d = new Date();

  var time = d.toLocaleTimeString();
  var time=time;
  $('#endTime').val(time);
} 

function callme()
{
	

	var myKeyVals="{\"userId\":\""
		+ $("#userId").val()
		+ "\",\"taskName\":\""
		+ $("#taskName").val()
		+ "\",\"startTime\":\""
		+ $("#startTime").val()
		+ "\",\"endTime\":\""
		+ $("#endTime").val()
		+ "\"}";
	
	

	//alert(myKeyVals)
	
	 $.ajax({
	      type: 'POST',
	      url: "/saveTask",
	      headers: {"content-type": "application/json"},
	      data: myKeyVals,
	      success: function(resultData) {
	    	 
	    	  alert("ggg");
	    	  console.log("Hello world!");
	    	  
	    	  }
	});
	
	
	
}


</script>
</head>
<div id="txt"></div>
<body>
<section id="add-task-page">
<form action="saveTask" method="post">
<table style="with: 50%">
<button type="button" id='startBtn' onclick="startTimer()">Start</button>
<input type='text' id="startTime" name="startTime"> 
<br>

<button type="button" onclick="clearInterval(myVar)">Stop time</button>
<input type='text' id="endTime" name="endTime" > 
    <tr> 
<td> Enter UserId</td>
<td><input type="text" id="userId" name="userId"></td>
</tr>
<tr>
<td> Enter Task Name</td>
<td> <input type="text" id="taskName" name="taskName"></td>
</tr>
<!-- <tr>
<td>Enter Start Time</td>
<td> <input type="text" id ="startTime" name="startTime"></td>
</tr>
<tr>
<td>Enter End Time</td>
<td> <input type="text" id ="endTime" name="endTime"></td>
</tr> -->
</table>

    </form>
    
    <button   id="callme"   onclick="callme()">Send</button>
    
</section>
<div id="txt"></div>
</body>
</html>
