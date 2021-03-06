<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>김은상의 블로그</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
	<link rel="stylesheet" type ="text/css" href="/WebClass/css/hobby.css">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="myblog.jsp">김은상의 블로그</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
   	
    <ul class="navbar-nav mr-auto" >
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/jsp/hobby.jsp">그의 취미</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="/WebClass/jsp/music.jsp">그의 음악</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);"> 
        <a class="nav-link" href="/WebClass/jsp/dream.jsp">그의 꿈</a>
      </li>
    </ul>
    
        <%-- 세션에 사용자 정보가 없는 경우 --%>
    <%
    	UserVO user = (UserVO) session.getAttribute("user");
    	if (user == null) {
    %>
    	<a class="text-bold text-white" style="text-decoration: none" href="/WebClass/login">Sign in</a>
    	<span class="text-bold text-white">&nbsp; or &nbsp;</span>
    	<a class="text-bold text-white" style="text-decoration: none" href="">Sign up</a>
    <%  } else { %>
    <%-- 세션에 사용자 정보가 있는 경우 --%>
	    <ul class="navbar-nav flex-row ml-md-auto d-none d-md-flex">
	    <li class="nav-item dropdown">
	      <a class="nav-item nav-link dropdown-toggle mr-md-2" href="#" id="bd-versions" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    	<%= user.getName() %>님
	      </a>
	      <div class="dropdown-menu dropdown-menu-right" aria-labelledby="bd-versions">
	      	<form action="/WebClass/bloglogout" method="post">
	      	  <button type="submit" class="dropdown-item">Sign out</button>
	      	</form>
	       	<div class="dropdown-divider"></div>
	        <button type="button" class="dropdown-item">Action1</button>
	        <button type="button" class="dropdown-item">Action2</button>
	      </div>
	    </li>
	    </ul>
	<%  } %>
  </div>
</nav>
	
	<div class="container">
	</div>  
	    <!-- Optional JavaScript -->
	    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
	    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
	
	<div class="container">
	<div class="jumbotron">
	  <h1 class="display-3">김은상의 '취미'</h1>
	  <p class="lead">2016년 한국디지털미디어고등학교에 입학한 그의 취미는?</p>
	  <hr class="my-4">
	  <p>평소 농구와 작곡을 즐기며, 코딩을 가끔 취미로 하여 즐거운 디미고 생활을 보내는 김은상 학생.</p>
	  <p class="lead">
			<a class="btn btn-primary btn-lg" href="#basketball">농구하기</a>
			<a class="btn btn-primary btn-lg" href="#compose">작곡하기</a>
			<a class="btn btn-primary btn-lg" href="#compile">코딩하기</a>
	  </p>
	</div>
	</div>
	
	<div class="jumbotron jumbotron-fluid">
	  <div class="container" id="basketball">
	    <h1 class="display-3">농구하기</h1>
	        <p class="lead">중학교 3학년 때 부터 즐겨왔던 농구</p>
	        	<img class ="image" src="/WebClass/image/basketball.jpg" width="854" height="480" alt="backetball image">
	        	<p class="sam">▲농구 덩크슛</p>
	        <p class="lead">센터 포지션을 담당하고 있음</p>
	        	<img class ="image" src="/WebClass/image/Lyao.jpg" width="854" height="1000" alt="Lyao image">
	        	<p class="sam">▲ 센터 야오밍</p>
	         <p class="lead">슛감은 제로지만 꾸준한 연습 중</p>
	        	<img class ="image" src="WebClass/image/dribble.jpg" width="854" height="480"  alt="dribble image">
	            <p class="sam">▲ 농구 드리블 연습하기</p>
	  </div>
	</div>
	
	<div class="jumbotron jumbotron-fluid">
	  <div class="container" id="compose">
	    <h1 class="display-3">작곡하기</h1>
	        <p class="lead">중학교 1학년 때 부터 독학으로 시작한 작곡</p>
	        	<img class ="image" src="/WebClass/image/fls.jpg" width="854" height="480"  alt="fls image">
	    	<p class="sam">▲FL Studio 12 스타트업</p>
	    <p class="lead">사용하는 프로그램은 FL Studio</p>
	   		<iframe width="854" height="480" src="https://www.youtube.com/embed/5gQO-Du1UOI" ></iframe>
	       	<p class="sam">▲FL Studio 12 기초강좌</p>
	    <p class="lead">현재 딴따라 일반동아리장으로 활동 중</p>
	    	<iframe width="854" height="480" src="https://www.youtube.com/embed/kiOm8Fv2MOc" ></iframe>
	    	<p class="sam">▲딴따라 뮤직비디오 '부심'</p>
			 <iframe width="854" height="480" src="https://www.youtube.com/embed/RrkgxBO3Htc" ></iframe>
	    	<p class="sam">▲딴따라 뮤직비디오 '소망풍선'</p>
	    <p class="lead">중학교 때 친구와 함께 음악 작업 중</p>
	    	<iframe width="854" height="480" src="https://www.youtube.com/embed/nQ6czw2bvq8" ></iframe>
	       	<p class="sam">▲중학교때부터 친구였던 아티스트 씨잼과 비와이의 'puzzle'</p>
	  </div>
	</div>
	
	<div class="jumbotron jumbotron-fluid">
	  <div class="container" id="compile">
	    <h1 class="display-3">코딩하기</h1>
	    <p class="lead">고등학교 1학년 때 부터 시작한 코딩</p>
	    	<iframe width="854" height="480" src="https://www.youtube.com/embed/dh4hdtZ00EU" ></iframe>
	    	<p class="sam">▲C언어 기초강의</p>
	    <p class="lead">한국디지털미디어고등학교 해킹방어과에 입학하며 처음 배우기 시작한 코딩</p>
	    	<iframe width="854" height="480" src="https://www.youtube.com/embed/0FKYrfifLFs" ></iframe>
	       	<p class="sam">▲2015 한국디지털미디어고등학교 홍보영상</p>
	    <p class="lead">코딩을 통하여 최고의 VSTI를 제작하겠다는 야망을 품음</p>
	    	<iframe width="854" height="480" src="https://www.youtube.com/embed/4AhkiBFJWF4" ></iframe>
	       	<p class="sam">▲세계에서 인정받는 VSTI top10</p>
	  </div>
	</div>
	
	
	
		<script src="/WebClass/js/hobby.js"></script>
	 
	  </body>
	</html>