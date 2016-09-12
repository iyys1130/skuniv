<%@page import="java.util.List"%>
<%@page import="kr.capa.acip.dao.attraction.AttractionDAO"%>
<%@page import="kr.capa.acip.dao.attraction.AttractionDAOImpl"%>
<%@page import="kr.capa.acip.vo.attraction.AttractionVO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
<script type="text/javascript">
   function joinPopupOpen() {
      var popUrl = "registrationform"; //팝업창에 출력될 페이지 URL
      var popOption = "width=370, height=500, resizable=no,scrollbars=no, status=no;"; //팝업창 옵션(optoin)
      window.open(popUrl, "", popOption);
   }
</script>
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
<link href="css/creative.min.css" rel="stylesheet">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

   <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">

      <!-- Brand and toggle get grouped for better mobile display -->
      <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed"
            data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span> Menu <i
               class="fa fa-bars"></i>
         </button>
         <a class="navbar-brand page-scroll" href="#page-top">acip 로고
            넣어야함1</a>
         <!--                수정한곳  -->
         <a class="navbar-brand page-scroll" href="#page-top">랜드1 로고 넣어야함
         </a>

      </div>

      <!-- Collect the nav links, forms, and other content for toggling -->
      <div class="menubar">
         <ul>
            <li><a href="#">이용정보</a>
               <ul>
                  <li><a href="#1use">이용 방법</a></li>
                  <li><a href="#1fee">이용 요금</a></li>
                  <li><a href="#1traffic">교통편</a></li>
                  <li><a href="#1food">먹거리</a></li>
               </ul></li>

            <li><a href="#" id="#">기구정보</a>
               <ul>
                  <li><a href="#1indoor">실내 기구</a></li>
                  <li><a href="#1outdoor">실외 기구</a></li>
               </ul></li>

            <li><a href="#">행사</a>
               <ul>
                  <li><a href="1eventlist">행사 정보</a></li>
                  <li><a href="1eventlist">할인 정보</a></li>
               </ul></li>
            <li><a href="#">게시판</a>
               <ul>
                  <li><a href="1freetalklist">잡담</a></li>
                  <li><a href="1reviewlist">이용후기</a></li>
                  <li><a href="1qnalist">QnA</a></li>
                  <li><a href="1complainlist">불만</a></li>
               </ul></li>
            <div style="margin-right: 50px; float: right">
               <ul class="log">
                  <form action="login" method="post">
                     <li><input type="text" placeholder="ID" class="focus" name="id"
                        size="8"></li>
                     <li><input type="password" placeholder="PASSWORD" name="password"
                        class="focus" size="8"></li>
                     <li><input style="margin-left: 30px" type="submit"
                        value="login"></li>
                  </form>
                  <li><button onClick="joinPopupOpen()"
                        style="margin-left: 30px">join</button></li>
               </ul>
            </div>
         </ul>



      </div>
      <!-- /.container-fluid -->
   </nav>

   <!-- 수정하는 부분 -->
   <!-- 메인에 쓰일 페이지 -->
   <header>
      <div class="header-content">
         <div class="header-content-inner">
            <h1 id="homeHeading">총 ${totalwaitnum }명 대기중</h1>
            <hr>
            <a href="1waittime" class="btn btn-primary btn-xl page-scroll">대기
               시간</a> <a href="1recommendmain"
               class="btn btn-primary btn-xl page-scroll">추천 코스</a>
         </div>
      </div>
   </header>

   <!--  이용 방법 부분 -->
   <section class="bg-primary1" id="1use">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               <h2 class="section-heading">이용 방법</h2>
               <hr class="light">
               <p class="text-faded">설명 쭈루룩</p>
               <a href="#services"
                  class="page-scroll btn btn-default btn-xl sr-button">지워도됨</a>
            </div>
         </div>
      </div>
   </section>

   <!--  이용 요금 부분 -->
   <section class="bg-primary2" id="1fee">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               <h2 class="section-heading">이용 요금</h2>
               <hr class="light">
               <p class="text-faded">설명 쭈루룩</p>
               <a href="#services"
                  class="page-scroll btn btn-default btn-xl sr-button">지워도됨</a>
            </div>
         </div>
      </div>
   </section>

   <!--  교통편 부분 -->
   <section class="bg-primary3" id="1traffic">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               <h2 class="section-heading">교통편</h2>
               <hr class="light">
               <p class="text-faded">설명 쭈루룩</p>
               <a href="#services"
                  class="page-scroll btn btn-default btn-xl sr-button">지워도됨</a>
            </div>
         </div>
      </div>
   </section>
   
   <div ani_type="slide(delay:2000)"> <!--// 슬라이드 선언 //-->

	<img id="slide_ex_1" src="./img/1bears/attraction/1_1.png" slide_type="box" alt="슬라이드 변경 테스트를 위한 이미지1" alt_no="1"> <!--// 슬라이드 첫번째 항목 //-->
	<img id="slide_ex_2" src="./img/1bears/attraction/1_2.jpg" slide_type="box" style="display:none;" alt="슬라이드 변경 테스트를 위한 이미지1" alt_no="1"> <!--// display:none 처리 //-->
	<img id="slide_ex_3" src="./img/1bears/attraction/1_3.jpg" slide_type="box" style="display:none;" alt="슬라이드 변경 테스트를 위한 이미지1" alt_no="1"> <!--// display:none 처리 //-->

