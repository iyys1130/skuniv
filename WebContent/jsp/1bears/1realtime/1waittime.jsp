<%@page import="java.util.List"%>
<%@page import="kr.capa.acip.dao.attraction.AttractionDAO"%>
<%@page import="kr.capa.acip.dao.attraction.AttractionDAOImpl"%>
<%@page import="kr.capa.acip.vo.attraction.AttractionVO"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>베어스랜드 BEARS LAND</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">

<!-- Custom Fonts -->
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>

<!-- Plugin CSS -->
<link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

<!-- Theme CSS -->
<link href="css/waittime.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">

		<div class="menubar">

			<a class="navbar-brand page-scroll" href="#page-top">acip 로고넣어야함1</a>

			<a class="navbar-brand page-scroll" href="#page-top">랜드1 로고 넣어야함</a>
		</div>
		<!-- /.container-fluid -->
	</nav>

	<!-- 	<section id="services"> -->
	<!-- 		<header> -->
	<!-- 			<div class="header-content"> -->
	<!-- 				<div class="header-content-inner"> -->
	<!-- 					<h1 id="homeHeading">기구별 대기시간</h1> -->
	<!-- 					<hr> -->
	<!-- 				</div> -->
	<!-- 			</div> -->
	<!-- 		</header> -->
	<!-- 	</section> -->

	<section id="waittime">
		<div class="container">
			<div class="row">
				<div class="service-box">
					<h3>기구별 대기시간</h3>
					<hr>
					<table border="1" class="table-style-three">
						<tr>
							<th>기구이름</th>
							<th>대기시간</th>
						</tr>
						<c:forEach items="${waittime }" var="time">
							<tr>
								<td>${time.aname }</td>
								<td>${time.awaittime }분</td>
							</tr>
						</c:forEach>
					</table>
				</div>

			</div>
		</div>
	</section>
	<!-- jQuery -->
	<script src="vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
	<script src="vendor/scrollreveal/scrollreveal.min.js"></script>
	<script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

	<!-- Theme JavaScript -->
	<script src="js/creative.min.js"></script>

</body>

</html>