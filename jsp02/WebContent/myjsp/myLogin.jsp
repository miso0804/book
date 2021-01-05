<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Xanh+Mono&display=swap" rel="stylesheet">
<script src="../include/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#btnLogin").click(function(){
		var param="userid="+$("#userid").val()
		+"&passwd="+$("#passwd").val();
		$.ajax({
			type : "post",
			url : "/jsp02/myjsp_servlet/myLogin.do",
			data : param,
			success : function(result){
				$("#result").html(result);
				alert("로그인 되었습니다.");
				location.href="main_1.jsp";
			}
		});
	});
});
</script>
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
.login{
	width: 600px;
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	margin-top: 330px;
}
.login-form{
	width: 70%;
	margin-left: auto;
	margin-right: auto;
}
.form-in{
	width: 320px;
	height: 25px;
	padding: 10px;
	margin: 10px;
}
#userpw{
	margin-top: 20px;
}

#btnLogin{
	margin-top: 20px;
	font-size: 18px;
	color: #2F4F4F;
	width: 346px;
    height: 50px;

}

</style>
</head>
<body>
<body>
	<div class="login">
		<h1><a href="main_1.jsp">bookstore</a></h1>
		<div class="login-form">
			<form name="form1" method="post">
				<div class="form">
					<input placeholder="ID" class="form-in" id="userid">
				</div>
				<div class="form">
					<input placeholder="PW" type="password" class="form-in" id="passwd">
				</div>
				<div class="form">
					<button id="btnLogin" type="submit" class="form-in">LOGIN</button>
					<div id="result"></div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>