<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>김은상의 블로그</title>
    <link rel="stylesheet" type ="text/css" href="../css/signinStyle.css">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand"  href="myblog.jsp">김은상의 블로그</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto" >
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="hobby.jsp">그의 취미</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
        <a class="nav-link" href="music.jsp">그의 음악</a>
      </li>
      <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);"> 
        <a class="nav-link" href="dream.jsp">그의 꿈</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0" id="loginForm">
      <input class="form-control mr-sm-2" type="text" placeholder="ID" aria-label="ID"  id="id" required>
      <input class="form-control mr-sm-2" type="password" placeholder="PWD" aria-label="PWD"  id="pwd" required>
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">로그인</button>
      </form>
  </div>
</nav>

<div class="container">
</div>  
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js" ></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

 <div class="modal" id="myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
      </div>
    </div>
  </div>
</div>

<br><br>	
<div class="container" >
<form id="signinForm">
  <div class="form-group">
    <label for="id2" >아이디</label>
    <input type="text" class="form-control" id="id2" placeholder="아이디를 입력하세요" required>
  </div>
  <div class="form-group">
    <label for="pwd2">비밀번호</label>
    <input type="password" class="form-control"  id="pwd2" placeholder="비밀번호" required>
    <small id="emailHelp" class="form-text text-muted">아이디와 비밀번호는 철저히 비밀 보장됩니다.</small>
  </div>
   <div class="form-group">
    <label for="name" >이름</label>
    <input type="text" class="form-control" id="name" placeholder="이름을 입력하세요" required>
  </div>
  <div class="form-check">
<fieldset class="form-group">
      <div class="row">
        <p>학년</p>
        <div class="col-sm-10">
          <div class="form-check">
            <label class="form-check-label" >
              <input class="form-check-input" type="radio" name="gridRadios" id="g1" value="option1" checked>
              1학년
            </label>
          </div>
          <div class="form-check">
            <label class="form-check-label">
              <input class="form-check-input" type="radio" name="gridRadios" id="g2" value="option2">
              2학년
            </label>
          </div>
          <div class="form-check">
            <label class="form-check-label">
              <input class="form-check-input" type="radio" name="gridRadios" id="g3" value="option2">
              3학년
            </label>
          </div>
        </div>
      </div>
    </fieldset>
    
<div class="form-group">
      <label for="cls" class="col-form-label">반</label>
      <select id="cls" class="form-control" required>
      <option value="">반 선택</option>
 	 <option value="one">1반</option>
 	 <option value="two">2반</option>
 	 <option value="thr">3반</option>
 	 <option value="fou">4반</option>
 	 <option value="fiv">5반</option>
 	 <option value="six">6반</option>
	</select>
    </div>
  </div>
      <label for="number">번호</label>
    <input type="number" class="form-control" id="number" placeholder="번호" required><br>
  <button type="submit" class="btn btn-primary">가입하기</button><br>
</form>
</div>
<script src="../js/signinScript.js"></script>
  </body>
</html>