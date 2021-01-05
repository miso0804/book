<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
  margin: 0;
  padding: 0;
  display: flex;
  flex-flow: column nowrap;
  justify-content: center;
  align-items: center;
  overflow-x: hidden;  
} 
nav { 
  width: 100%;
  display: flex;
  justify-content: center;
  position: relative;
  background:linear-gradient(#0086b3,#ccf2ff);   /*메뉴바 색깔*/
}
ul, li {
  margin: 0;
  padding: 0;
  list-style: none;
}
#main-menu > li {
  float: left;
  position: relative;
}
#main-menu > li > a {
  font-size: 14px;
  /* color: rgba(255,255,255,0.85); */
  font-family: bold;
  text-align: center;
  text-decoration: none;
  display: block;
  padding: 14px 36px;
  border-right: 1px solid rgba(0,0,0,0.15); /*테두리 역할*/
}
#main-menu > li:nth-child(1) > a {
  border-left: 1px solid rgba(0,0,0,0.15); /*테두리 역할*/
}
#sub-menu {
  position: absolute;
  background: #A39DBF; 
  opacity: 0;
  visibility: hidden;
}
#sub-menu > li {
  padding: 16px 28px;
  border-bottom: 1px solid rgba(0,0,0,0.15); /*테두리 역할*/
}
#sub-menu > li >  a {
  color: rgba(255,255,255,0.6); /*장르 5가지 색깔들*/
  text-decoration: none;
}
#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}
#sub-menu > li >  a:hover { /*장르 5가지 마우스 올렸을 때 효과*/
 
 cursor: pointer;
}
</style>
</head>
<body>
<nav id="navigation">
  <ul id="main-menu">
    <li><a href="#">홈</a></li>
    <li><a href="#">드라마</a>
      <ul id="sub-menu" style="width: 115px;">
        <li><a href="#" class="subemenu">&nbsp;로맨스</a></li>
        <li><a href="#" class="subemenu">&nbsp;스릴러</a></li>
        <li><a href="#" class="subemenu">&nbsp;&nbsp;액션</a></li>
        <li><a href="#" class="subemenu">&nbsp;코미디</a></li>
        <li><a href="#" class="subemenu">&nbsp;&nbsp;&nbsp;&nbsp;SF</a></li>
      </ul>
    </li>
    <li><a href="#">영    화</a>
      <ul id="sub-menu" style="width: 105px;">
        <li><a href="#" class="subemenu">로맨스</a></li>
        <li><a href="#" class="subemenu">스릴러</a></li>
        <li><a href="#" class="subemenu">&nbsp;액션</a></li>
        <li><a href="#" class="subemenu">코미디</a></li>
        <li><a href="#" class="subemenu">&nbsp;&nbsp;SF</a></li>
      </ul>
    </li>
    <li><a href="#">요즘 대세 콘텐츠</a></li>
    <li><a href="#">내가 찜한 콘텐츠</a></li>
  </ul>
</nav>
</body>
</html> 