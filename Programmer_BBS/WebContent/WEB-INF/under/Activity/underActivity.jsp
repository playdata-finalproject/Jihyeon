<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import = "java.io.PrintWriter" %> 
<%@ page import = "bbs.*" %> 
<%@ page import = "java.util.ArrayList" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>UNIST 커뮤니티 게시판</title>
<style type = "text/css">
	a, a:hover{
		color: #000000;
		text-decoration: none;
	}
</style>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null){
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
		}
	%>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type = "button" class ="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>	
				<span class="icon-bar"></span>		
			</button>
			<a class="navbar-brand" href="main.jsp">유니스트 커뮤니티 게시판</a>
		</div>
		<div class="collaspe navbar-collapse" id="bs-example-navbar-collapse-1">
			<ul class = "nav navbar-nav">
				<li class="active"><a href="main.jsp">메인</a></li>
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">UNIST<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="https://unist-kor.unist.ac.kr/about-unist/overview/unist-at-a-glance-new/">한눈에 보는 UNIST</a></li>
						<li><a href="https://unist-kor.unist.ac.kr/major-site/">교내 주요 사이트</a></li>
						<li><a href="https://unist-kor.unist.ac.kr/information-disclosure/">UNIST 공시 정보</a></li>
						<li><a href="https://unist.edwith.org/">UNIST STAR-MOOC</a></li>
						<li><a href="https://unist-kor.unist.ac.kr/about-unist/parker-square/complaints/">UNIST 소통광장</a></li>
						<li><a href="https://uspace.unist.ac.kr/uspace/Portal/Enterprise/DefaultPage.bzr?tabID=1549&ftab=1134">UNIST 게시판</a></li>
						<li><a href="https://uspace.unist.ac.kr/uspace/Portal/Enterprise/DefaultPage.bzr?tabID=1172&ftab=1134">U-SPACE</a></li>
						<li><a href="https://hrc.unist.ac.kr/">UNIST 인권센터</a></li>
						<li><a href="https://blog.naver.com/softwater1">UNIST 헬스케어센터</a></li>
						<li><a href="https://sports.unist.ac.kr:8081/">UNIST 스포츠센터</a></li>
						<li><a href="https://dorm.unist.ac.kr/">UNIST 생활관</a></li>
						<li><a href="http://regulations.unist.ac.kr/lmxsrv/main/main.do;jsessionid=BE80159A699BC373161E97BD63A80660">UNIST 원규관리시스템</a></li>
					</ul>
				</li>	
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">학부 생활<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="under/Info/underInfo.jsp">학과 전공 및 정보 공유</a></li>
						<li><a href="under/Group/underGroup.jsp">자치단체/동아리 홍보</a></li>
						<li><a href="under/Activity/underActivity.jsp">대내외 활동</a></li>
						<li><a href="under/Hobby/underHobby.jsp">취미 소모임</a></li>
						<li><a href="under/Restaurant/underRestaurant.jsp">배달 및 식당 리스트</a></li>
						<li><a href="under/Parttime/underParttime.jsp">아르바이트 및 과외공고</a></li>
						<li><a href="under/Free/underFree.jsp">자유게시판</a></li>
						<li><a href="https://unist.in/">UNIST.in</a></li>
						<li><a href="https://wiki.unist.in/w/%EB%8C%80%EB%AC%B8">UNIST 위키</a></li>
						<li><a href="https://everytime.kr/c/337">울산과기원 에브리타임</a></li>
					</ul>
				</li>	
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">취업<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="https://udc.unist.ac.kr/login.aspx?redir2=%2fjobs%2fnormal%2fdefault.aspx%3f">채용 공고</a></li>
						<li><a href="https://udc.unist.ac.kr/">진로정보시스템</a></li>
						<li><a href="career/Corporate/careerCoporate.jsp">대기업 취업 스터디</a></li>
						<li><a href="career/Public/careerPublic.jsp">공기업 취업 스터디</a></li>
						<li><a href="career/Developer/careerDeveloper.jsp">개발자 취업 스터디</a></li>
						<li><a href="career/Hospital/careerHospital.jsp">PEET/MEET/DEET</a></li>
						<li><a href="career/Lawyer/careerLawyer.jsp">LAW SCHOOL</a></li>
						<li><a href="career/Pro/careerPro.jsp">기술고시/변리사/회계</a></li>
					</ul>
				</li>	
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">대학원 생활<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="https://research.unist.ac.kr/">연구처 - 연구행정정보</a></li>
						<li><a href="gra/Lab/graLab.jsp">연구실 홍보</a></li>
						<li><a href="gra/Labperson/graLabPerson.jsp">랩실 구인 공고</a></li>
						<li><a href="gra/LabPaper/graLabPaper.jsp">연구실, 논문, 특허, 제안</a></li>
						<li><a href="gra/Abroad/graAbroad.jsp">해외 대학</a></li>
						<li><a href="gra/Career/graCareer.jsp">석사/박사 채용공고</a></li>
						<li><a href="gra/Postdoc/graPostdoc.jsp">Post Doc</a></li>
						<li><a href="https://scholarworks.unist.ac.kr/">UNIST 논문</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">선배에게 묻는다<span class="caret"></span></a>
					<ul class= "dropdown-menu">
						<li><a href="https://news.unist.ac.kr/kor/category/all-news/people/">언론 속의 동문</a></li>
						<li><a href="https://news.unist.ac.kr/kor/">모교 소식</a></li>
						<li><a href="alum/Corporate/alumCorporate.jsp">대기업 및 중견기업</a></li>
						<li><a href="alum/Public/alumPublic.jsp">공기업 및 공공기관</a></li>
						<li><a href="alum/Government/alumGoverment.jsp">정부출연연구소 및 교수</a></li>
						<li><a href="alum/Startup/alumStartup.jsp">Startup 및 개발자</a></li>
						<li><a href="alum/Pro/alumPro.jsp">전문직</a></li>
					</ul>
				</li>
				<li class="dropdown">
					<a href ="#" class = "dropdwon-toggle"
						data-toggle="dropdown" role="button" aria-haspopup="true"
						aria-expanded="false">커뮤니티<span class="caret"></span></a>
					<ul class= "dropdown-menu">		
						<li><a href="com/Announce/comAnnoucne.jsp">공지사항</a></li>
						<li><a href="https://docs.google.com/forms/d/e/1FAIpQLSdz7aQLZVCe5lFAWMdrqHkLbLAzl6jPJ0OebQAFt3eh-KKxCw/viewform">동문회 가입</a></li>
						<li><a href="https://alumni.unist.ac.kr/">동문회 모임</a></li>
						<li><a href="com/Company/comCompany.jsp">동문 기업</a></li>
						<li><a href="com/Gallery/comGallery.jsp">갤러리</a></li>
						<li><a href="com/Promotion/comPromotion.jsp">프로모션</a></li>
					</ul>
				</li>
				<li><a href="https://unist-kor.unist.ac.kr/about-unist/giving/giving-to-unist-guide/">UNIST 대학발전기금</a></li>				
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
	<div class="container">
		<table class="table table-striped" style ="text-align: cetnter; border: 1px solid #ddddd">
			<thead>
				<tr>
					<th style = "background-color:#eeeeee; text-align:center;">번호</th>
					<th style = "background-color:#eeeeee; text-align:center;">제목</th>
					<th style = "background-color:#eeeeee; text-align:center;">작성자</th>
					<th style = "background-color:#eeeeee; text-align:center;">작성일</th>
				</tr>
			</thead>
			<tbody>
				<%
					BbsDAO bbsDAO = new BbsDAO();
					ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
					for(int i = 0; i < list.size(); i++){
				%>
				<tr>
					<td><%= list.get(i).getBbsID()  %></td>
					<td><a href = "view.jsp?bbsID<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ","&nbsp;").replaceAll("<","&lt;").replaceAll(">","&lt;").replaceAll("\n","<br>")  %></a></td>
					<td><%= list.get(i).getUserID()  %></td>
					<td><%= list.get(i).getBbsDate().substring(0,11) + list.get(i).getBbsDate().substring(11,13) + "시" + list.get(i).getBbsDate().substring(14,16) + "분" %></td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
		<%
			if(pageNumber != 1){
		%>		
			<a href="bbs.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-left">이전</a>
		<% 
			} if(bbsDAO.nextPage(pageNumber + 1)){
		%>
			<a href="bbs.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-left">다음</a>
		<% 
			}
		%>
		<a href="write.jsp" class = "btn btn-primary pull-right">글쓰기</a>
	</div>	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>  
</body>
</html>