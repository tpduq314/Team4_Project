<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>패키지</title>
<link rel="stylesheet" href="./resources/css/index.css?"/>
</head>
<body>
<section>
    <nav id = "con">
     <div id="logo">로고자리</div>
     <ul>
       <li><a>로그인</a></li>
       <li><a>회원가입</a></li>
       <li><a>예약조회</a></li>
       <li><a href="#">인기상품</a></li>
     </ul>
    </nav>
     <hr/>
<div class="main" style="margin:0;">
	<div class="city">여행지 및 국가</div>
	<div class="cout">출국날짜</div>
	<div class="cin">입국날짜</div>
	<div class="p">인원선택</div>
	<div class="button">
	<input type="button" id="button2" value="검색">
	</div>
	<div class="city2"><input type="text" class="text" placeholder="어느 도시로 갈까요?">
	<!-- <div class="cbox">
		<div class="menu_wrap">
		<ul class="dep1">
		 <li>
			<a href="#">한국</a>
			<ul class="dep2">
				<li><a href="#">한국의 여행지 1</a></li>
				<li><a href="#">한국의 여행지 2</a></li>
				<li><a href="#">한국의 여행지 3</a></li>
			</ul>
		 </li>
		 <li>
			<a href="#">북미</a>
			<ul class="dep2">
				<li><a href="#">북미의 여행지 1</a></li>
				<li><a href="#">북미의 여행지 2</a></li>
				<li><a href="#">북미의 여행지 3</a></li>
			</ul>
		 </li>
		 <li>
			<a href="#">남미</a>
			<ul class="dep2">
				<li><a href="#">남미의 여행지 1</a></li>
				<li><a href="#">남미의 여행지 2</a></li>
				<li><a href="#">남미의 여행지 3</a></li>
			</ul>
		 </li>
		 <li>
			<a href="#">유럽</a>
			<ul class="dep2">
				<li><a href="#">유럽의 여행지 1</a></li>
				<li><a href="#">유럽의 여행지 2</a></li>
				<li><a href="#">유럽의 여행지 3</a></li>
			</ul>
		 </li>
		</ul>
	</div>
	</div> -->
	</div>
	<div class="cal">캘린더 이미지 자리</div>
	<div class="p2">인원선택 버튼</div>
</div>
<div class="section">
  <input type="radio" name="slide" id="slide01" checked>
  <input type="radio" name="slide" id="slide02">
  <input type="radio" name="slide" id="slide03">
 
  <div class="slidewrap">
   <ul class="slidelist">
    <li>
     <a>
      <img src="./resources/image/m4.jpg">
     </a>
    </li>
    <li>
     <a>
      <img src="./resources/image/m5.jpg">
     </a>
    </li>
    <li>
     <a>
      <img src="./resources/image/m6.jpg">
     </a>
    </li>
   
    <div class="slide-control">
      <div class="control01">
       <label for="slide03" class="left"></label>
       <label for="slide02" class="right"></label>
    </div>
      <div class="control02">
       <label for="slide01" class="left"></label>
       <label for="slide03" class="right"></label>
      </div>
      <div class="control03">
       <label for="slide02" class="left"></label>
       <label for="slide01" class="right"></label>
      </div>
    </div>
   </ul>
   
<div class="arrow-down" style = "text-align:center">
    <span></span>
    <span></span>
    <span></span>
</div>
<div>
 <a> 
 <img src="./resources/image/m7.jpg">
 </a>
</div>
	</div>
 </div>
 </section>
</body>
</html>