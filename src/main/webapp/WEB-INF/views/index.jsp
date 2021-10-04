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
								<input type="image" src="./resources/image/jeju_1100.jpg" class="j_img">
							</div>
							<div class="jeju_cont">
								<h4>대한민국의 가장 높은곳에서 즐기는 눈꽃여행</h4>
								<h2>겨울, 제주에 대하여</h2>
								<p>제주 하면 파란색이 떠오르신다면</p>
								<p>눈덮힌 한라산 1100 도로도 분명 좋아하실꺼에요.</p>
								<!-- <input class="jeju_li" type="text" placeholder="#이국적 #드라이브 #설경 #제주도 #1100고지" onclick="location='list?main_category=국내&pack_sub_cate=제주도';"> -->
								<div class="jeju_mimg">
									<input type="image" src="./resources/image/jeju_1101.jpg" class="j_imgr">	
									<p>[특가상품] 제주도 2/3일 <br>항공비 포함 169,000</p>
								</div>
							</div>
						</div>
					</div>
					<!-- 호버 이미지 -->
					<div class="img_box">
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