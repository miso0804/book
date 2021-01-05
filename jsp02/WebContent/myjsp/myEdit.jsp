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
function nt_update(){
	var form1=$("#form1");
	var name=$("#name");
	var email=$("#email");
	var inconveniences=$("#inconveniences");
	var passwd=$("#passwd");
	var content=$("#content");
	if(name.val()==""){
		alert("이름을 입력하세요");
		name.focus();
		return;
	} if(email.val()==""){
		alert("이메일을 입력하세요");
		email.focus();
		return;
	} if(inconveniences.val()==""){
		alert("항목을 선택해주세요");
		inconveniences.focus();
	} if(passwd.val()==""){
		alert("비밀번호를 입력하세요");
		passwd.focus();
		return;
	} if(content.val()==""){
		alert("내용을 입력하세요");
		content.focus();
		return;
	}	
	document.form1.action="${path}/notice_servlet/update.do";
	document.form1.submit();
}

function nt_delete(){
	if(confirm("삭제하시겠습니까?")){
		document.form1.action="${path}/notice_servlet/delete.do";
		document.form1.submit();
	}
}
</script>
<style>
body {
    text-align : center; 
}
.textbox{
    border-style : solid;
    border-width : 2px;
    padding : 50px;
    word-break : break-all; 
    border-color: #e6f2ff;
    background-color: #e0ebeb;
    margin-left: 120px;
    margin-right: 120px;
}
</style>
</head>
<body>
<div class="textbox">
<h2>고객센터 글 수정/삭제</h2>
<form name="form1" id="form1" method="post">
<table border="1" width="600px" style="margin-left: auto; margin-right: auto;">
  <tr>
    <td>이름 </td>
    <td><input name="name" id="name" size="40" value="${dto.name}"> </td>
  </tr>
  <tr>
    <td>이메일 </td>
    <td><input name="email" id="email" size="40" value="${dto.email}"> </td>
  </tr>
    <tr>
    <td>항목 </td>
    <td><input name="inconveniences" id="inconveniences" size="20" value="${dto.inconveniences}"> </td>
  </tr>
  <tr>
    <td>비밀번호 </td>
    <td><input type="password" name="passwd" id="passwd" 
    size="40"> </td>
  </tr>
  <tr align="center">
    <td colspan="2">
      <textarea rows="5" cols="55" name="content" id="content">
      ${dto.content}</textarea>
    </td>
  </tr>
  <tr align="center">
    <td colspan="2">
    <!-- 수정,삭제를 위한 게시물번호를 hidden tag에 저장 -->
      <input type="hidden" name="idx" value="${dto.idx}">
      <input type="button" value="수정" onclick="nt_update()">
      <input type="button" value="삭제" onclick="nt_delete()">
      <input type="button" value="목록" 
      onclick="location.href='${path}/notice_servlet/list.do'">
    </td>
  </tr>
</table>
</form>
</div>
</body>
</html>