</div>
   

   <!--  먹거리 부분 -->
   <section id="1food">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 text-center">
               <h2 class="section-heading">At Your Service</h2>
               <hr class="primary">
            </div>
         </div>
      </div>
      <div class="container">
         <div class="row">
            <div class="col-lg-3 col-md-6 text-center">
               <div class="service-box">
                  <i class="fa fa-4x fa-diamond text-primary sr-icons"></i>
                  <h3>Sturdy Templates</h3>
                  <p class="text-muted">Our templates are updated regularly so
                     they don't break.</p>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
               <div class="service-box">
                  <i class="fa fa-4x fa-paper-plane text-primary sr-icons"></i>
                  <h3>Ready to Ship</h3>
                  <p class="text-muted">You can use this theme as is, or you can
                     make changes!</p>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
               <div class="service-box">
                  <i class="fa fa-4x fa-newspaper-o text-primary sr-icons"></i>
                  <h3>Up to Date</h3>
                  <p class="text-muted">We update dependencies to keep things
                     fresh.</p>
               </div>
            </div>
            <div class="col-lg-3 col-md-6 text-center">
               <div class="service-box">
                  <i class="fa fa-4x fa-heart text-primary sr-icons"></i>
                  <h3>Made with Love</h3>
                  <p class="text-muted">You have to make your websites with love
                     these days!</p>
               </div>
            </div>
         </div>
      </div>
      <br> <br> <br>
      <!--    </section> -->

      <!--    <section class="no-padding" id="portfolio"> -->
      <div class="container-fluid">
         <div class="row no-gutter popup-gallery">
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">

                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>

                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive">
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/food/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/food/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption">
                     <div class="project-category ">Category</div>
                     <div class="project-name">Project Name</div>
                  </div>
               </a>
            </div>
         </div>
      </div>
   </section>

   <!--  실내 부분 -->
   <section class="bg-primary4" id="1indoor">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               <h2 class="section-heading">실내 사진</h2>
               <hr class="light">
               <p class="text-faded">설명 쭈루룩</p>
               <a href="#services"
                  class="page-scroll btn btn-default btn-xl sr-button">지워도됨</a>
            </div>
         </div>
      </div>

      <!--  실내기구 사진 넣어야함 -->
      <!--    <section class="no-padding" id="portfolio"> -->
      <div class="container-fluid">
         <div class="row no-gutter popup-gallery">
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_1.png" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_1.png" class="img-responsive" >
                  <div class="portfolio-box-caption2">
                     <div class="project-category ">
                        4D 깜짝 모험관<br>
                     </div>
                     <div class="project-name">
                        <br>키 : 100cm 이상 <br>(키 80~100cm : 성인보호자와 동반 탑승)<br>상영시간
                        : 5분<br>입장정원 : 60명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_7.png" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_7.png" class="img-responsive" >
                  <div class="portfolio-box-caption2">
                     <div class="project-category ">베스트 키즈</div>
                     <div class="project-name">
                        <br>10세 이하 입장가능<br> 운영시간 : 60분<br>입장정원 : 250명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_12.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_12.jpg" class="img-responsive" >
                  <div class="portfolio-box-caption2">
                     <div class="project-category ">춤추는 요술집</div>
                     <div class="project-name">
                        <br>키 : 100cm 이상<br>(키 90~100cm : 성인보호자와 동반 탑승)<br>입장정원
                        : 26~39명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_13.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_13.jpg" class="img-responsive" >
                  <div class="portfolio-box-caption2">
                     <div class="project-category ">캐니멀 서커스</div>
                     <div class="project-name">
                        <br>키 : 132cm 이상 <br> 운영시간 : 3분<br>입장정원 : 40명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_16.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_16.jpg" class="img-responsive" >
                  <div class="portfolio-box-caption2">
                     <div class="project-category ">해적소굴</div>
                     <div class="project-name">
                        <br>키 : 120cm 이상 <br>(키 80~120cm : 성인보호자와 동반 탑승)<br>탑승시간
                        : 2분 30초<br>입장정원 : 시간당 360명
                     </div>
                  </div>
               </a>
            </div>
         </div>
      </div>
   </section>

   <!--  실외 부분 -->
   <section class="bg-primary5" id="1outdoor">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               <h2 class="section-heading">실외 사진</h2>
               <hr class="light">
               <p class="text-faded">설명 쭈루룩</p>
               <a href="#services"
                  class="page-scroll btn btn-default btn-xl sr-button">지워도됨</a>
            </div>
         </div>
      </div>

      <!-- 실외기구 사진 -->
      <!--    <section class="no-padding" id="portfolio"> -->
      <div class="container-fluid">
         <div class="row no-gutter popup-gallery">
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_2.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_2.jpg" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">급류타기</div>
                     <div class="project-name">
                        <br>키 : 110cm 이상<br>(키 80~110cm : 성인보호자와 동반 탑승)<br>운영시간
                        : 3분 50초<br>입장정원 : 1대당 4명 / 시간당 600명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_3.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_3.jpg" class="img-responsive" >
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">달나라열차</div>
                     <div class="project-name">
                        <br>키 : 120cm 이상<br>운영시간 : 1분 40초 <br>입장정원 : 1대당
                        4명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_4.png" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_4.png" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">도깨비바람</div>
                     <div class="project-name">
                        <br>키 : 140cm 이상 ~ 190cm 이하<br>입장정원 : 40명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_5.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_5.jpg" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">라바트위스터</div>
                     <div class="project-name">
                        <br>키 110cm 이상<br>(키 102~110cm : 성인보호자와 동반 탑승)<br>운영시간
                        : 2분 30초<br>입장정원 : 40명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_6.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_6.jpg" class="img-responsive" >
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">록카페</div>
                     <div class="project-name">
                        <br>키 : 112cm 이상<br>운영시간 : 2분 30초 <br>입장정원 : 차량
                        20대 / 1대당 2인
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_8.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_8.jpg" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">블랙홀 2000</div>
                     <div class="project-name">
                        <br>키 : 120cm 이상<br>운영시간 : 3분<br>입장정원 : 24명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_9.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_9.jpg" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">빅회전목마</div>
                     <div class="project-name">
                        <br>키 : 100cm 이상<br>운영시간 : 2분 30초<br>입장정원 : 68명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_10.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_10.jpg" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">알포스윙</div>
                     <div class="project-name">
                        <br>키 : 122cm 이상<br>운영시간 : 2분<br>입장정원 : 40명
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_11.png" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_11.png" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">은하열차 888</div>
                     <div class="project-name"><br>키 : 120cm 이상<br>운영시간 : 약 3분<br>입장정원 : 24명</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_14.jpg" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_14.jpg" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">킹바이킹</div>
                     <div class="project-name"><br>키 : 110cm 이상 <br>운영시간 : 3분 20초<br>입장정원 : 84명</div>
                  </div>
               </a>
            </div>
            <div class="col-lg-4 col-sm-6">
               <a href="img/1bears/attraction/1_15.png" class="portfolio-box"> <img
                  src="img/1bears/attraction/1_15.png" class="img-responsive">
                  <div class="portfolio-box-caption3">
                     <div class="project-category ">터닝메카드 고!범퍼카</div>
                     <div class="project-name"><br>키 : 102cm~128cm<br>운영시간 : 3분<br>입장정원 : 20명</div>
                  </div>
               </a>
            </div>
         </div>
      </div>
   </section>



   <!-- aside태그 -->
   <aside class="bg-dark">
      <div class="container text-center">
         <div class="call-to-action">
            <h2>Free Download at Start Bootstrap!</h2>
            <a href="#" class="btn btn-default btn-xl sr-button">위로 가고싶니~?</a>
         </div>
      </div>
   </aside>

   <!-- 마지막에 사이트정보같은거 나타내주면 나쁘지 않을듯 -->
   <section id="contact">
      <div class="container">
         <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
               <h2 class="section-heading">Let's Get In Touch!</h2>
               <hr class="primary">
               <p>Ready to start your next project with us? That's great! Give
                  us a call or send us an email and we will get back to you as soon
                  as possible!</p>
            </div>
            <div class="col-lg-4 col-lg-offset-2 text-center">
               <i class="fa fa-phone fa-3x sr-contact"></i>
               <p>123-456-6789</p>
            </div>
            <div class="col-lg-4 text-center">
               <i class="fa fa-envelope-o fa-3x sr-contact"></i>
               <p>
                  <a href="mailto:your-email@your-domain.com">feedback@startbootstrap.com</a>
               </p>
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