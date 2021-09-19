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
	left:1115px;
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
</body>
</html>