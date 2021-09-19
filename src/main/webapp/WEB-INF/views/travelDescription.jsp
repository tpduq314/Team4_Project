<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Group Project</title>

<link rel="stylesheet" type="text/css"
	href="./resources/css/travelDescription.css" />


<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>


<script>
	function fnMove(seq) {
		var offset = $("#div" + seq).offset();
		$('html, body').animate({
			scrollTop : (offset.top - 120)
		}, 400);
	} //상단 5개버튼 중 하나 클릭하면 해당 div로 이동

	var slideIndex = 1;

	$(document).ready(function() {
		showSlides(slideIndex);
		//schedule_btn('hm01');
		//schedule_btn2('lt01');

		//시작할 때 모든 가격에 콤마 붙임
		document.getElementById("price01").innerHTML=document.getElementById("price01").innerHTML.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		document.getElementById("price02").innerHTML=document.getElementById("price02").innerHTML.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		document.getElementById("price03").innerHTML=document.getElementById("price03").innerHTML.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

		document.getElementById("pack_price01").innerHTML=document.getElementById("pack_price01").innerHTML.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		document.getElementById("pack_price02").innerHTML=document.getElementById("pack_price02").innerHTML.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		document.getElementById("pack_price03").innerHTML=document.getElementById("pack_price03").innerHTML.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

	}); //시작하면 바로 보이게 하는 슬라이드 

	function plusSlides(n) {
		showSlides(slideIndex += n);
	}// 왼쪽 오른쪽에 위치한 화살표 버튼을 누르면 슬라이드가 보이는 기능 

	function currentSlide(n) {
		showSlides(slideIndex = n);
	} //아래 dot을 누르면 슬라이드가 변경되는 기능

	function showSlides(n) {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		var dots = document.getElementsByClassName("dot");
		if (n > slides.length) {
			slideIndex = 1
		}
		if (n < 1) {
			slideIndex = slides.length
		}
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		for (i = 0; i < dots.length; i++) {
			dots[i].className = dots[i].className.replace(" active", "");
		}
		slides[slideIndex - 1].style.display = "block";
		dots[slideIndex - 1].className += " active";

	}
	//https://kutar37.tistory.com/entry/%EC%8A%AC%EB%9D%BC%EC%9D%B4%EB%93%9C%EC%87%BC-%EA%B5%AC%ED%98%84-cssjavascriptjquery
	//n번째 슬라이드로 이동하기 위해서 나머지 슬라이드는 none으로 지정하고 n번째 슬라이드는 block으로 보여지게 됨.

	function schedule_btn(e) {

		var hi_middle = document.getElementsByClassName('hi_middle')
		var hi_bottom = document.getElementsByClassName('hi_bottom')
		for (var i = 0; i < hi_middle.length; i++) {
			if (e == hi_middle[i].id) {
				hi_middle[i].style.display = "block";
				hi_bottom[i].style.display = "block";
			} else {
				hi_middle[i].style.display = "none";
				hi_bottom[i].style.display = "none";
			}

		}
	}
	//호텔 이름을 클릭하면 해당 호텔에 대한 설명이 나타남.

	function schedule_btn2(e) {

		var ld_detail_top = document.getElementsByClassName('ld_detail_top')
		var ld_detail_bottom = document
				.getElementsByClassName('ld_detail_bottom')
		for (var i = 0; i < ld_detail_top.length; i++) {
			if (e == ld_detail_top[i].id) {
				ld_detail_top[i].style.display = "block";
				ld_detail_bottom[i].style.display = "block";
			} else {
				ld_detail_top[i].style.display = "none";
				ld_detail_bottom[i].style.display = "none";
			}

		}
	}

	function calc(){
		
		var cnt01=document.getElementById("cnt01").value;
		var cnt02=document.getElementById("cnt02").value;
		var cnt03=document.getElementById("cnt03").value;
		
		//콤마 제거
		var pack_price01=document.getElementById("pack_price01").innerHTML.toString().replace(/[^\d]+/g, "");
		var pack_price02=document.getElementById("pack_price02").innerHTML.toString().replace(/[^\d]+/g, "");
		var pack_price03=document.getElementById("pack_price03").innerHTML.toString().replace(/[^\d]+/g, "");
		
		//정수 전환
		cnt01=parseInt(cnt01);
		cnt02=parseInt(cnt02);
		cnt03=parseInt(cnt03);
		
		pack_price01=parseInt(pack_price01);
		pack_price02=parseInt(pack_price02);
		pack_price03=parseInt(pack_price03);
		
		//총 가격에 콤마 붙임
		var totalPrice=cnt01*pack_price01+cnt02*pack_price02+cnt03*pack_price03;
		totalPrice=totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
		
		document.getElementById("totalPrice").innerHTML=totalPrice;
	}
	
	
