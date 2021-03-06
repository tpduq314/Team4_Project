<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<style>

/*가져온부분*/
.member{

}
.mem_ul{
	list-style:none;
	position:absolute;
	width:1200px;
	left:285px;
}
.mem_ul >li{
	height:48px;
	float:right;
	margin-right:20px;
}
.mem_ul >li >a{
	font-size: 12px;
    letter-spacing: -.3px;
}

a:link { color:black; text-decoration: none;}  
a:visited { color:black; text-decoration: none;} 
a:hover { color:black; text-decoration: none;}
a:active { color:black; text-decoration: none;}
 /* 여기까지가 로그인 회원가입 고객센터 */
 
 /*로고, 예약확인, 마이메뉴 부분*/
.mem_private{
	list-style:none;
	position:absolute;
	width:100%;
	left:1085px;
	top:10px;
}
.mem_private >li{
	width:50px;
}
.mem_private >li >a{
	font-size: 12px;
    letter-spacing: -.3px;
} 
.mem_private .mymenu{
	position:absolute;
	top:-10px;
	left:-40px;
}
.mem_private .reservation{
	position:absolute;
	left:25px;
	top:-12px;
}
.menu_bar{
	position:absolute;
	top:50px;
	left:285px;
}
/*메뉴버튼*/
.menu_button{
	width:100%;
	display: inline-block;
}

/*메가박스 하위 리스트*/
.dep1 {
	list-style:none;
	position:absolute;
	height:40px;
	width:1200px;
	left:260px;
	top:100px;
	color: black;
	
}

