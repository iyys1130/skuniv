<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="css/usermain.css" rel="stylesheet">
</head>
<body>
	${sessionScope.loginid}
	<ul class="log">
		<form action="login">
			<input type="text" placeholder="ID" class="focus" size="8">
			<input type="password" placeholder="PASSWORD" class="focus" size="8">
			<input style="margin-left: 30px" type="submit" value="login">
			<button onClick="joinPopupOpen()" style="margin-left: 30px">join</button>
		</form>
	</ul>
	<br>
	<button onclick="location.href='usermain'">a태그써서 로고사진넣기(메인으로)</button>

	<div id="wrap">
	${bearscongestion }
	<c:set var="bears" value="${bearscongestion }" />
	<c:choose>
 	<c:when test="${bears <= 50}">
		<div id="box1">
			<div id="low">
				<a href="bearsmain">BEARS LAND</a>
			</div>
		</div>
	</c:when>
	<c:when test="${bears > 50 && bears <= 100}">
		<div id="box1">
			<div id="middle">
				<a href="bearsmain">BEARS LAND</a>
			</div>
		</div>
	</c:when>
	<c:otherwise>
		<div id="box1">
			<div id="high">
				<a href="bearsmain">BEARS LAND</a>
			</div>
		</div>
	</c:otherwise>
	</c:choose>
	
	
	
<%
			int eaglescongestion = 120;
			if (eaglescongestion <= 50) {
		%><div id="box1">
			<div id="low">
				<a href="bearsmain">EAGLES LAND</a>
			</div>
		</div>
		<%
			} else if (eaglescongestion > 50 && eaglescongestion <= 100) {
		%><div id="box1">
			<div id="middle">
				<a href="bearsmain">EAGLES LAND</a>
			</div>
		</div>
		<%
			} else if (eaglescongestion > 100 && eaglescongestion <= 150 || eaglescongestion > 150) {
		%><div id="box1">
			<div id="high">
				<a href="bearsmain">EAGLES LAND</a>
			</div>
		</div>
		<%
			}
			int giantscongestion = 80;
			if (giantscongestion <= 50) {
		%><div id="box1">
			<div id="low">
				<a href="bearsmain">GIANTS LAND</a>
			</div>
		</div>
		<%
			} else if (giantscongestion > 50 && giantscongestion <= 100) {
		%><div id="box1">
			<div id="middle">
				<a href="bearsmain">GIANTS LAND</a>
			</div>
		</div>
		<%
			} else if (giantscongestion > 100 && giantscongestion <= 150 || giantscongestion > 150) {
		%><div id="box1">
			<div id="high">
				<a href="bearsmain">GIANTS LAND</a>
			</div>
		</div>
		<%
			}
			%>
	</div>

</body>
</html>


