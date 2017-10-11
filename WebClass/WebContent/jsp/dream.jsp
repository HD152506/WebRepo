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
	<link rel="stylesheet" type ="text/css" href="/WebClass/css/dream.css">
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
  <h1 class="display-3">김은상의 '꿈'</h1><br>
  <p class="lead">2018년 학교를 졸업하고 난 후 그의 꿈은?</p>
  <hr class="my-4">
  <p>취미와 공부에 맞추어 미래를 어떻게 설계할 것인가?</p><br>
  <p class="lead">
		<a class="btn btn-success btn-lg" href="#study">진학</a>
		<a class="btn btn-success btn-lg" href="#music">음악</a>
  </p>
</div>
</div>

<div class="jumbotron jumbotron-fluid">
  <div class="container" id="study">
    <h1 class="display-3">진학</h1><br>
    <p class="sam">Q1. 진학을 하게 된다면 무슨 과로?</p><br>
    <p class="lead">A. 컴퓨터를 직접적으로 공부하는 과, 또는 실제로 소리 하드웨어와 관련된 학과로 진학하고 싶습니다.</p><br><br>
    <p class="sam">Q2. 대학교에 진학하게 되면 가장 하고 싶은 것?</p><br>
    <p class="lead">A. 대학교 음악동아리에서 엔지니어 관련 일을 하며 음악 활동을 시작하고 싶습니다.</p><br><br>
    <p class="sam">Q3. 음악 관련 활동을 하고 싶다는데 이것이 진학에 영향을 끼치지는 않을지?</p><br>
    <p class="lead">A. 진학 후 직접 공부하는 분야를 음향 쪽으로 견문을 넓히고 싶기 때문에, 그러한 것을 공부하기 위해 미래를 준비한다고<br> 생각하며 공부에 임할 것입니다.</p><br><br>     
    <p class="sam">Q4. 현재 희망하고 있는 학교는?</p><br>
    <p class="lead">A. 한양대학교, 중앙대학교 입니다.</p><br><br>
    <p class="sam">Q5. 가지고 싶은 직업은?</p><br>
    <p class="lead">A. 음악 프로듀서 또는 사운드 엔지니어, 음향 하드웨어 기술자, 음향 소프트웨어 엔지니어 입니다.</p><br><br>
  </div>
</div>

<div class="jumbotron jumbotron-fluid">
  <div class="container" id="music">
    <h1 class="display-3">음악</h1>
    <p class="lead">그가 현재 만들어 놓은 음악은 Soundcloud에 업로드되어 있다.</p><br>
    <p class="sam">Moon In The Sky (2017.02)</p>
    <iframe width="1000" height="300" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/301389478&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe><br><br><br><br>
    <p class="sam">My Ocean (2017.05)</p>
	<iframe width="1000" height="300" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/330501591&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe><br><br><br><br>
    <p class="sam">노창 (2017.03)</p>
  	<iframe width="1000" height="300" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/308809814&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe><br><br><br><br>
    <p class="sam">BluePrint (2017.08 )</p>
  	<iframe width="1000" height="300" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/340692436&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe><br><br><br><br>
    <p class="sam">Clap (2017.01 )</p>
	<iframe width="1000" height="300" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/298150732&amp;color=%23ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=true"></iframe>
  </div>
</div>
    <script src="/WebClass/js/dream.js"></script>
 
  </body>
</html>