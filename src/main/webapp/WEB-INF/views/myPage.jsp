<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Group Project</title>
<script src="./resources/js/jquery.js"></script>
</head>

<link rel="stylesheet" type="text/css" href="./resources/css/myPage.css" />

<body>

<div id="my_page">
	<div id="header_box" style="clear:both; position:relative; width:100%; height:160px; top:0; background-color:white;">
		<div id="header">
			<jsp:include page="header2.jsp" />
		</div>
	</div>
	<div id="res_top" style="border: none; height: 200px; background-color: #6E85B2;">
		<div id="category">
			<h1 id="txt_category" style="padding-right: 20px;">홈 > 마이페이지</h1>
		</div>

		<div
			style="height: 50px; width: 800px; position: relative; top: 100px; left: 20px; font-size: 30px; font-weight: 500; padding-top: 20px; padding-left: 10px; margin-bottom: 40px; color: white;">
			안녕하세요, <span style="color: white; font-weight: bold;">홍길동</span>님!
		</div>
	</div>

	<div class="res_description"
		style="height: 380px; margin-top: 30px; ">
		예약 내역
		<div style="width: 100px; height: 25px; border: 1px solid gray; text-align: center; float: right; font-size: 14px; margin-right: 15px; line-height: 25px; color: white; background-color: #4C4C4C; font-weight: bold;">
		내 예약 찾기
		</div>
		<table class="res_table"
			style="border-top: 2px solid #D5D5D5; border-bottom: 2px solid #D5D5D5;">
			<tr>
				<td class="tb_chk_res" id="res_code">${q.res_code}</td>
				<td class="tb_chk_res">예약 일자</td>
				<td class="tb_chk_res">상품명</td>
				<td class="tb_chk_res">출발일</td>
				<td class="tb_chk_res">진행상황</td>
				<td class="tb_chk_res">문의신청</td>

			</tr>
			<tr>
				<td colspan="6" style="text-align: center; font-size: 16px;">해당
					예약 내역이 없습니다</td>
			</tr>
		</table>

	</div>

	<div class="res_description">
		<div id="ask_res">
			나의 문의 내역
			<table class="res_table"
				style="border-top: 2px solid #D5D5D5; border-bottom: 2px solid #D5D5D5; width: 100%;">
				<tr>
					<td class="tb_ask_res">문의 내용</td>
					<td class="tb_ask_res">작성일</td>
					<td class="tb_ask_res">처리 상황</td>

				</tr>
				<tr>
					<td colspan="3" style="text-align: center; font-size: 16px;">해당
						문의 내역이 없습니다</td>
				</tr>
			</table>
		</div>
		<div id="ask_ser">
			서비스 바로가기
			<table class="res_table"
				style="border-top: 2px solid #D5D5D5; border-bottom: 2px solid #D5D5D5; width: 100%;">
				<tr align="center">
					<td class="ask_ser_td" style="border-left:2px solid #EAEAEA; border-right: 2px solid #EAEAEA;padding-top: 10px;"><img src="./resources/image/home.jpg"
						width="90%;" height="90%"></td>
					<td class="ask_ser_td" style="border-right: 2px solid #EAEAEA;padding-top: 10px;"><img src="./resources/image/coupon.png"
						width="55%;" height="55%"></td>
					<td class="ask_ser_td" style="; border-right: 2px solid #EAEAEA;padding-top: 10px;"><img src="./resources/image/shoppingCart.png"
						width="70%;" height="70%"></td>

				</tr>
				<tr align="center">
					<td style="font-size: 16px; font-weight: bold; padding-bottom: 60px; border-left:2px solid #EAEAEA; border-right: 2px solid #EAEAEA;">개인정보 수정</td>
					<td style="font-size: 16px; font-weight: bold; padding-bottom: 60px;border-right: 2px solid #EAEAEA;">쿠폰함</td>
					<td style="font-size: 16px; font-weight: bold; padding-bottom: 60px; border-right: 2px solid #EAEAEA;">장바구니</td>

				</tr>
			</table>
		</div>
	</div>
</div>
	<div class="footer_box">
		<div id="footer">
		<jsp:include page="footer.jsp"/>
		</div>
	</div>

</body>
</html>