<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.5.1.min.js"></script>
</head>
<body>
<%
response.addCookie(new Cookie("tel","010-7884-8282"));
%>
전화 : ${cookie.tel.value} <br>
쿠키가 변경되었습니다.<br>
<a href="useCookie2.jsp">쿠키 확인</a>
</body>
</html>