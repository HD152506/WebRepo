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
	<link rel="stylesheet" type ="text/css" href="/WebClass/css/myblog.css">
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

<div id="carouselExampleControls" class="carousel slide slider" data-ride="carousel">
  <p class="text">김은상의 블로그</p>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img class="d-block" src="/WebClass/image/FL.png" alt="그의 취미" >
    </div>
    <div class="carousel-item">
      <img class="d-block" src="/WebClass/image/Book.png" alt="그의 꿈">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">이전</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">다음</span>
  </a>
</div>

 	<script src="/WebClass/js/myblog.js"></script>
 
  </body>
</html>