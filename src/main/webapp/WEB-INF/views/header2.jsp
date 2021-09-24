<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> </title>
<style>
.member{
	height:200px;
	display:block;
	position:absolute;
	top: 0;
    left: 0;
    z-index: 10;
}
.logo_bar{
	
	height:50px;
	float:left;
}
.mem{
	float:right;
}
.mem_ul >li{
	height:20px;
	float:right;
	margin-right:20px;
}
.mem_sub{
	float:right;
	position:relative;
	right:-150px;
	width:100px;
	height:50px;
}
.mem_private{
	position:relative;
	list-style:none;
	float:left;
}
.mem_private .mymenu{
	position:relative;
	top:38px;
	left:-30px;
}
.mem_private .reservation{
	position:relative;
	top:-21px;
	left:45px;

}
.mem_private >li >a{
	font-size: 12px;
    letter-spacing: -.3px;
} 
a:link { color:black; text-decoration: none;}  
a:visited { color:black; text-decoration: none;} 
a:hover { color:black; text-decoration: none;}
a:active { color:black; text-decoration: none;}
.mem_ul{
	list-style:none;
}
.mem_ul >li{
	float:right;
}
.mem_ul >li >a{
	font-size: 12px;
    letter-spacing: -.3px;
}


</style>
</head>
<body>

			<!-- 로그인 회원가입 고객센터 -->
			<div id="member">
				<div class="logo_bar">
					<h2 class="logo">
						<a href="#">logo</a>
					</h2>
				</div>
					<div class="mem">
						<ul class="mem_ul">
							<li><a href="/Project/login">로그인</a></li>
							<li><a href="/Project/login_mem">회원가입</a></li>
							<li><a href="#">고객센터</a></li>
						</ul>
					</div>
					<div class="mem_sub">
						<ul class="mem_private">
							<li class="mymenu"><img src="./resources/image/mymenu.png"
								align="top"> <br> <a href="/Project/customer_service">마이메뉴</a></li>
							<li class="reservation" ><img
								src="./resources/image/reservation.png"> <br>
								<a href="/Project/mypage">예약내역</a></li>
						</ul>
					</div>
			</div>
			<!-- 로그인 회원가입 고객센터 끝-->
		

</body>
</html>