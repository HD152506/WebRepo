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
	<link rel="stylesheet" type ="text/css" href="/WebClass/css/music.css">
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
  <h1 class="display-3">김은상의 '음악'</h1>
  <p class="lead">2016년 한국디지털미디어고등학교에 입학한 후 그가 즐긴 음악은?</p>
  <hr class="my-4">
  <p>그가 즐겨듣는 RnB스타일의 곡과 본받고 싶은 아티스트.</p>
  <p class="lead">
		<a class="btn btn-danger btn-lg" href="#ZICO">ZICO</a>
		<a class="btn btn-danger btn-lg" href="#GRAY">GRAY</a>
		<a class="btn btn-danger btn-lg" href="#GROOVYROOM">GROOVYROOM</a>
  </p>
</div>
</div>

<div class="jumbotron jumbotron-fluid">
  <div class="container" id="ZICO">
    <h1 class="display-3">지코</h1>
	<iframe src="https://giphy.com/embed/3o6wrwTPrF1V7P8Bna" width="1000" height="500"></iframe>
    <ul class="lead">
    	<li class="sub">아티스트 '지코', '블락비' 리더</li>
    	<li class="sub">트렌디한 비트메이킹과 프로듀싱 실력으로 최근 음원시장을 싹쓸이중인 "FANXY CHILD"의 수장으로, 엔지니어링의 대가.</li>
    	<li class="sub">아이돌로 시작하여 박재범과 함께 현 힙합씬을 먹여살린다는 소리를  들을 정도로 상당한 성장속도를 보이는 실력자.</li>
    </ul>
          	<h1>대표곡</h1>
          	<p class="sam">말해 Yes or No</p>
          	<iframe width="854" height="480" src="https://www.youtube.com/embed/h_gwt-cqKqQ" ></iframe>
          	<p class="sam">Boys and Girls</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/UsaJsymfuWU" ></iframe>
          	<p class="sam">She's Baby</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/ohSpvSGXfhY" ></iframe>
         	<p class="sam">Artist</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/obzb7nlpXZ0" ></iframe>
         	<p class="sam">BERMUDA TRIANGLE</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/ZHoLaLlL5lA" ></iframe>
  </div>
</div>

<div class="jumbotron jumbotron-fluid">
  <div class="container" id="GRAY">
    <h1 class="display-3">GRAY</h1>
        <img src="/WebClass/image/GRAY.jpg" alt="GRAY image">
    <ul  class="lead">
    	<li class="sub">1986년생, AOMG레이블의 작곡가</li>
    	<li class="sub">박재범, 사이먼 도미닉과 함께 AOMG의 히트곡 대부분을 작곡</li>
    	<li class="sub">쇼미더머니 5 비와이의 인생곡들을 만들어주고 우승시킨 장본인</li>
    </ul>
            <h1>대표곡</h1>
          	<p class="sam">하기나 해(feat.loco)</p>
          	<iframe width="854" height="480" src="https://www.youtube.com/embed/DHISHWPkSEA" ></iframe>
          	<p class="sam">Summer Go Loco</p>
          	<iframe width="854" height="480" src="https://www.youtube.com/embed/0crchV5LZBc" ></iframe>
        	<p class="sam">맘 편히</p>
          	<iframe width="854" height="480" src="https://www.youtube.com/embed/W5HWrQVuHas" ></iframe>
          	<p class="sam">Drive</p>
          	<iframe width="854" height="480" src="https://www.youtube.com/embed/8HFxbY8YvDk" ></iframe>
  </div>
</div>

<div class="jumbotron jumbotron-fluid">
  <div class="container" id="GROOVYROOM">
    <h1 class="display-3">GROOVYROOM</h1>
    <img src="/WebClass/image/groovyroom.jpg" alt="groovyroom image">
    <ul  class="lead">
    	<li class="sub">GROOVYROOM은 박규정, 이휘민으로 구성된 작곡가 크루로써 현대 RnB, 프로그레시브 하우스의 선두주자.</li>
      	<li class="sub">서로 작업하다가 만나 마음이 맞아 결성된 크루로 결성 2년만에 많은 아티스트의 곡을 작곡함.</li>
      	<li class="sub">뛰어난 믹싱 실력과 엔지니어링 실력으로 극찬을 받음.</li>
      	<li class="sub">2015년 결성되어 사실상 신생 크루나 마찬가지지만 무서운 차트 올킬을 보여줌</li>
    </ul>
            <h1>대표곡</h1>
          	<p class="sam">City</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/oJurpTMIs_8" ></iframe>	
          	<p class="sam">바람이나 좀 쐐</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/JojOd079xwQ" ></iframe>
         	<p class="sam">BLUE MOON</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/GeJAee3m3Ik" ></iframe>
			<p class="sam">널 너무 모르고</p>
			<iframe width="854" height="480" src="https://www.youtube.com/embed/vvkWaI91mLM" ></iframe>

  </div>
</div>
 	<script src="/WebClass/js/music.js"></script>
 
  </body>
</html>