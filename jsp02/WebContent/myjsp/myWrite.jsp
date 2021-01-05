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
function check(){
	var name=$("#name").val();
	var passwd=$("#passwd").val();
//	var inconveniences=$("#inconveniences option:selected").val();
	var email=$("#email").val();
	var content=$("#content").val();
	
	if(name==""){
		alert("이름을 입력하세요");
		$("#name").focus();
		return;
	}
	if(passwd==""){
		alert("비밀번호를 입력하세요");
		$("#passwd").focus();
		return;
	}
	if(email==""){
		alert("이메일을 입력하세요");
		$("#email").focus();
		return;
	}
	if(content==""){
		alert("내용을 입력하세요");
		$("#content").focus();
		return;
	}
	
	document.form1.action="${path}/notice_servlet/insert.do";
	document.form1.submit();
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
<h2>글작성</h2>
<form name="form1" id="form1" method="post">
<table border="1" width="600px"  style="margin-left: auto; margin-right: auto;">
<tr>
  <td>이름</td>
  <td><input name="name" id="name" size="30"></td>
</tr>
<tr>
  <td>비밀번호</td>
  <td><input type="password" name="passwd" id="passwd" size="30"></td>
</tr>
<tr>
  <td>항목</td>
  <td>
    <select name="inconveniences" id="inconveniences">
      <option value="반품/교환/환불">반품/교환/환불</option>
      <option value="주문/결제" selected="selected">주문/결제</option>
      <option value="eBook">eBook</option>
      <option value="회원정보 수정">회원정보 수정</option>
      <option value="취소/교환/반품조회">취소/교환/반품조회</option>
    </select>
  </td> 
</tr>
  <tr>
    <td>이메일 </td>
    <td><input type="text" name="email" id="email" size="40"></td>
  </tr>
  <tr>
    <td colspan="2">
      <textarea rows="5" cols="70" name="content" id="content"></textarea>
    </td>
  </tr>
<tr align="center">
  <td colspan="2">
    <input type="button" value="확인" onclick="check()">
    <input type="button" value="취소">
  </td>
</tr>
</table>
</form>
</div>
</body>
</html>