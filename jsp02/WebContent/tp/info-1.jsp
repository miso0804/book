<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.5.1.min.js"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="/TeamP/include/font.css" />
<style type="text/css">
body {
	background-color: black;
	color: white;
	box-sizing: border-box;
	text-align: center;
}
font{
	font-family: 'Unica One', cursive;
	font-size: 40px;
	color: white;
	float: left;
	cursor: pointer;
}
nav {
	padding: 50px 55px;
}
.update-content {
	clear: both; 
	margin-left: auto;
	margin-right: auto;
	width: 800px;
	margin-top: 100px;
}
#updateForm{
	margin-left: auto;
	margin-right: auto;
}
 .form-in {
	/* Spring에서 깨져서 width값 수정 */
	width: 73.5%;
	padding: 15px;
	border-bottom-width: 1px;
	height: 21px;
	margin-bottom: 100px;
} 
.form {
	height: 50px;
}
h1 {
	font-size: 50px;
	font-family: 'Yeseva One', cursive;
	letter-spacing: 10px;
	text-align: center;
}
a {all: unset;}
#btnLogin {
	padding: 0;
	float: right;
	background-color: white;
	border-style: none;
	border-radius: 18px;
	width: 81px;
	height: 42px;
	cursor: pointer;
}
#btnUpdate{
	background-color: purple;
	color: white;
	border-radius: 40px;
	text-align: center;
	/* Spring에서 깨져서 button width값 수정 */
	width: 80%;
	height: 48px;
	margin-top: 20px;
	border-style: unset;
	font-size: 15px;
	cursor: pointer;
}
</style>
</head>
<body>
	<nav>
		<a href="/TeamP"><font>W a f f l e</font></a>
		<button type="button" id="btnLogin">로그인</button>
	</nav>
	
	<div class="update-content">

		<div id="updateForm">
		<h1>Change Your Info!</h1>
		  <hr>
			<form method="post" name="form1">
				<h2>[kim]님</h2>
				<!-- id는 변경하지 않지만 나머지 정보를 수정하기위해서는 필요하다 -->
				<input type="hidden" name="userid" id="userid" value="kim">
				<div class="form">
					<input placeholder="비밀번호" class="form-in" type="password" name="passwd" id="passwd" 
					style="border-top-left-radius: 20px; border-top-right-radius: 20px;">
				</div>
				<div class="form">
					<input placeholder="이름" class="form-in" name="name" id="name" value="김미소">
				</div>
				<div class="form">
					<input placeholder="이메일(example@gmail.com)" class="form-in" name="email" id="email" value="qkms0804@naver.com"
						style="border-bottom-left-radius: 20px; border-bottom-right-radius: 20px;">
				</div>
				<div id="guide">
				</div>
				<div class="form" style="height: 90px;">
					<button id="btnUpdate" class="form-in" type="button">정보 수정하기</button>
				</div>
			</form>
		</div>
	  <hr>
	</div>
</body>
</html>