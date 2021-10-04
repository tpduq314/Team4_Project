<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" href="./resources/css/index.css?">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
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
				dateFormat: 'yy.mm.dd',
				onSelect : function(dateText, inst) {
					console.log(dateText);
				}
			});
		});
	});

	//상단바
	/* 	$(function(){
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
	 }); */

	//유효성 검사	  
	function check() {

		var pack_sub_cate = document.getElementById("pack_sub_cate");
		var date = document.getElementById("date3");

		if (pack_sub_cate.value.length == 0) {
			alert("지역을 입력해주세요");
			pack_sub_cate.focus();
			return false;
		}

		if (date.value.length == 0) {
			alert("날짜를 입력해주세요");
			date.focus();
			return false;
		}

	}
</script>

</head>
<body>

	<div id="wrapper">
		<div id="wrap">

			<div class="header">
				<jsp:include page="header2.jsp" />
			</div>


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
			<div class="middle">
				<form method="get" action="list" onsubmit="return check();">
					<div class="search_area">
						<div class="search_box">
							<p class="search_box_title">어디로 떠나고 싶으세요?</p>
							<div class="search_box_cont">
								<div class="item">
									<div class="in">
										<span class="item_title">여행지</span> <input id="pack_sub_cate"
											name="pack_sub_cate" type="text" class="search_city"
											placeholder="여행지를 입력해 주세요.">
										<button type="button" class="btn_city"
											onclick="search_city();">지역검색</button>
									</div>
								</div>
								<div class="item2">
									<div class="in2">
										<span class="cal_title">출발 예정일</span> <input type="text"
											class="cal_cont" name="pack_start_date" id="date3" size="12" /> <input
											type="button" class="cal_button" value="" 
											 onclick="$('#date3').datepicker('show');" />
									</div>
								</div>
								<div class="item_bottom_cont">
									<button type="submit" class="btn_search" >검색하기</button>
								</div>
								<div class="search_box_bottom"></div>
							</div>
						</div>
					</div>
					<div class="jeju_box">
						<div class="jeju_section">
							<div class="jeju_img">
								<img src="./resources/image/jeju_1100.jpg" class="j_img">
							</div>
							<div class="jeju_cont">
								<h4>대한민국의 가장 높은곳에서 즐기는 눈꽃여행</h4>
								<h2>겨울, 제주에 대하여</h2>
								<p>제주 하면 파란색이 떠오르신다면</p>
								<p>눈덮힌 한라산 1100 도로도 분명 좋아하실꺼에요.</p>
								<!-- <input class="jeju_li" type="text" placeholder="#이국적 #드라이브 #설경 #제주도 #1100고지" onclick="location='list?main_category=국내&pack_sub_cate=제주도';"> -->
								<div class="jeju_mimg">
									<img src="./resources/image/jeju_1101.jpg" class="j_imgr">	
									<p>[특가상품] 제주도 2/3일 <br>항공비 포함 169,000</p>
								</div>
							</div>
						</div>
					</div>
					<div style="position:relative; top:1200px; width:100%;height:450px; background-color:white;">
						<h2 style="position:absolute; top:50px; left:270px; font-color:black;" >내나라 구석구석</h2>
							<div style="position:absolute; top:170px; left:270px; width:1500px; height:400px;margin-top:0px">
								<ul style="list-style:none; float:left;">
									<li style="list-style:none; text-align: center; vertical-align: middle; display:inline-block;
									width: 190px; height:190px; position: relative; margin-left:30px;">
										<a href="#">
											<span class="simg">
												<img src="https://image.hanatour.com/usr/cms/resize/250_0/2021/05/14/10000/9b785089-e508-47d4-9b1f-adeb8605b305.jpg"
												style="border-radius:50%; max-width:100%; max-height:100%; display:block; vertical-align:top; width: 190px; height:190px;">
											<p style="margin-top:10px;font-size:17px; font-weight:600;">강릉</p>
											<p style="margin-top:10px;font-size: 13px; color: #666; line-height: 18px;">놀킷 먹킷 넘치는 핫한 강릉
											<br>
											가족도 청춘도 환영합니다
											</p>
											</span>
										</a>
									</li>
									<li style="list-style:none; text-align: center; vertical-align: middle; display:inline-block;
									width: 190px; height:190px; position: relative; margin-left:30px;">
										<a href="#">
											<span class="simg">
												<img src="https://image.hanatour.com/usr/cms/resize/250_0/2020/12/02/20000/e5e869d0-0683-4ded-9825-ad9cfece75ea.jpg"
												style="border-radius:50%; max-width:100%; max-height:100%; display:block; vertical-align:top; width: 190px; height:190px;">
											<p style="margin-top:10px;font-size:17px; font-weight:600;">여수</p>
											<p style="margin-top:10px;font-size: 13px; color: #666; line-height: 18px;">너와 함께 걷고싶은 여수는
											<br>
											낮에도 빛나고 있어요
											</p>
											</span>
										</a>
									</li>
									<li style="list-style:none; text-align: center; vertical-align: middle; display:inline-block;
									width: 320px; height:320px; position: relative; margin-left:30px;">
										<a href="#">
											<span class="simg">
												<img src="https://image.hanatour.com/usr/cms/resize/400_0/2020/12/02/80000/5b695f92-eb04-4d44-b349-5abbe00fce4a.bmp"
												style="border-radius:50%; max-width:100%; max-height:100%; display:block; vertical-align:top; width: 320px; height:320px;">
											<p style="margin-top:10px;font-size:26px; font-weight:600;">부산</p>
											<p style="margin-top:10px;font-size: 14px; color: #666; line-height: 24px;">낭만적인 해변열차 타고
											<br>
											부산 한 바퀴!
											</p>
											<span class="value" style= "width: 50px; height: 50px; border-radius: 50%; text-align: center; line-height: 48px; 
											color: #fff; background-color: #e5236d; font-size: 12px; position: absolute; top: 21px; right: 33px;">추천</span>
											</span>
										</a>
									</li>
									<li style="list-style:none; text-align: center; vertical-align: middle; display:inline-block;
									width: 190px; height:190px; position: relative; margin-left:30px;">
										<a href="#">
											<span class="simg">
												<img src="https://image.hanatour.com/usr/cms/resize/250_0/2021/04/28/10000/254938f6-677b-4d6b-bc0f-7e2f875037f5.jpg"
												style="border-radius:50%; max-width:100%; max-height:100%; display:block; vertical-align:top; width: 190px; height:190px;">
											<p style="margin-top:10px;font-size:17px; font-weight:600;">제주</p>
											<p style="margin-top:10px;font-size: 13px; color: #666; line-height: 18px;">꽃향기 가득한 제주
											<br>
											놀멍쉬멍, 혼저옵서예
											</p>
											</span>
										</a>
									</li>
									<li style="list-style:none; text-align: center; vertical-align: middle; display:inline-block;
									width: 190px; height:190px; position: relative; margin-left:30px;">
										<a href="#">
											<span class="simg">
												<img src="https://image.hanatour.com/usr/cms/resize/250_0/2021/03/31/10000/ccf682c9-96ac-45f9-96de-15848181e0d9.jpg"
												style="border-radius:50%; max-width:100%; max-height:100%; display:block; vertical-align:top; width: 190px; height:190px;">
											<p style="margin-top:10px;font-size:17px; font-weight:600;">경주</p>
											<p style="margin-top:10px;font-size: 13px; color: #666; line-height: 18px;">발길 닿는 곳마다 유적지!
											<br>
											경주는 지금 가면 딱 좋아요
											</p>
											</span>
										</a>
									</li>
								</ul>
							</div>
					</div>
					<!-- 호버 이미지 -->
					<!-- <div class="img_box">
					<section class="img_wrapper">
						<h1>코로나 안전 여행지</h1>
						<figure>
							<img src="./resources/image/index_city.jpg" alt="">
							<figcaption>
								<h2 class="title">여행지 이름</h2>
								<p class="con">여행지 내용</p>
							</figcaption>
						</figure>
					</section>
					</div> -->
				<!-- 인생은 한번쯤 -->
					<div
						style="position: relative; top: 1450px; width: 100%; height: 750px; background-size: 100% 100%; background-image: url(https://image.hanatour.com/usr/cms/resize/800_0/2016/09/23/10000/2859c53d-ed13-4c89-80a1-a9999571db72.jpg);">

						<h2
							style="position: absolute; top: 120px; left: 270px; color: white">인생에
							한번쯤!</h2>
						<div
							style="position: absolute; top: 170px; left: 270px; width: 70%; height: 500px;">
							<div
								style="float: left; background-color: white; width: 37%; height: 500px;">
								<!--  style="position:relative; top: 50px; left: 30px;" width="360px" height="210px;"-->
								<h5
									style="color: black; position: relative; top: 30px; left: 30px;">동영상</h5>
								<iframe style="position:relative; top: 50px; left: 30px;" width="360px" height="210px;"
									src="https://www.youtube.com/embed/_qHjLngt7OI?controls=0"
									title="YouTube video player" frameborder="0"
									allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
									allowfullscreen></iframe>
								<h3
									style="color: black; position: relative; top: 80px; left: 30px;">
									버킷리스트 인생여행, 미서부</h3>
								<p
									style="color: gray; position: relative; top: 100px; left: 30px; font-size: 14px; font-weight: 600;">
									열망의 목적지 그랜드캐년에서의 기차탑승<br>모뉴먼트 밸리를 지나 헐리우드의 도시 LA까지!<br>미서부
									5대 캐년 탐험 시작 <br>
									<br>[베스트셀러] 미서부 5대 캐년 10일>
								</p>
							</div>
							<div
								style="float: left; background-size: 100% 100%; background-image: url(https://image.hanatour.com/usr/cms/resize/800_0/2021/04/20/10000/1cde3643-0462-4da2-b01d-1f53e111fcf8.jpg); width: 37%; height: 500px;">
								<h5
									style="color: white; position: relative; top: 30px; left: 30px;">Get
									About</h5>
								<h3
									style="color: white; position: relative; top: 270px; left: 30px;">
									뉴욕에서 꼭 해봐야하는 11가지</h3>
								<p
									style="color: white; position: relative; top: 290px; left: 30px; font-size: 14px; font-weight: 600;">
									요즘 여행러들이 즐기는 뉴욕 여행의 즐길거리<br>뉴요커처럼 즐겨보는 뉴욕여행<br>이거
									해봤다면 뉴욕 제대로 즐겼다고 할수있지~<br>
									<br>[한도시 깊게보기] 뉴욕 6일>
								</p>
							</div>
							<div
								style="float: left; background-color: white; width: 26%; height: 500px;">
								<h5
									style="color: black; position: relative; top: 30px; left: 30px;">여행정보</h5>
								<div
									style="background: black; position: relative; top: 50px; left: 50px; width: 200px; height: 200px; border-radius: 400px; background-size: 100% 100%; background-image: url(https://image.hanatour.com/usr/cms/resize/800_0/2016/05/11/10000/1e664552-13a2-4834-a8cf-c890051016af.jpg);"></div>
								<h3
									style="color: black; position: relative; top: 80px; left: 30px;">
									캐나다, 오로라 여행</h3>
								<p
									style="color: gray; position: relative; top: 100px; left: 30px; font-size: 14px; font-weight: 600;">
									쉽게 허락되지 않는 오로라 관찰<br>캐나다 옐로나이프에서<br>오로라 만나는 3가지 방법<br>
									<br>미주 버킷여행 자세히 보기>
								</p>
							</div>
						</div>
				</form>
			</div>

			<!--   wrap -->
		</div>
	</div>
	<div class="footer_box">
		<div id="footer">
			<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>