<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./resources/css/index.css?">
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="./jquery-ui-1.12.1/datepicker-ko.js"></script>
<script src="./resources/js/index.js"></script>

<script type="text/javascript">
	$(function() {
		$("#date1").datepicker();
	});
	$(function() {
		$("#date2").datepicker({
			showOn : "both",
			buttonImage : "images/calendar.gif",
			buttonImageOnly : true,
			buttonText : "Select date"
		});
		$(function() {
			$("#date3").datepicker({
				onSelect : function(dateText, inst) {
					console.log(dateText);
				}
			});
		});
	});
	
	//상단바
	$(function(){
		  $(".dep1 li").hover(function(){
		    $('ul:first',this).show();
		  }, function(){
		    $('ul:first',this).hide();
		  });
		  $(".dep1>li:has(ul)>a").each( function() {
		    $(this).html( $(this).html()+' &or;' );
		  });
		  $(".dep1 ul li:has(ul)")
		    .find("a:first")
		    .append("<p style='float:right;margin:-3px'>&#9656;</p>");
		});
</script>



</head>
<body>

	<div id="wrapper">
		<div id="wrap">
		<div id="header">
			<jsp:include page="header.jsp"/>
		</div>
<!-- 
			로그인 회원가입 고객센터
			<div id="member">
				<div class="mem">
					<ul class="mem_ul">
						<li><a href="/Project/login">로그인</a></li>
						<li><a href="/Project/login_mem">회원가입</a></li>
						<li><a href="#">고객센터</a></li>
					</ul>
				</div>
			</div>
			로그인 회원가입 고객센터 끝

			상단 로고 및 메뉴 부분
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
			</div> -->
			<!-- 로고 및 메뉴부분 끝 -->




			<!-- 상단 메뉴버튼부분 -->
			<div class="menu_button" style="clear: both;">
				<ul class="dep1">
					<li><a href="#">괌/사이판</a>
						<ul>
							<li><a href="#">괌</a></li>
							<li><a href="#">사이판</a></li>
							<li><a href="#">팔라우</a></li>
						</ul></li>
					<li><a href="#">하와이/미국/캐나다</a>
						<ul>
							<li><a href="#">하와이</a></li>
							<li><a href="#">미동부</a></li>
							<li><a href="#">중남미</a></li>
							<li><a href="#">하와이</a></li>
							<li><a href="#">미서부</a></li>
							<li><a href="#">캐나다</a></li>

						</ul></li>
					<li><a href="#">유럽</a>
						<ul>
							<li><a href="#">서유럽</a></li>
							<li><a href="#">동유럽</a></li>
							<li><a href="#">그리스</a></li>
							<li><a href="#">스페인</a></li>
							<li><a href="#">독일</a></li>
							<li><a href="#">영국</a></li>

						</ul></li>
					<li><a href="#">동남아</a>
						<ul>
							<li><a href="#">방콕</a></li>
							<li><a href="#">베트남</a></li>
							<li><a href="#">치앙마이</a></li>
							<li><a href="#">파타야</a></li>
							<li><a href="#">세부</a></li>
							<li><a href="#">마닐라</a></li>

						</ul></li>
					<li><a href="#">홍콩/마카오/대만</a>
						<ul>
							<li><a href="#">홍콩</a></li>
							<li><a href="#">마카오</a></li>
							<li><a href="#">대만</a></li>
						</ul></li>

					<li><a href="#">호주/뉴질랜드</a>
						<ul>
							<li><a href="#">호주</a></li>
							<li><a href="#">뉴질랜드</a></li>

						</ul></li>
					<li><a href="#">중앙아시아/몽골</a>
						<ul>
							<li><a href="#">중앙아시아</a></li>
							<li><a href="#">몽골</a></li>

						</ul></li>
					<li><a href="#">중국</a>
						<ul>
							<li><a href="#">북경</a></li>
							<li><a href="#">상해</a></li>
							<li><a href="#">심천</a></li>
							<li><a href="#">장춘</a></li>
							<li><a href="#">내몽골</a></li>
							<li><a href="#">하이난</a></li>

						</ul></li>
					<li><a href="#">국내</a>
						<ul>
							<li><a href="#">강원</a></li>
							<li><a href="#">충북</a></li>
							<li><a href="#">제주도</a></li>
							<li><a href="#">경북</a></li>
							<li><a href="#">전북</a></li>
							<li><a href="#">대전</a></li>

						</ul></li>
				</ul>
			</div>
			<!-- 상단 메뉴버튼부
				분 끝 -->


			<!-- 슬라이드 이미지 부분 -->
			<div class="section">
				<input type="radio" name="slide" id="slide01" checked> <input
					type="radio" name="slide" id="slide02"> <input type="radio"
					name="slide" id="slide03">

				<div class="slidewrap">
					<ul class="slidelist">
						<li><a> <img src="./resources/image/m4.jpg"></a></li>
						<li><a> <img src="./resources/image/m5.jpg"></a></li>
						<li><a> <img src="./resources/image/m6.jpg"></a></li>

						<div class="slide-control">
							<div class="control01">
								<label for="slide03" class="left"></label> <label for="slide02"
									class="right"></label>
							</div>
							<div class="control02">
								<label for="slide01" class="left"></label> <label for="slide03"
									class="right"></label>
							</div>
							<div class="control03">
								<label for="slide02" class="left"></label> <label for="slide01"
									class="right"></label>
							</div>
						</div>
				</div>
			</div>
			</ul>
			<!-- 슬라이드 이미지 부분 끝 -->
			<div class="middle" >
			 <form name="i" method="post">
				<div class="search_area">
					<div class="search_box">
						<p class="search_box_title">어디로 떠나고 싶으세요?</p>
						<div class="search_box_cont">
							<div class="item">
								<div class="in">
									<span class="item_title">여행지</span> <input id="city"
										name="city" type="text" class="search_city"
										placeholder="여행지를 입력해 주세요.">
									<button type="button" class="btn_city" onclick="search_city();">지역검색</button>
								</div>
							</div>
							<div class="item2">
								<div class="in2">
									<span class="cal_title">출발 예정일</span> <input type="text"
										class="cal_cont" name="date" id="date3" size="12" /> <input
										type="button" class="cal_button" value="달력"
										onclick="$('#date3').datepicker('show');" />
								</div>
							</div>
							<div class="item_bottom_cont">
								<button type="button" class="btn_search">검색하기</button>
							</div>
							<div class="search_box_bottom"></div>
						</div>
					</div>
				</div>
			</form>
			</div>
			<!--   wrap -->
		</div>
	</div>
	<div class="footer_box">
		<div id="footer">
		<jsp:include page="footer.jsp"/>
		</div>
	</div>
</body>