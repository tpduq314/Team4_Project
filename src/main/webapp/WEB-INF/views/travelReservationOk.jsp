<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css"
	href="./resources/css/travelReservation.css" />
</head>

<body>

	<div id="travel_reservation_ok">

		<!-- 상단 카테고리 -->
		<div id="res_top">
			<div id="reservation">
				<h1 id="txt_reservation">예약완료</h1>
			</div>
			<div id="res_category">
				01.상품선택 &nbsp; > &nbsp; 02.예약하기 &nbsp; > &nbsp;<span
					id="res_main_category">03.예약 완료</span>
			</div>
		</div>


		<div class="res_description"
			style="background-color: #D5D5D5; text-align: center; height: 400px;">
			<img src="./resources/image/logo.jpg" width=150px height=150px
				style="margin-top: 50px;">
			<p class="travel_reservation_ok_p" style="margin-top: 20px;">웹
				투어를 이용해주셔서 감사합니다.</p>
			<p class="travel_reservation_ok_p">
				<span style="color: #6E85B2; font-size: 18px;">홍길동 </span>님의 예약이
				완료되었습니다.
			</p>
			<div
				style="border-radius: 7px; background-color: #6E85B2; font-size: 14px; height: 30px; width: 200px; margin-top: 10px; margin-left: auto; margin-right: auto; line-height: 30px;">
				예약 번호는 <span style="color: white;">283794</span> 입니다.
			</div>
		</div>

		<div class="res_description"
			style="background-color: white; height: 30px; border-bottom: 3px solid #BDBDBD; font-size: 24px;">
			예약 사항</div>

		<div class="res_description"
			style="margin-top: 25px; font-size: 20px;">
			상품 정보
			<table class="res_table">
				<tr>
					<td class="res_table_td_1">상품명</td>
					<td colspan="3" class="res_table_td_2">[다시, 여행] 다낭#하루는 자유로운
						패키지#빈펄 리버프론트 5일</td>
				</tr>
				<tr>
					<td class="res_table_td_1">여행기간</td>
					<td class="res_table_td_2">3박 4일</td>
					<td class="res_table_td_1"
						style="width: 200px; border-left: 2px solid #EAEAEA;">이용교통</td>
					<td class="res_table_td_2">대한항공</td>
				</tr>
				<tr>
					<td class="res_table_td_1">출발일</td>
					<td colspan="3" class="res_table_td_2">2021년 10월 01일 (금)
						07:00-VJ879</td>
				</tr>
				<tr>
					<td class="res_table_td_1"
						style="border-bottom: 1.5px solid black;">도착일</td>
					<td colspan="3" class="res_table_td_2"
						style="border-bottom: 1.5px solid black;">2021년 10월 05일 (화)
						06:00-VJ878</td>
				</tr>
			</table>

		</div>

		<div class="res_description"
			style="font-size: 20px; margin-top: 50px;">
			예약자 정보
			<div
				style="float: right; margin-top: 10px; margin-right: 10px; font-size: 12px;">

			</div>
			<table class="res_table" style="height: 300px;">
				<tr>
					<td class="res_table_td_1" style="width: 200px;">이름</td>
					<td class="res_table_td_2">홍길동</td>
					<td class="res_table_td_1" style="width: 200px;">생년월일</td>
					<td class="res_table_td_2">19990723</td>
					<td class="res_table_td_1" style="width: 200px;">성별</td>
					<td class="res_table_td_2">남성</td>
				</tr>
				<tr>
					<td class="res_table_td_1" style="width: 200px;">이메일</td>
					<td colspan="5" class="res_table_td_2">hong@naver.com</td>
				</tr>
				<tr>
					<td class="res_table_td_1" style="width: 200px;">휴대폰 번호</td>
					<td class="res_table_td_2">0102343223</td>
					<td class="res_table_td_1" style="width: 200px;">전화 번호</td>
					<td class="res_table_td_2" colspan="3">031928390</td>
				</tr>
			</table>

		</div>

	<!--  	<div class="res_description" style="height: 140px; font-size: 20px;">
			여행자 정보 &nbsp;&nbsp; <span
				style="font-weight: normal; font-size: 18px;">(성인 <span
				style="color: blue;">1</span> / 아동 <span style="color: blue">0</span>
				/ 유아<span style="color: blue;">0</span>)
			</span>
			<table class="res_table" style="height: 100px;">
				<tr>
					<td class="res_table_td_1" width="80px">성인1</td>
					<td class="res_table_td_1" width="90px">이름(한글)</td>
					<td class="res_table_td_2"">홍길동</td>
					<td class="res_table_td_1" width="90px">이름(영문)</td>
					<td class="res_table_td_2">Hong Gi Dong</td>
					<td class="res_table_td_1" width="100px">휴대폰 번호</td>
					<td class="res_table_td_2">01032452938</td>
				</tr>

			</table>
		</div>-->

		<div class="res_description" style="height: 240px; font-size: 20px;">
			요청 사항
			<div
				style="border: 1px solid gray; height: 180px; width: 1360px; margin-top: 20px; font-size: 14px; padding-top: 10px; padding-left: 10px;"></div>

		</div>

		<div id="total_price" style="margin-top: 30px;">
			<table id="tp_table">
				<tr>
					<th colspan="3" class="tp_table_th"
						style="text-align: left; border-right: 1.5px solid #EAEAEA;">상품
						금액</th>
					<th colspan="2" class="tp_table_th"
						style="border-right: 1.5px solid #EAEAEA;">할인 금액</th>
					<th class="tp_table_th">총액</th>
				</tr>
				<tr>
					<td class="tp_table_td">성인</td>
					<td style="text-align: right;" class="tp_table_td">789,000원</td>
					<td class="tp_table_td" style="border-right: 1.5px solid #EAEAEA;">x
						1명</td>
					<td rowspan="3" class="tp_table_td" style="text-align: center;">쿠폰
						할인</td>
					<td rowspan="3" class="tp_table_td"
						style="border-right: 1.5px solid #EAEAEA;">-원</td>
					<td rowspan="3"
						style="color: red; font-size: 16px; text-align: center; font-weight: bold;">789,000원</td>
				</tr>
				<tr>
					<td class="tp_table_td">아동</td>
					<td style="text-align: right;" class="tp_table_td">789,000원</td>
					<td class="tp_table_td" style="border-right: 1.5px solid #EAEAEA;">x
						0명</td>

				</tr>
				<tr>
					<td class="tp_table_td">유아</td>
					<td class="tp_table_td" style="text-align: right;">150,0000원</td>
					<td class="tp_table_td" style="border-right: 1.5px solid #EAEAEA;">x
						0명</td>

				</tr>
			</table>
			<div id="tp_bottom">
				<ul>
					<li>-항공권 또는 항공권이 포함된 상품의 경우, 표시되는 상품요금은 세금 및 예상 유류할증료가 포함된
						가격이며, 유류할증료는 유가 및 환율 등에 따라 변동될 수 있습니다.</li>
					<li>-아동/유아 기준은 항공사마다 상이하여, 예약 후 최종 확정됩니다</li>
				</ul>
			</div>

		</div>

		<div
			style="font-size: 15px; font-weight: 550; height: 50px; margin-left: 35px; margin-right: 35px; margin-top: 50px; line-height: 50px; padding-left: 30px; border: 2px solid #EAEAEA;">담당자
			: &nbsp;&nbsp;동북아사업부팀 &nbsp;&nbsp;&nbsp;&nbsp;대표번호 :
			&nbsp;&nbsp;031928338&nbsp;&nbsp;&nbsp;&nbsp;이메일 :
			&nbsp;&nbsp;dfjdf@gmail.com</div>
	</div>


</body>
</html>