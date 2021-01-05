<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnJoin").click(function(){
		var userid=$("#userid").val();
		var userpw=$("#userpw").val();
		var name=$("#name").val();
		var email=$("#email").val();
		var hp=$("#hp").val();
		
		var param={"userid":userid, "userpw":userpw, "name":name,
				"email":email, "hp":hp};
		
		if($("#userid").val().length==0){alert("아이디를 입력하세요");$("#userid").focus();return false;}
		if($("#userpw").val().length==0){alert("비밀번호를 입력하세요");$("#userpw").focus();return false;}
		if($("#name").val().length==0){alert("이름을 입력하세요");$("#name").focus();return false;}
		if($("#email").val().length==0){alert("이메일을 입력하세요");$("#email").focus();return false;}
		if($("#hp").val().length==0){alert("핸드폰을 입력하세요");$("#hp").focus();return false;}
		
		$.ajax({
			type: "post",
			url: "/jsp02/myjsp_servlet/myJoin.do",
			data: param,
			success: function(){
				alert("회원가입 완료");
				alert("로그인 후 이용해주세요");
			}
		});
	});
});

</script>
<style>
<style type="text/css">
a{
	all:unset;
	cursor: pointer;
}
body{
	text-align: center;
	box-sizing: border-box;
	background-color: #FAEBD7;
}
h1{
	color: #2F4F4F;
	font-family: 'Xanh Mono', monospace;
	letter-spacing: 3px;
}
.join{
	width: 600px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	margin-top: 315px;
}
.join-form{
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}
.form-in{
	width: 320px;
    padding: 10px;
    margin: 10px;
}
#btnJoin{
	margin-top: 20px;
	font-size: 18px;
	color: #2F4F4F;
	width: 350px;
}
</style>
</head>
<body>
<div class="join">
		<h1><a href="main_1.jsp">bookstore</a></h1>
		<div class="join-form">
			<form name="form1" method="post">
				<div class="form">
					<input placeholder="ID" class="form-in" id="userid">
				</div>
				<div class="form">
					<input placeholder="PW" type="password" class="form-in" id="userpw">
				</div>
				<div class="form">
					<input placeholder="Name" class="form-in" id="name">
				</div>
				<div class="form">
					<input placeholder="E-mail(example@naver.com)" class="form-in" id="email">
				</div>
				<div class="form">
					<input placeholder="010-0000-0000" class="form-in" id="hp">
				</div>
				<div class="form">
					<button id="btnJoin" type="submit" class="form-in">JOIN</button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>