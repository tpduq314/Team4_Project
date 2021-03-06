<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<div id="header_box"">
			<div id="header">
				<jsp:include page="header2.jsp" />
			</div>
		</div>
		<div id="res_top"
			style="border: none; height: 200px; background-color: #6E85B2;">
			<div id="category">
				<h1 id="txt_category" style="padding-right: 20px;">홈 > 마이페이지</h1>
			</div>

			<div
				style="height: 50px; width: 800px; position: relative; top: 100px; left: 20px; font-size: 30px; font-weight: 500; padding-top: 20px; padding-left: 10px; margin-bottom: 40px; color: white;">
				안녕하세요, <span style="color: white; font-weight: bold;">${id}</span>님!
			</div>
		</div>

		<div class="res_description" style="height: 380px; margin-top: 30px; font-size: 18px; font-weight: 500px; width: 1400px;">
			예약 내역
		
			<table class="res_table"
				style="border-top: 2px solid #D5D5D5; border-bottom: 2px solid #D5D5D5;width: 1700px;overflow:auto">
				<tr style="height: 30px;">
					<td class="tb_chk_res">예약코드</td>
					<td class="tb_chk_res">예약 일자</td>
					<td class="tb_chk_res">상품명</td>
					<td class="tb_chk_res">출발일</td>
					<td class="tb_chk_res">도착일</td>
					<td class="tb_chk_res">진행상황</td>
				</tr>
				<c:if test="${empty rlist}">
					<tr>
						<td colspan="6" style="text-align: center; font-size: 16px;">해당
							예약 내역이 없습니다</td>
					</tr>
				</c:if>
				<c:if test="${!empty rlist}">
					<c:forEach var="r" items="${rlist}">
						<tr style="height: 30px;">
							<td style="padding-left: 10px;">${r.res_code}</td>
							<td style="padding-left: 10px;">${r.res_date}</td>
							<td style="padding-left: 10px;">${r.pack_code}</td>
							<td style="padding-left: 10px; ">${r.res_start_date}</td>
							<td style="padding-left: 10px; ">${r.res_end_date}</td>
							<td style="padding-left: 10px;"></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</div>

		<div class="res_description">
			<div id="ask_res" style="font-size: 18px; font-weight: 500px;">
				나의 문의 내역
				<table class="res_table"
					style="border-top: 2px solid #D5D5D5; border-bottom: 2px solid #D5D5D5; width: 100%;overflow:auto">
					<tr>
						<td class="tb_ask_res">문의 내용</td>
						<td class="tb_ask_res">작성일</td>
						<td class="tb_ask_res">처리 상황</td>

					</tr>
					<c:if test="${empty qlist}">
						<tr>
							<td colspan="3" style="text-align: center; font-size: 16px;">해당
								문의 내역이 없습니다</td>
						</tr>
					</c:if>
					<c:if test="${!empty qlist}">
						<c:forEach var="q" items="${qlist}">
							<tr height="30px;">
								<td>${q.qa_title}</td>
								<td>${q.qa_date}</td>
								<td>${q.qa_no}</td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
			<div id="ask_ser" style="font-size: 18px; font-weight: 500px;">
				서비스 바로가기
				<table class="res_table"
					style="border-top: 2px solid #D5D5D5; border-bottom: 2px solid #D5D5D5; width: 100%;">
					<tr align="center">
						<td class="ask_ser_td"
							style="border-left: 2px solid #EAEAEA; border-right: 2px solid #EAEAEA; padding-top: 10px;"><img
							src="./resources/image/home.jpg" width="70%;" height="70%"></td>
						<td class="ask_ser_td"
							style="border-right: 2px solid #EAEAEA; padding-top: 10px;"><img
							src="./resources/image/coupon.png" width="40%;" height="40%"></td>
						<td class="ask_ser_td"
							style="border-right: 2px solid #EAEAEA; padding-top: 10px;"><img
							src="./resources/image/shoppingCart.png" width="50%;"
							height="50%"></td>

					</tr>
					<tr align="center">
						<td
							style="font-size: 16px; font-weight: bold; padding-bottom: 60px; border-left: 2px solid #EAEAEA; border-right: 2px solid #EAEAEA;">개인정보
							수정</td>
						<td
							style="font-size: 16px; font-weight: bold; padding-bottom: 60px; border-right: 2px solid #EAEAEA;">쿠폰함</td>
						<td
							style="font-size: 16px; font-weight: bold; padding-bottom: 60px; border-right: 2px solid #EAEAEA;">장바구니</td>

					</tr>
				</table>
			</div>
		</div>
	</div>
	<div class="footer_box">
		<div id="footer">
			<jsp:include page="footer.jsp" />
		</div>
	</div>

</body>
</html>