.dep1 li {
  float: left;
  list-style:none;
  position: relative;
  z-index: 10;
}
.dep1 li:hover { background: white; }
.dep1 li:hover>a { color: #6E85B2; }
.dep1 a {
  display: block;
  padding: 10px 20px;
  text-decoration: none;
}
.dep1 ul {
  background: white;
  border: 1px solid silver;
  display: none;
  padding: 0;
  position: absolute;
  left: 0;
  top: 100%;
  width: 150px;
}
.dep1 ul li { float: none; }
.dep1 ul li:hover { background: #ddd; }
.dep1 ul li:hover a { color: black; }
.dep1 ul a { color: black; }
.dep1 ul ul { left: 100%; top: 0; }
.menu_button .dep1 > li{
	background:white;
	font-size:15px;
}

/*로고, 예약확인, 마이메뉴 부분 끝*/
</style>
</head>
<body>

			<!-- 로그인 회원가입 고객센터 -->
			<div id="member">
				<div class="mem">
					<ul class="mem_ul">
						<li><a href="/Project/login">로그인</a></li>
						<li><a href="/Project/login_mem">회원가입</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
			<!-- 로그인 회원가입 고객센터 끝-->

			<!-- 상단 로고 및 메뉴 부분 -->
			<div class="menu_wrap" style="clear: both;">
				<div class="menu_bar">
					<h1 class="logo">
						<a href="#">logo</a>
					</h1>
					<div class="mem">
						<ul class="mem_private">
							<li class="mymenu"><img src="./resources/image/mymenu.png"
								align="top"> <br> <a href="/Project/customer_service">마이메뉴</a></li>
							<li class="reservation" ><img
								src="./resources/image/reservation.png" align="top"> <br>
								<a href="/Project/mypage">예약내역</a></li>
						</ul>
					</div>
				</div>
			</div>
		<!-- 	<div class="menu_button" style="clear: both;">
				<ul class="dep1">
					<li><a href="#">괌/사이판</a>
						<ul>
							<li><a href="/Project/list?main_category=괌/사이판&pack_sub_cate=괌">괌</a></li>
							<li><a href="/Project/list?main_category=괌/사이판&pack_sub_cate=사이판">사이판</a></li>
							<li><a href="/Project/list?main_category=괌/사이판&pack_sub_cate=팔라우">팔라우</a></li>
						</ul></li>
					<li><a href="#">하와이/미국/캐나다</a>
						<ul>
							<li><a href="/Project/list?main_category=하와이/미국/캐나다&pack_sub_cate=하와이">하와이</a></li>
							<li><a href="/Project/list?main_category=하와이/미국/캐나다&pack_sub_cate=미동부">미동부</a></li>
							<li><a href="/Project/list?main_category=하와이/미국/캐나다&pack_sub_cate=중남미">중남미</a></li>
							<li><a href="/Project/list?main_category=하와이/미국/캐나다&pack_sub_cate=미서부">미서부</a></li>
							<li><a href="/Project/list?main_category=하와이/미국/캐나다&pack_sub_cate=캐나다">캐나다</a></li>

						</ul></li>
					<li><a href="#">유럽</a>
						<ul>
							<li><a href="/Project/list?main_category=유럽&pack_sub_cate=유럽">서유럽</a></li>
							<li><a href="/Project/list?main_category=유럽&pack_sub_cate=동유럽">동유럽</a></li>
							<li><a href="/Project/list?main_category=유럽&pack_sub_cate=그리스">그리스</a></li>
							<li><a href="/Project/list?main_category=유럽&pack_sub_cate=스페인">스페인</a></li>
							<li><a href="/Project/list?main_category=유럽&pack_sub_cate=독일">독일</a></li>
							<li><a href="/Project/list?main_category=유럽&pack_sub_cate=영국">영국</a></li>

						</ul></li>
					<li><a href="#">동남아</a>
						<ul>
							<li><a href="/Project/list?main_category=동남아&pack_sub_cate=방콕">방콕</a></li>
							<li><a href="/Project/list?main_category=동남아&pack_sub_cate=베트남">베트남</a></li>
							<li><a href="/Project/list?main_category=동남아&pack_sub_cate=치앙마이">치앙마이</a></li>
							<li><a href="/Project/list?main_category=동남아&pack_sub_cate=파타야">파타야</a></li>
							<li><a href="/Project/list?main_category=동남아&pack_sub_cate=세부">세부</a></li>
							<li><a href="/Project/list?main_category=동남아&pack_sub_cate=마닐라">마닐라</a></li>

						</ul></li>
					<li><a href="#">홍콩/마카오/대만</a>
						<ul>
							<li><a href="/Project/list?main_category=홍콩/마카오/대만&pack_sub_cate=홍콩">홍콩</a></li>
							<li><a href="/Project/list?main_category=홍콩/마카오/대만&pack_sub_cate=마카오">마카오</a></li>
							<li><a href="/Project/list?main_category=홍콩/마카오/대만&pack_sub_cate=대만">대만</a></li>
						</ul></li>

					<li><a href="#">호주/뉴질랜드</a>
						<ul>
							<li><a href="/Project/list?main_category=호주/뉴질랜드&pack_sub_cate=호주">호주</a></li>
							<li><a href="/Project/list?main_category=호주/뉴질랜드&pack_sub_cate=뉴질랜드">뉴질랜드</a></li>

						</ul></li>
					<li><a href="#">중앙아시아/몽골</a>
						<ul>
							<li><a href="/Project/list?main_category=중앙아시아/몽골&pack_sub_cate=중앙아시아">중앙아시아</a></li>
							<li><a href="/Project/list?main_category=중앙아시아/몽골&pack_sub_cate=몽골">몽골</a></li>

						</ul></li>
					<li><a href="#">중국</a>
						<ul>
							<li><a href="/Project/list?main_category=중국&pack_sub_cate=북경">북경</a></li>
							<li><a href="/Project/list?main_category=중국&pack_sub_cate=상해">상해</a></li>
							<li><a href="/Project/list?main_category=중국&pack_sub_cate=심천">심천</a></li>
							<li><a href="/Project/list?main_category=중국&pack_sub_cate=장춘">장춘</a></li>
							<li><a href="/Project/list?main_category=중국&pack_sub_cate=내몽골">내몽골</a></li>
							<li><a href="/Project/list?main_category=중국&pack_sub_cate=하이난">하이난</a></li>

						</ul></li>
					<li><a href="#">국내</a>
						<ul>
							<li><a href="/Project/list?main_category=국내&pack_sub_cate=강원">강원</a></li>
							<li><a href="/Project/list?main_category=국내&pack_sub_cate=충북">충북</a></li>
							<li><a href="/Project/list?main_category=국내&pack_sub_cate=제주도">제주도</a></li>
							<li><a href="/Project/list?main_category=국내&pack_sub_cate=경북">경북</a></li>
							<li><a href="/Project/list?main_category=국내&pack_sub_cate=전북">전북</a></li>
							<li><a href="/Project/list?main_category=국내&pack_sub_cate=대전">대전</a></li>

						</ul></li>
				</ul>
			</div> -->
</body>
</html>