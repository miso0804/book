<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"></script>
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap"
	rel="stylesheet">
<style type="text/css">
body {
	background-color: black;
	text-align: center;
	color: white;
}
.detail {
	text-align: center;
	margin-left: auto;
	margin-right: auto;
	width: 800px;
	margin-top: 10%;
}

.detailForm {
	margin-left: auto;
	margin-right: auto;
	/* padding: 50px 80px;  */
	width: 80%;
}

#btnSearch {
	background-color: purple;
	color: white;
	border-radius: 40px;
	text-align: center;
	height: 48px;
	margin-top: 20px;
	font-size: 20px;
	padding: 7px;
	border-style: unset;
}

.form-in {
	width: 80%;
	padding: 15px;
	border-bottom-width: 1px;
	height: 65px;
}

.form {
	height: 50px;
}

h1 {
	font-family: 'Do Hyeon', sans-serif;
	font-size: 50px;
	letter-spacing: 7px;
}
</style>
</head>
<body>
	<div class="detail">
		<h1>회원정보 찾기</h1>
		<hr>

		<div class="detailForm">
			<input placeholder="이름" class="form-in"
				style="border-top-left-radius: 20px; border-top-right-radius: 20px;">
		</div>
		<div class="detailForm">
			<input placeholder="이메일(example@gmail.com)" class="form-in"
				style="border-bottom-left-radius: 20px; border-bottom-right-radius: 20px;">
		</div>
		<div class="detailForm">
			<button id="btnSearch" type="submit" class="form-in">찾기</button>
		</div>
		<hr>
	</div>


</body>
</html>