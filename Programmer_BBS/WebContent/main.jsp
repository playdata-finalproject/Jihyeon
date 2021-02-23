<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %> 
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@700&display=swap" rel="stylesheet">
    <script
        src="https://kit.fontawesome.com/2d323a629b.js"
        crossorigin = "anonymous"
    ></script>
<link rel="stylesheet" href="css/common.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<script src="js/jquery-1.11.3.min.js"></script>
<script src="js/common.js"></script>  
<script src="js/jquery.smooth-scroll.min.js"></script> 
<title>개발자 대피소</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
	%>
	
	<nav class="navbar">
		<div class="navbar_logo">
            <i class="fas fa-baby"></i>
			<a href="main.jsp">코린이 대피소</a>
		</div>
		<ul>
            <li class="dropdown">
				<a href ="#" class = "dropdwon-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">언어 게시판<span class="caret"></span></a>
				<ul class= "dropdown-menu">
					<li><a href="bbs.jsp">자바</a></li>
				</ul>
			</li>
            <li class="dropdown">
				<a href ="#" class = "dropdwon-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">에러 모음집<span class="caret"></span></a>
				<ul class= "dropdown-menu">
					<li><a href="bbs.jsp">공백</a></li>
				</ul>
			</li>
            <li class="dropdown">
				<a href ="#" class = "dropdwon-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">BEST 게시글<span class="caret"></span></a>
				<ul class= "dropdown-menu">
					<li><a href="bbs.jsp">공백</a></li>
				</ul>
			</li>
            <li class="dropdown">
				<a href ="#" class = "dropdwon-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">취업 정보<span class="caret"></span></a>
				<ul class= "dropdown-menu">
					<li><a href="bbs.jsp">공백</a></li>
				</ul>
			</li>
            <li class="dropdown">
				<a href ="#" class = "dropdwon-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">연구/회사원<span class="caret"></span></a>
				<ul class= "dropdown-menu">
					<li><a href="bbs.jsp">공백</a></li>
				</ul>
			</li>
            <li class="dropdown">
				<a href ="#" class = "dropdwon-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">자유게시판<span class="caret"></span></a>
				<ul class= "dropdown-menu"> 
					<li><a href="bbs.jsp">공백</a></li>
				</ul>
			</li>
		</ul>
        <ul class="navbar_icons">
            <li><a href="Si"><i class="fas fa-sign-in-alt"></i></a></li>
            <li><a href="Google"><i class="fab fa-google"></i></a></li>
            <li><a href="Github"><i class="fab fa-github"></i></a></li>
        </ul>
        <a href="#" class = "navbar_toogleBtn">
            <i class="fas fa-list"></i>
        </a>		
			</ul>	
			<%
				if(userID == null){
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href = "login.jsp">로그인</a></li>
						<li><a href = "join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
					
			<%		
				} else{
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">회원관리<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href = "logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<% 	
				}
			%>
		</div>
	</nav>
<div id = "wrap">
	<div class = "container">
		<div class = "background">
            <div id = "myCarousel" class = "carousel" data-ride = "carousel">
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to = "0" class = "active"><li>
                    <li data-target="#myCarousel" data-slide-to = "1"><li>
                    <li data-target="#myCarousel" data-slide-to = "2"><li>
                    <li data-target="#myCarousel" data-slide-to = "3"><li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="img/background.png">
                    </div>
                    <div class="item">
                        <img src="img/background2.png">
                    </div>
                    <div class="item">
                        <img src="img/background3.png">
                    </div>
                    <div class="item">
                        <img src="img/background4.png">
                    </div>
                </div>
                <a class = "left carousel-control" href="#myCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                </a>
                <a class = "right carousel-control" href="#myCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                </a>
            </div>
        </div>	
        <div class="bodytext_area box_inner">
			<!-- login-wrap -->
			<div class="login_wrap">
				<h1 class="loginTit"><a href="#"><img src="img/tit_login.png" alt="TOURIST IN TOUR" /></a></h1>
				<ul class="login_list">
					<li class = "kakao"><a href="javascript:;"><strong>카카오톡</strong> 로그인</a></li>
					<li class="naver"><a href="javascript:;"><strong>네이버</strong> 로그인</a></li>
					<li class="facebook"><a href="javascript:;"><strong>페이스북</strong> 로그인</a></li>
					<li class="cellphone"><a href="javascript:;"><strong>이메일 주소</strong> 로그인</a></li>
				</ul>
				<div class="btnonoff_line">
					<div class="switch"></div>
					<p>
					    <a href="#" class="btn_onoff" onclick="return false;">로그인 유지</a>
					</p>
				</div>
        				
			</div>
			<!-- //login-wrap -->

		</div>
	</div>
	<footer>
		<div class="foot_area box_inner">
			<ul class="foot_list clear">
				<li><a href="javascript:;">이용약관</a></li>
				<li><a href="javascript:;">개인정보취급방침</a></li>
			</ul>
			<h2>코린이 대피소</h2>
            <p class="addr">서울특별시 서초구 효령료 335, 1층 플레이데이터 <span class="gubun">/</span>        
				<span class="br_line">대표전화 <span class="space0">02-1234-5678</span> <span class="gubun">/</span>        
					<span class="br_line">E-mail : <span class="space0"> corin@corinshelter.com</span></span>
				</span>
			</p>
			<p class="copy box_inner">Copyright(c) CorinShelter all right reserved</p>
			<ul class="snslink clear">
				<li><a href="javascript:;">blog</a></li>
				<li><a href="javascript:;">facebook</a></li>
				<li><a href="javascript:;">instargram</a></li>
			</ul>
		</div>
	</footer>
</div>
<h2 class="hdd">빠른 링크 : 전화 문의,카카오톡,오시는 길,꼭대기로</h2>
<div class="quick_area">
	<ul class="quick_list">
		<li><a href="tel:010-7184-4403"><h3>스터디 신청</h3></a></li>
		<li><a href="javascript:;"><h3>멘토링 <em>상담</em></h3><p>1:1상담</p></a></li>
		<li><a href="javascript:;"><h3 class="to_contact">이력서 작성</h3></a></li>
	</ul>
	<p class="to_top"><a href="#layout0" class="s_point">TOP</a></p>
</div>

	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>  
</body>
</html>