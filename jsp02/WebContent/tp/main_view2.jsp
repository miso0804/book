<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 전체 컨텐츠 기본 설정 */
body {
	margin: 0;
	padding: 0;
	color: white;
	/* display: flex;*/
    flex-flow: column nowrap; 
    justify-content: center; 
    align-items: center; 
    overflow-x: hidden;
}

#head_wrap {
	width: 100%;
	height: auto;
}

#head_wrap h1 {
	display: inline-block;
}

#head_wrap ul {
	display: inline-block;
	float: right;
}

#head_wrap li {
	list-style-type: none;
}

#cont_t_wrap {
	width: 100%;
	height: 500px;
	background-color: gray;
}

#cont_m_wrap { /*밑에칸*/
	width: 100%;
	height: auto;
	background-color: #ffeecc; 
}
#navigation { 
  width: 100%;
  display: flex;
  justify-content: center;
  position: relative;
  background: #9F81F7;
}
#main-menu, #sub-menu{
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
  color: rgba(255,255,255,0.85);
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
  background: #A39DBF ;
  opacity: 0;
  visibility: hidden;
}
#sub-menu > li {
  padding: 16px 28px;
  border-bottom: 1px solid rgba(0,0,0,0.15); /*테두리 역할*/
}
#sub-menu > li >  a {
  color: rgba(255,255,255,0.6);
  text-decoration: none;
}
#main-menu > li:hover #sub-menu {
  opacity: 1;
  visibility: visible;
}
#sub-menu > li >  a:hover {
 
}
#box-content{
  text-align: center;
}
.box{
  display: inline-block;
  vertical-align: middle;
  padding: 10px 20px;
  margin-top: 20px;
  margin-left: 20px;
  width: 300px;
  height: 450px;
}
</style>
</head>
<body>
	<div id="wrap">
		<div id="head_wrap">
			<nav style="background-color: black;">
				<h1>&nbsp;w a f f l e</h1>
				<ul>
					<li>로그아웃</li>
				</ul>
			</nav>
		</div>
		<div id="cont_wrap">
			<div id="cont_t_wrap"></div>
			<div id="cont_m_wrap">
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
							</ul></li>
						<li><a href="#">영 화</a>
							<ul id="sub-menu" style="width: 105.5px;">
								<li><a href="#" class="subemenu">로맨스</a></li>
								<li><a href="#" class="subemenu">스릴러</a></li>
								<li><a href="#" class="subemenu">&nbsp;액션</a></li>
								<li><a href="#" class="subemenu">코미디</a></li>
								<li><a href="#" class="subemenu">&nbsp;&nbsp;&nbsp;SF</a></li>
							</ul></li>
						<li><a href="#">요즘 대세 콘텐츠</a></li>
						<li><a href="#">내가 찜한 콘텐츠</a></li>
					</ul>
				</nav>
				<div id="box-content">
				  <div class="box"><img src="../images/또 오해영.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/연애의 발견.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/이번생은 처음이라.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/괜찮아 사랑이야.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/눈이 부시게.jpg" width="300px" height="450px"></div>
				</div>
				<div id="box-content">
				  <div class="box"><img src="../images/동백꽃 필 무렵.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/사랑의 불시착.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/오 나의 귀신님.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/굿플레이스.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/김과장.jpg" width="300px" height="450px"></div>
				</div>
				<div id="box-content">
				  <div class="box"><img src="../images/멜로가 체질.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/모던패밀리.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/열혈사제.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/프렌즈.jpg" width="300px" height="450px"></div>
				  <div class="box"><img src="../images/하자있는 인간들.jpg" width="300px" height="450px"></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>