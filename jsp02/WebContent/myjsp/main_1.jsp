<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.5.1.min.js">

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
ul {
    border-top: 1px dotted red;
    border-bottom: 1px solid red;
	text-align: center;
	padding: 10px 0;
}
ul li {
    display: inline-block; 
	padding: 0 10px;
	letter-spacing: 10px;
	list-style: none;
    font-weight: bold;
}
ul li a:hover {
	text-decoration: blink;
	background-color: #ff66b3;
}
#footer{
    text-align: center;
    background-color: rgb(135, 164, 176);
}
p{font-weight: bold;}
</style>
</head>
<body>

<div id="content">
  <div id="book1">bookstore</div>
    <ul>
      <li><a href="kyobo.jsp" target="_blank">교보문고</a></li>
      <li><a href="yes24.jsp" target="_blank">예스24</a></li>
      <li><a href="Aladdin.jsp" target="_blank">알라딘</a></li>
      <li><a href="interpark.jsp" target="_blank">인터파크도서</a></li>
  </ul>
   
  <img src="../images/책.jpg" style="margin-left: auto; margin-right: auto; display: block;">
</div>
<div id="footer">
  <a> 이용약관 </a> |
  <a> 개인정보처리방침 </a> |
  <a> 책임의 한계와 법적고지 </a> |
  <a> 출판사 제휴안내 </a> |
  <a> 도서관 안내 </a> |
  <a> 책 고객센터 </a>
    <p>본 컨텐츠의 저작권은 저자 또는 제공처에 있으며, 이를 무단 이용하는 경우 저작권법 등에 따라 법적책임을 질 수 있습니다</p><br>
    <h4>&copy;2020 bookstore  reserved</h4>
</div>
</body>
</html>