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
function nt_search(){
	document.form1.action="${path}/notice_servlet/list.do";
	document.form1.submit();
}
</script>
<style>
#book1{
    width: 180px;
    height: 50px;
    font-size: 30px;
    color: white;
    text-align: center;
    background-color: rgb(135, 164, 176);
    border: solid 1px black;
    border-radius: 12px;
    font-family: cursive;
}
body {
    text-align : center; 
}
.textbox{
    background-color: #FAEBD7;
    height: 100%;
}
</style>
</head>
<body>
<div id="book1"><a href="main_1.jsp">bookstore</a></div>
<div class="textbox">
<h1>고객센터</h1>
${count}개의 글이 있습니다.

<form name="form1" id="form1" method="post">
<select name="searchkey" id="searchkey">
<c:choose>
  <c:when test="${searchkey == 'name'}">
    <option value="name" selected>이름</option>
    <option value="content">내용</option>
    <option value="name_content">이름+내용</option>
  </c:when>
  <c:when test="${searchkey == 'content'}">
	  <option value="name">이름 </option>
	  <option value="content" selected>내용 </option>
	  <option value="name_content">이름+내용 </option>
  </c:when>
  <c:when test="${searchkey == 'name_content'}">
	  <option value="name">이름 </option>
	  <option value="content">내용 </option>
	  <option value="name_content" selected>이름+내용 </option>
  </c:when>
</c:choose>
</select>
<input name="search" id="search" value="${search}">
<input type="button" value="조회" onclick="nt_search()">
</form>

<input type="button" value="글쓰기" 
onclick="location.href='${path}/myjsp/myWrite.jsp'">

<c:forEach var="dto" items="${list}">
<form method="post" action="${path}/notice_servlet/passwd_ch.do">
<!-- 편집을 위해서는 게시물 번호가 필요함 -->
<input type="hidden" name="idx" value="${dto.idx}">
<table border="1" width="600px" style="margin-left: auto; margin-right: auto;">
  <tr>
    <td>이름 </td>
    <td>${dto.name} </td>
    <td>날짜 </td>
    <td>${dto.post_date} </td>
  </tr>
  <tr>
    <td>항목</td>
    <td>${dto.inconveniences}</td>
    <td>이메일 </td>
    <td>${dto.email} </td>
  </tr>
  <tr>
    <td>내용</td>
    <td colspan="4">${dto.content} </td>
  </tr>
  <tr>
    <td colspan="4">
      비밀번호 <input type="password" name="passwd">
      <input type="submit" value="수정/삭제">
  </tr>
</table>
</form>
</c:forEach>
</div>
</body>
</html>