</script>
<body>
	<div id="travel_description">
		<div id="header">
			<jsp:include page="header2.jsp" />
		</div>
		<!-- 여행지 이름, 상품코드, 카테고리 부분 -->
		<div id="des_top">
			<div id="category">
				<h1 id="txt_category">홈>해외패키지>${p.pack_main_cate}>${p.pack_sub_cate}</h1>
			</div>
			<div id="product_name">
				<h1 id="txt_product_name">${p.pack_name}</h1>
			</div>
			<div id="product_code">
				<div id="span_product_code">상품코드</div>
				<div id="txt_product_code">${p.pack_code}</div>
			</div>
		</div>

		<!-- 왼쪽 화면  -->
		<div id="main_description">

			<!-- 슬라이드 이미지 -->
			<div class="slideshow-container">
				<div class="mySlides fade">
					<img src="${p.pack_pic02}" height="400"
						style="border-radius: 10px; width: 100%;">
				</div>
				<div class="mySlides fade">
					<img src="${p.pack_pic03}" height="400"
						style="border-radius: 10px; width: 100%;">
				</div>
				<div class="mySlides fade">
					<img src="${p.pack_pic04}" height="400"
						style="border-radius: 10px; width: 100%;">
				</div>

				<a class="prev" onclick="plusSlides(-1)">&#10094;</a> <a
					class="next" onclick="plusSlides(1)">&#10095;</a>

			</div>

			<br>

			<div style="text-align: center">
				<span class="dot" onclick="currentSlide(1)"></span> <span
					class="dot" onclick="currentSlide(2)"></span> <span class="dot"
					onclick="currentSlide(3)"></span>
			</div>


			<!-- 상단 고정 바 -->
			<div id="choose_block">
				<div class="des_block" onclick="fnMove('1')">주요일정</div>
				<div class="des_block" onclick="fnMove('2')">포함/불포함</div>
				<div class="des_block" onclick="fnMove('3')">여행 상세정보</div>
				<div class="des_block" onclick="fnMove('4')">기타</div>
				<div class="des_block" onclick="fnMove('5')">여행후기</div>
			</div>

			<!-- 여행 주요일정 -->
			<div class="main_schedule" id="div1">
				여행 주요 일정
				<table id="table_schedule">
					<tr>
						<td rowspan="3" class="sc_cate" style="padding-bottom: 30px;">일정</td>
						<td class="sc_opt" height="20px" style="padding-top: 10px;">4박
							5일</td>
					</tr>
					<tr>
						<td class="sc_opt" height="20px">출발 : 2021.09.18(토) 10:50
							2021.09.18(토) 16:00 KE9643총 06시간 10분 소요</td>
					</tr>
					<tr>
						<td class="sc_opt" height="20px">도착 : 2021.09.22(수) 10:30
							2021.09.22(수) 17:55 KE9648총 06시간 25분 소요</td>
					</tr>
					<tr>
						<td class="sc_cate">여행 도시</td>
						<td class="sc_opt">괌</td>
					</tr>
					<tr>
						<td class="sc_cate">예약 현황</td>
						<td class="sc_opt">예약 : 0명 좌석 : 20석 (최소출발 : 성인8명</td>
					</tr>
				</table>

			</div>

			<!-- 상품 가격 -->
			<div class="main_schedule" style="height: 270px">
				상품 가격
				<table id="table_price">
					<tr>
						<td width="20%"
							style="background-color: #D5D5D5; border-right: 2px solid #F6F6F6;">구분</td>
						<td width="25%"
							style="background-color: #D5D5D5; border-right: 2px solid #F6F6F6;">성인</td>
						<td width="25%"
							style="background-color: #D5D5D5; border-right: 2px solid #F6F6F6;">아동</td>
						<td width="25%" style="background-color: #D5D5D5">유아</td>
					</tr>
					<tr>
						<td style="border-right: 2px solid #F6F6F6;">기본상품</td>
						<td style="border-right: 2px solid #F6F6F6;" id="price01">${p.pack_price01}원</td>
						<td style="border-right: 2px solid #F6F6F6;" id="price02">${p.pack_price02}원</td>
						<td id="price03">${p.pack_price03}원</td>
					</tr>

				</table>
				<div id="price_letter">
					<br />-유류할증료 및 제세공과금은 유가와 환율에 따라 변동될 수 있습니다. <br />-1인 객실 사용시
					추가요금 발생됩니다. <br />-1인 객실 사용료: 400,000원 <br />-여행 기간 중 만 2세가 되는 경우
					요금 별도 문의
				</div>
			</div>

			<!-- 포함 불포함 내역 -->
			<div class="main_schedule" style="height: 400px;" id="div2">
				포함/불포함 내역
				<div class="option_2" style="color: #22741C;">
					포함 내역
					<div
						style="font-size: 14px; text-align: left; color: black; margin-top: 18px; line-height: 23px; font-style: normal;">
						${p.pack_detail}</div>
				</div>
				<div class="option_2" style="color: #CC3D3D; margin-top: 20px;">
					불포함내역
					<div
						style="font-size: 14px; text-align: left; color: black; margin-top: 18px; line-height: 23px; font-style: normal;">
						${p.pack_none_detail}</div>
				</div>
			</div>


			<!-- 여행 상세 정보 -->
			<div class="main_schedule" style="height: 1500px;" id="div3">
				여행 상세 정보

				<!-- 호텔 정보 -->
				<h2 style="font-size: 16px; margin: 20px 0px 0px 10px;">01 호텔정보</h2>
				<div id="hotel_information">

					<c:if test="${!empty hlist}">

						<div class="hi_top">
							<c:forEach var="h" items="${hlist}">
								<button class="btn_class"
									onclick="schedule_btn('${h.hotel_code}')">${h.hotel_name}</button>
							</c:forEach>
							<!--  <button class="btn_class" onclick="schedule_btn('hm02')">신라호텔</button>-->
						</div>
						<c:forEach var="h" items="${hlist}">
							<div class="hi_middle" id="${h.hotel_code}">
								${h.hotel_name} <br> <img src="${h.hotel_pic}"
									width="800px" height="400px" style="margin-top: 30px;" />
							</div>

							<table class="hi_bottom" id="hb01">
								<tr>
									<td class="hi_bottom_detail">주소:</td>
									<td class="hi_bottom_detail_2">${h.hotel_address}</td>
									<td class="hi_bottom_detail">전화번호:</td>
									<td class="hi_bottom_detail_2">${h.hotel_phone}</td>
								</tr>
								<tr>
									<td class="hi_bottom_detail">팩스:</td>
									<td class="hi_bottom_detail_2">${h.hotel_fax}</td>
									<td class="hi_bottom_detail">홈페이지:</td>
									<td class="hi_bottom_detail_2">${h.hotel_homepage}</td>
								</tr>
							</table>
						</c:forEach>
						<!--  <div class="hi_middle" id="hm02">
								신라호텔 <br> <img src="./resources/image/img1.jpg"
									width="800px" height="400px" style="margin-top: 30px;" />
							</div>

							<table class="hi_bottom" id="hb02">
								<tr>
									<td class="hi_bottom_detail">주소:</td>
									<td class="hi_bottom_detail_2">210 Pale San Vitores Road,
										Tumon Bay, Guam 96913</td>
									<td class="hi_bottom_detail">전화번호:</td>
									<td class="hi_bottom_detail_2">+1-671-646-9171</td>
								</tr>
								<tr>
									<td class="hi_bottom_detail">팩스:</td>
									<td class="hi_bottom_detail_2">+1-671-648-2474</td>
									<td class="hi_bottom_detail">홈페이지:</td>
									<td class="hi_bottom_detail_2">http://www.pic.co.kr</td>
								</tr>
							</table>-->

					</c:if>
				</div>

				<!-- 여행지 정보 -->
				<h2 style="font-size: 16px; margin: 20px 0px 0px 10px;">02
					여행지정보</h2>
				<c:if test="${!empty llist}">
					<div class="landmark_des">
						<div class="hi_top">
							<c:forEach var="l" items="${llist}">
								<button class="btn_class"
									onclick="schedule_btn2('${l.land_code}')">${l.land_name}</button>
								<!-- <button class="btn_class" onclick="schedule_btn2('lt02')">신라호텔</button> -->
							</c:forEach>
						</div>
						<div class="ld_detail">
							<c:forEach var="l" items="${llist}">
								<div class="ld_detail_top" id="${l.land_code}">${l.land_name}</div>

								<div class="ld_detail_bottom">
									<div class="ld_bottom_middle" id="${l.land_code}">
										<br> <img src="${l.land_pic01 }" width="27%" height="200"
											style="border-radius: 5px; margin: 15px;" /> <img
											src="${l.land_pic02 }" width="27%" height="200"
											style="border-radius: 5px; margin: 15px;" /> <img
											src="${l.land_pic03 }" width="27%" height="200"
											style="border-radius: 5px; margin: 15px;" /> <br>
										${l.land_desc}
									</div>
								</div>
							</c:forEach>
						</div>



					</div>
				</c:if>

			</div>

			<!-- 기타 정보 -->
			<div class="main_schedule" style="height: 700px;" id="div4">
				기타 정보
				<ul id="information">
					<li>여행 중 유의사항</li> ▶ 괌 e-종합가이드북:
					http://welcometoguam.co.kr/images/pdf/GVB-e_book-2013.pdf 종합가이드북을
					통해 괌의 레스토랑, 쇼핑, 관광지등 에 대한 정보들을 얻으실 수 있습니다.
					<br> ▶ 북마리아나 관광청 사이트
					http://www.mymarianas.co.kr/html/main/main.asp (레스토랑, 쇼핑, 관광지등 에 대한
					정보들을 얻으실 수 있습니다.)
					<br>▶ 해외 안전 여행사이트 https://www.0404.go.kr/dev/main.mofa (외교통상부)
					<br>▶ 여권 안내 사이트 http://www.passport.go.kr/ (외교통상부)
					<li>입국시 유의사항</li> 1. 해당 상품은 인솔자 없는 자유여행 상품입니다.
					<br>2. 온라인상 예약이 가능한 경우라도 담당자를 통해 확약 안내를 받으셔야 출발이 가능합니다.
					<br>3. 객실은 성인 2인 1실 기준으로 성인 1인 출발 시 (SINGLE ROOM) 추가비용은 별도 문의
					하셔야 합니다.
					<br>4. 추천일정은 고객님들의 이해를 돕기 위한 것으로, 실제 고객님의 일정과 다를 수 있으며 현지사정에
					따라 변경 진행될 수 있습니다.
					<li>특별약관</li> - 상품 취소 규정 및 특별 약관과는 별도로 항공권 발권 후 항공사 규정 따른 항공권 취소
					수수료 발생 할 수 있습니다.
					<br>- 항공사 특별 규정에 의한 취소 수수료 발생으로 상품 취소 시한과는 별도로 발권 후 바로 적용 되는
					항공사 취소 수수료임을 유의 부탁드립니다.
					<br>- 상세 금액 및 규정은 해피콜 시 안내 및 문의 바라며, 해당 항공사 취소수수료에 대한 증빙을 요청할
					수 있습니다.
					<li>소비자 피해규정</li> 공정거래위원회 소비자분쟁 해결기준과 별도로 진행되는 규정입니다.
					<br>예약 취소 시 해외여행 약관 제6조(특약)에 의한 자체 특별약관이 적용됨을 양지하여 주시기 바랍니다.
					<br>본 상품은 고객 결제 후 해피콜 시 여행출발에 대한 최종 확정 여부를 결정하며, 출발 확정 이후 취소 시
					귀책사유에 따라 다음의 약관에 따릅니다.
					<br>구매 전, 약관 내용을 반드시 숙지해주시고 신중한 구매 부탁드립니다.

				</ul>
			</div>

			<!-- 고객 후기 -->
			<div class="main_schedule" style="height: 200px; border: none;"
				id="div5">
				고객 후기
				<h1 style="font-size: 14px; text-align: center; margin-top: 50px;">등록된
					후기가 없습니다.</h1>
			</div>

		</div>
		<!-- 화면 왼쪽 끝 -->


		<!-- 예약 폼 -->
		<div id="reservation_form">
			<div class="rf" style="margin-top: 40px;">
				1. 출발-도착 일자
				<table style="margin-top: 20px; margin-left: 30px;">
					<tr>
						<td class="td_date">출발</td>
						<td class="td_date_des">2021.08.04 (수) 10:35</td>

					</tr>
					<tr>
						<td class="td_date">도착</td>
						<td class="td_date_des">2021.08.04 (수) 12:10</td>
					</tr>
				</table>
				<input type="button" id="change_date" value="출발일 변경" />

			</div>
			<div class="rf">
				2. 항공 선택 <br> <select id="select_option">
					<option>진에어</option>
					<option>대한항공</option>
					<option>아시아나</option>
				</select>
			</div>
			<div class="rf">
				3.호텔 선택 <br> <select id="select_option">
					<option>괌 PIC</option>
				</select>
			</div>
			<div class="rf" style="">
				4. 여행 인원 선택하기 (1인 기본 가격)
				<table id="choose_person">
					<tr style="height: 30px;">
						<td style="font-weight: bold;">성인</td>
						<td class="age">(만 12세 이상)</td>
						<td class="price" id="pack_price01">${p.pack_price01}</td>
						<td>원</td>
						<td><select class="select_cp" id="cnt01" onchange="calc();">
								<option>0</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
						</select></td>
					</tr>
					<tr style="height: 30px;">
						<td style="font-weight: bold;">소아</td>
						<td class="age">(만 12세 미만)</td>
						<td class="price" id="pack_price02">${p.pack_price02}</td>
						<td>원</td>
						<td><select class="select_cp" id="cnt02" onchange="calc();">
								<option>0</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
						</select></td>
					</tr>
					<tr style="height: 30px;">
						<td style="font-weight: bold;">유아</td>
						<td class="age">(만 2세 미만)</td>
						<td class="price" id="pack_price03">${p.pack_price03}</td>
						<td>원</td>
						<td><select class="select_cp" id="cnt03" onchange="calc();">
								<option>0</option>
								<option>1</option>
								<option>2</option>
								<option>3</option>
						</select></td>
					</tr>


				</table>
			</div>
			<div class="rf" style="border-bottom: solid 3px;">
				<table
					style="width: 300px; height: 50px; margin-top: 0px; margin-left: 10px;">
					<tr>
						<td style="font-size: 16px;">총 금액</td>
						<td
							style="font-size: 26px; color: red; text-align: right; width: 100px;"
							id="totalPrice">0</td>
						<td style="font-size: 16px;">원</td>
					</tr>
				</table>
			</div>
			<input type="button" id="btn_reservation" value="예약하기" onclick="location='travel_reservation'"/>

		</div>
	</div>
	<div class="footer_box">
		<div id="footer">
			<jsp:include page="footer.jsp" />
		</div>
	</div>
</body>
</html>