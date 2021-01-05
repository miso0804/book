<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp" %>
<script src="../include/jquery-3.5.1.min.js"></script>
<style type="text/css">
#side-bar{
    text-align: right;
}
#side-bar a:hover{color: #ffc045;}
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
#content{
    background-color: #ece8e4;
}
#footer{
    text-align: center;
    background-color: rgb(135, 164, 176);
}
p{font-weight: bold;}
</style>
</head>
<body>
<div id="book1"><a href="main_1.jsp">bookstore</a></div>
<h2 style="text-align:center;">인터파크도서</h2>
  <div id="side-bar">
    <a href="myLogin.jsp" onMouseOver='this.innerHTML="로그인"' onMouseOut='this.innerHTML="LOGIN"'>로그인</a>
    <a href="myJoin.jsp" onMouseOver='this.innerHTML="회원가입"' onMouseOut='this.innerHTML="JOIN"'>회원가입</a>
    <a href="list.jsp" onMouseOver='this.innerHTML="고객센터"' onMouseOut='this.innerHTML="NOTICE"'>고객센터</a>
  </div>
<hr>
<div id="content">
<table border="1" style="margin-left: auto; margin-right: auto;">
  <tr>
    <td><img src="../images/달러구트.jpg"></td>
    <td><img src="../images/트렌드.jpg"></td>
    <td><img src="../images/금융.jpg"></td>
    <td><img src="../images/흔한남매.jpg" height="295"></td>
    <td><img src="../images/킹세종.jpg" height="295"></td>
  </tr>
  <tr>
    <td align="center"> 저 자 : 이미예 </td>
    <td align="center"> 저 자 : 김난도 </td>
    <td align="center"> 저 자 : 존 리 </td>
    <td align="center"> 저 자 : 김난도 </td>
    <td align="center"> 저 자 : 조 메노스키 </td>
  </tr>
  <tr>
    <td align="center"> 평 점 :★★★★☆  </td>
    <td align="center"> 평 점 :☆☆☆☆☆ </td>
    <td align="center"> 평 점 :★★★★★ </td>
    <td align="center"> 평 점 :☆☆☆☆☆ </td>
    <td align="center"> 평 점 :★★★★★</td>
  </tr>
  <tr>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
</table>
<table border="1" style="margin-left: auto; margin-right: auto;">
  <tr>
    <td><img src="../images/한국사.jpg" height="295"></td>
    <td><img src="../images/어떻게.jpg"></td>
    <td><img src="../images/돈의속성.jpg" height="295"></td>
    <td><img src="../images/나의 하루.jpg"></td>
    <td><img src="../images/마음.jpg" width="198" height="297"></td>
  </tr>
  <tr>
    <td align="center"> 저 자 : 설민석 </td>
    <td align="center"> 저 자 : 오은영 </td>
    <td align="center"> 저 자 : 김승호 </td>
    <td align="center"> 저 자 : 김유진 </td>
    <td align="center"> 저 자 : 류시화 </td>
  </tr>
  <tr>
    <td align="center"> 평 점 : ☆☆☆☆☆ </td>
    <td align="center"> 평 점 : ☆☆☆☆☆</td>
    <td align="center"> 평 점 : ★★★★☆ </td>
    <td align="center"> 평 점 : ★★★★★  </td>
    <td align="center"> 평 점 : ★★★★★ </td>
  </tr>
  <tr>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
    <td align="center"><input type="button" value="미리보기">&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" value="구매하기"></td>
</table>
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