<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<html>
<head>	
<link rel="stylesheet" type="text/css" href="chatting.css">
</head>
<body onload="loadDoc()">
<script>
function getInstance(){
	var httpReq = null;
	try{
		httpReq = new ActiveXObject("Msxml2.XMLHTTP");	
	} catch(Ex) {
		try{
			httpReq = new ActiveXObject("Microsoft.XMLHTTP");
		} catch (Ex2) {
			httpReq = null;
		}
	}
	return httpReq;	
}
function insertMsg(){
	httpReq = getInstance();
	var message = document.getElementById("msg").value;
	var msg = encodeURIComponent(message);
	var url = "1ajax.jsp?msg=" + msg;
	httpReq.onreadystatechange = handleInsertCustomer;
	httpReq.open("GET", url, true);
	httpReq.send();	
}
function handleInsertCustomer(){
	if (httpReq.readyState==4) {	
		document.inForm.msg.value = "";	
	}	
}
function loadDoc() {
    var intervalID=setInterval(function(){
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
       if (xhttp.readyState == 4 && xhttp.status == 200) {
                document.getElementById("list").innerHTML = xhttp.responseText;
     }
         };
         xhttp.open("POST","1ajax.jsp",true);
         xhttp.send();   
       },300);
    
 }
 </script>
 <strong id="list">
<c:forEach items="${waittime }" var="time">
${time.aname }<br>
${time.awaittime }
</c:forEach>
</strong>
</body>

</html>