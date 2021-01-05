<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%><%@ page session="false"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
<script type="text/javascript">
</script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Yeseva+One&display=swap" rel="stylesheet">
<style>
body{
  background-color: black;
  text-align: center;
  color: white;
  box-sizing: border-box;
}
.login-content{
    text-align: center;
    margin-left: auto;
    margin-right: auto;
    width: 800px;
    margin-top: 10%;
} 
#loginForm{
	margin-left: auto;
    margin-right: auto;
    padding: 50px 80px;
    width: 80%;
}
#btnlogin{
  	background-color: purple;
	color: white;
	border-radius: 40px;
	text-align: center;
	height: 48px;
	margin-top: 20px;
	border-style: unset;
	font-size: 20px;
    padding: 7px;
}
#btnJoin{color: white;}
#btnJoin:active{text-decoration: underline;}

.form-in{
	width: 80%;
	padding: 15px;
    border-bottom-width: 1px;
    height: 65px;
	
	}
.form{
	height: 50px;
}
h1{
	font-size: 50px;
	font-family: 'Yeseva One', cursive;
	letter-spacing: 10px;
}
a{all:unset;}
#searchInfo{
	font-size: small;
	color: white;
}
</style>
</head>
<body>

	<div class="login-content">
		<h1>LOGIN</h1>
		<hr>

		<div id="loginForm">
			<form method="post" name="form1">
				<div class="form">
					<input placeholder="아이디" class="form-in"
						style="border-top-left-radius: 20px; border-top-right-radius: 20px;">
				</div>
				<div class="form">
					<input placeholder="비밀번호" type="password" class="form-in"
						style="border-bottom-left-radius: 20px; border-bottom-right-radius: 20px;
								margin-top: 14px;">
				</div>
				<div class="form" style="margin-top: 50px;">
					<button id="btnlogin" type="submit" class="form-in">로그인</button>
				</div>
			</form>
			
			<div style="margin: 30px;"><a type="button" id="searchInfo" href="#">
				비밀번호를 잊으셨나요?
			</a></div>
			<div style="color: gray;">
				Waffle 회원이 아닌가요? <a type="button" id="btnJoin" href="#">지금 가입하세요</a>
			</div>
		</div>

		<hr>
		
	</div>

</body>
</html>