<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Group Project</title>
</head>
<link rel="stylesheet" type="text/css"
	href="./resources/css/travelReservation.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>


<script>


$(document).ready(
		function() {
			//시작할 때 모든 가격에 콤마 붙임
			document.getElementById("pack_price01").innerHTML = document
					.getElementById("pack_price01").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			document.getElementById("pack_price02").innerHTML = document
					.getElementById("pack_price02").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			document.getElementById("pack_price03").innerHTML = document
					.getElementById("pack_price03").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			
			document.getElementById("price01").innerHTML = document
					.getElementById("price01").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			document.getElementById("price02").innerHTML = document
					.getElementById("price02").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			document.getElementById("price03").innerHTML = document
					.getElementById("price03").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");

			document.getElementById("pack_price01_01").innerHTML = document
					.getElementById("pack_price01_01").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			document.getElementById("pack_price02_01").innerHTML = document
					.getElementById("pack_price02_01").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			document.getElementById("pack_price03_01").innerHTML = document
					.getElementById("pack_price03_01").innerHTML.toString()
					.replace(/\B(?=(\d{3})+(?!\d))/g, ",");
			
			calc();
			
			
		});			
			
 //시작하면 바로 보이게 하는 슬라이드 		

/*function calc() {
	
	var cnt01 = document.getElementById("res_count01").value;
	var cnt02 = document.getElementById("res_count02").value;
	var cnt03 = document.getElementById("res_count03").value;
	var sum=
		parseInt(cnt01)+parseInt(cnt02)+parseInt(cnt03);
	var count=0;
	/* alert(sum); 
	for(var i=1;i<sum;i++){
		var table=document.createElement('table');
		table.innerHTML=document.getElementById("res_table01").innerHTML;
		document.getElementById("res_description01").appendChild(table);
		count++;
	}
	alert(count);
	$('table').css('float','left');
	
}*/
//전체 약관 동의	
//만약 모든 체크 박스가 체크되면 전체 동의도 함께 체크됨.
function selectAll(selectAll)  {
	  const checkboxes 
	       = document.getElementsByName('chkbox');
	  
	  checkboxes.forEach((checkbox) =>{
	    checkbox.checked = selectAll.checked;
	  })
	} //https://hianna.tistory.com/433
	

function checkSelectAll()  {
	  // 전체 체크박스
	  const checkboxes 
	    = document.querySelectorAll('input[name="chkbox"]');
	  // 선택된 체크박스
	  const checked 
	    = document.querySelectorAll('input[name="chkbox"]:checked');
	  // select all 체크박스
	  const selectAll 
	    = document.querySelector('input[name="selectall"]');
	  
	  if(checkboxes.length === checked.length)  {
	    selectAll.checked = true;
	  }else {
	    selectAll.checked = false;
	  }

	}
	
//유효성 검사	  
function check(){
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 이메일이 적합한지 검사할 정규식
	var exp = /^[0-9]+$/;
	
	var cli_name=document.getElementById("cli_name");
	var cli_birth = document.getElementById("cli_birth");
	var cli_email = document.getElementById("cli_email");
	var cli_phone01 = document.getElementById("cli_phone01");
	var cli_phone02 = document.getElementById("cli_phone02");
	
	if(cli_name.value.length==0){
		alert("이름을 입력해주세요");
		cli_name.focus();
		return false;
	}
	
	if(!(cli_birth.value.length==8)){
		alert("생년월일을 입력해주세요");
		cli_birth.focus();
		return false;
	}
	
	if(!(cli_birth.value.match(exp))){
		alert("숫자만 입력해주세요");
		cli_birth.focus();
		return false;
	}
	
	if(cli_email.value.length==0){
		alert("이메일을 입력해주세요");
		cli_email.focus();
		return false;
	}
	if(!(cli_email.value.match(re2))){
		alert("정확한 이메일 형식을 입력해주세요");
		cli_email.focus();
		return false;
	}
	if(cli_phone01.value.length==0){
		alert("휴대폰 번호를 입력해주세요");
		cli_phone01.focus();
		return false;
	}
	if(!(cli_phone01.value.match(exp))){
		alert("숫자만 입력해주세요");
		cli_phone01.focus();
		return false;
	}
	if(cli_phone02.value.length==0){
		alert("전화를 입력해주세요");
		cli_phone02.focus();
		return false;
	}
	if(!(cli_phone02.value.match(exp))){
		alert("숫자만 입력해주세요");
		cli_phone02.focus();
		return false;
	}

	
}	

function calc() {

	var cnt01 = document.getElementById("res_count01").value;
	var cnt02 = document.getElementById("res_count02").value;
	var cnt03 = document.getElementById("res_count03").value;

	//콤마 제거
	var pack_price01 = document.getElementById("pack_price01").innerHTML
			.toString().replace(/[^\d]+/g, "");
	var pack_price02 = document.getElementById("pack_price02").innerHTML
			.toString().replace(/[^\d]+/g, "");
	var pack_price03 = document.getElementById("pack_price03").innerHTML
			.toString().replace(/[^\d]+/g, "");

	//정수 전환
	cnt01 = parseInt(cnt01);
	cnt02 = parseInt(cnt02);
	cnt03 = parseInt(cnt03);

	pack_price01 = parseInt(pack_price01);
	pack_price02 = parseInt(pack_price02);
	pack_price03 = parseInt(pack_price03);

	//총 가격에 콤마 붙임
	var totalPrice = cnt01 * pack_price01 + cnt02 * pack_price02 + cnt03
			* pack_price03;
	totalPrice = totalPrice.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");

	document.getElementById("res_total_price").value = totalPrice;
	document.getElementById("count01").value=cnt01;
	document.getElementById("count02").value=cnt02;
	document.getElementById("count03").value=cnt03;
	
	/*var sum=0;
		
	sum=parseInt(cnt01)+parseInt(cnt02)+parseInt(cnt03)-1;
	
	alert(sum);
	
	for(var i=1;i<sum;i++){
		var table=document.createElement('table');
		table.innerHTML=document.getElementById("res_table01").innerHTML;
		document.getElementById("res_description01").appendChild(table);
	}*/
	

}
</script>

<body>

	<!-- 예약 폼 -->
	<div id="travel_reservation">
		<div class="header">
				<jsp:include page="header2.jsp" />
		</div>
		<form name="cli" method="post" action="res_ok" onsubmit="return check();">
			<!-- 카테고리, 이름-->
			<div id="res_top">
				<div id="reservation">
					<h1 id="txt_reservation">예약하기</h1>
				</div>
				<div id="res_category">
					01.상품선택 &nbsp; > &nbsp; <span id="res_main_category">02.예약하기</span>
					&nbsp; > &nbsp;03.예약 완료
				</div>
			</div>

			<!-- 상품 정보 -->
			<div class="res_description">
				상품 정보
				<table class="res_table">
					<tr>
						<td class="res_table_td_1">상품명</td>
						<td colspan="3" class="res_table_td_2">${p.pack_name}</td>
					</tr>
					<tr>
						<td class="res_table_td_1">여행기간</td>
						<td class="res_table_td_2">${p.pack_duration}</td>
						<td class="res_table_td_1"
							style="width: 200px; border-left: 2px solid #EAEAEA;">이용교통</td>
						<td class="res_table_td_2">${r.res_airport}</td>
					</tr>
					<tr>
						<td class="res_table_td_1">출발일</td>
						<td colspan="3" class="res_table_td_2">${r.res_start_date}</td>
					</tr>
					<tr>
						<td class="res_table_td_1"
							style="border-bottom: 1.5px solid black;">도착일</td>
						<td colspan="3" class="res_table_td_2"
							style="border-bottom: 1.5px solid black;">${r.res_end_date}</td>
					</tr>
				</table>

			</div>

			<!-- 여행 경비 -->
			<div class="res_description">
				여행 경비
				<table class="res_table">
					<tr>
						<th class="res_table_td_1" style="text-align: center;">구분</th>
						<th class="res_table_td_1" style="text-align: center;">기본 여행
							경비</th>
						<th class="res_table_td_1" style="text-align: center;">유류 할증료</th>
						<th class="res_table_td_1" style="text-align: center;">제세공과금</th>
						<th class="res_table_td_1" style="text-align: center;">총 운임</th>
					</tr>
					<tr>
						<td class="res_table_td_2" style="text-align: center;">성인</td>
						<td class="res_table_td_2" style="text-align: right;"
							id="pack_price01_01">${p.pack_price01}원</td>
						<td class="res_table_td_2" style="text-align: right;"
							id="pack_price01_02">0원</td>
						<td class="res_table_td_2" style="text-align: right;">0원</td>
						<td class="res_table_td_2"
							style="text-align: right; font-size: 16px; color: red; font-weight: bold;"
							id="pack_price01">${p.pack_price01}원</td>
					</tr>
					<tr>
						<td class="res_table_td_2" style="text-align: center;">아동</td>
						<td class="res_table_td_2" style="text-align: right;"
							id="pack_price02_01">${p.pack_price02}원</td>
						<td class="res_table_td_2" style="text-align: right;"
							id="pack_price02_02">0원</td>
						<td class="res_table_td_2" style="text-align: right;">0원</td>
						<td class="res_table_td_2"
							style="text-align: right; font-size: 16px; color: red; font-weight: bold;"
							id="pack_price02">${p.pack_price02}원</td>
					</tr>
					<tr>
						<td class="res_table_td_2" style="text-align: center;">유아</td>
						<td class="res_table_td_2" style="text-align: right;"
							id="pack_price03_01">${p.pack_price03}원</td>
						<td class="res_table_td_2" style="text-align: right;"
							id="pack_price03_02">0원</td>
						<td class="res_table_td_2" style="text-align: right;">0원</td>
						<td class="res_table_td_2"
							style="text-align: right; font-size: 16px; color: red; font-weight: bold;"
							id="pack_price03">${p.pack_price03}원</td>
					</tr>
				</table>

			</div>

			<!-- 예약자 정보 -->
			<div class="res_description">
				예약자 정보
				<div
					style="float: right; margin-top: 10px; margin-right: 0px; font-size: 12px;">
					<span style="color: red; clear: both;">*</span>는 필수 입력 항목입니다.
				</div>
				<table class="res_table" style="height: 300px;">
					<tr>
						<td class="res_table_td_1" style="width: 200px;"><span
							style="color: red;">*</span> 이름</td>
						<td class="res_table_td_2"><input class="input_table"
							type="text" name="cli_name" placeholder="이름" id="cli_name" /></td>
						<td class="res_table_td_1" style="width: 200px;"><span
							style="color: red;">*</span> 생년월일</td>
						<td class="res_table_td_2"><input class="input_table"
							type="text" name="cli_birth" placeholder="예)20180101"
							id="cli_birth" /></td>
						<!-- <td class="res_table_td_1" style="width: 150px;"><span
							style="color: red;">*</span> 성별</td>
						<td class="res_table_td_2" width="200px;"><input type="radio"
							name="cli_gender" id="cli_gender" value="남자" style="display: inline-block;" checked="checked">남 
							<input type="radio" name="gender" value="여자" id="cli_gender" name="cli_gender"
							style="display: inline-block;">여</td> -->
					</tr>
					<tr>
						<td class="res_table_td_1" style="width: 200px;"><span
							style="color: red;">*</span> 이메일</td>
						<td colspan="5" class="res_table_td_2"><input
							class="input_table" type="text" name="cli_email" id="cli_email"
							placeholder="이메일 " style="width: 250px;" /></td>
					</tr>
					<tr>
						<td class="res_table_td_1" style="width: 200px;">* 휴대폰 번호</td>
						<td class="res_table_td_2"><input class="input_table"
							type="text" name="cli_phone01" id="cli_phone01"
							placeholder="'-' 제외 숫자만 입력" /></td>
						<td class="res_table_td_1" style="width: 200px;">전화 번호</td>
						<td class="res_table_td_2" colspan="3"><input
							class="input_table" type="text" name="cli_phone02"
							id="cli_phone02" placeholder="'-' 제외 숫자만 입력" /></td>
					</tr>
				</table>

			</div>

			<!-- 여행자 정보 -->
			<div class="res_description" style="height: 100px;">
				여행자 정보
				<table class="res_table" style="height: 70px;">
					<tr>
						<td class="res_table_td_1" style="width: 250px;">성인 (만 12세
							이상)</td>
						<td class="res_table_td_2" width="100px;"><select
							style="width: 40px; height: 30px; font-size: 14px;"
							id="res_count01" name="res_count01" onchange="calc();">
								<option value="${r.res_count01}">${r.res_count01}</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select>명</td>
						<td class="res_table_td_1" style="width: 250px;">유아 (만 2세
							이상~만 12세 미만)</td>
						<td class="res_table_td_2" width="100px;"><select
							style="width: 40px; height: 30px; font-size: 14px;"
							id="res_count02" name="res_count02" onchange="calc();">
								<option value="${r.res_count02}">${r.res_count02}</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select>명</td>
						<td class="res_table_td_1" style="width: 250px;">아동 (만 2세 미만)</td>
						<td class="res_table_td_2" width="100px;"><select
							style="width: 40px; height: 30px; font-size: 14px;"
							id="res_count03" name="res_count03" onchange="calc();">
								<option value="${r.res_count03}">${r.res_count03}</option>
								<option value="0">0</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
						</select>명</td>
					</tr>
				</table>
			</div>

			<!-- 인원 상세 정보 
		<div id="res_description01" style="margin-top: 60px; height: 220px; clear:both;">
			인원 상세 정보
			<div
				style="float: right; margin-top: 10px; margin-right: 10px; font-size: 12px;">
				<span style="color: red;">*</span>는 필수 입력 항목입니다.
			</div>
			<table id="res_table01" style="height: 180px;">
				<tr>
					<td class="res_table_td_1" rowspan="2" width="100px">성인1</td>
					<td class="res_table_td_2" width="700px"><span
						style="color: red;">*</span>이름(한글)&nbsp;&nbsp;<input
						class="input_table" type="text" name="korean_name" id="de_name" />&nbsp;
						&nbsp;영문&nbsp;&nbsp; <input class="input_table" type="text"
						name="english_first_name" />
					<td class="res_table_td_1" width="150px">휴대폰 번호</td>
					<td class="res_table_td_2"><input class="input_table"
						type="text" name="phone_num" placeholder="'-' 제외 숫자만 입력" /></td>
				</tr>
				<tr>
					<td class="res_table_td_2" colspan="3"><span
						style="color: red;">*</span>생년월일&nbsp;&nbsp;<input
						class="input_table" type="text" name="birth" id="de_birth" />&nbsp;&nbsp;&nbsp;&nbsp;<span
						style="color: red;">*</span>&nbsp;성별&nbsp;&nbsp;<input
						type="radio" name="gender" value="남자"
						style="display: inline-block;" checked>남 &nbsp;&nbsp; <input
						type="radio" name="gender" value="여자"
						style="display: inline-block;">여</td>
				</tr>
			</table>
		</div>-->

			<!-- 요청사항 -->
			<div class="res_description" style="height: 240px; clear: both">
				요청 사항
				<br><textarea
					style="border: 1px solid gray; height: 180px; width: 1370px; margin-top: 20px; font-size: 14px; padding-top: 10px; padding-left: 10px;"
					placeholder="요청사항을 적어주세요" name="res_req" id="res_req" ></textarea>
			</div>

			<!-- 약관 동의 -->
			<div class="res_description02" style="height: 450px;">
				필수 약관 동의
				<div id="service_agreement">
					<div style="font-size: 20px;">
						<input type="checkbox" name="selectall" value="selectall"
							onclick='selectAll(this)'
							style="margin-bottom: 20px; color: red;">&nbsp;&nbsp;약관에
						모두 동의합니다.
					</div>

					<input type="radio" name="tabmenu" id="tab01" checked> <label
						for="tab01">여행 약관</label> <input type="radio" name="tabmenu"
						id="tab02"> <label for="tab02">개인정보 수집 및 이용</label> <input
						type="radio" name="tabmenu" id="tab03"> <label for="tab03">고유식별정보
						수집 및 이용</label> <input type="radio" name="tabmenu" id="tab04"> <label
						for="tab04">개인저보 제 3자 제공</label>

					<div class="conbox con1">
						<p class="conbox_con1">
							당사는 개인정보보호법을 준수하며 서비스 수행의 목적에 한하여 최소한의 고유식별정보를 수집, 이용하며 기준은 아래와
							같습니다. <br>1. 고유식별정보 수집/이용 목적: 항공사 마일리지 적립 및 사용, 해외여행 상품예약시
							출국가능 여부파악 및 여행자 본인식별, <br>2. 수집하는 고유식별정보의 항목: 여권번호 (여권만료일) <br>3.
							고유식별정보의 보유 및 이용기간: 여행상품 서비스 수행목적의 완료시점까지 동의거부권 개인정보주체자(이용자)께서는
							고유식별정보(여권번호 등)에 대한 수집동의를 거부할 권리가 있습니다.
						</p>
					</div>
					<div class="conbox con2">
						<p>
							1. 개인정보 수집 및 이용목적 <br> 여행상품의 예약, 항공권/호텔 등의 예약 및 출입국 정보확인,
							예약내역의 확인 및 상담, 컨텐츠 제공, 여행서비스 이용 시 회원의 우대, 투어캐쉬 적립/조회/사용 및 이에 관한
							안내, 구매 및 요금결제, 물품배송 또는 청구서 등 발송, 분쟁조정을 위한 기록보존, 불만처리, 민원처리, 고지사항
							전달 등 <br> 2. 개인정보 수집 항목 및 보유 및 이용기간<br> 가. 회사는 적법한 절차와
							법적 기준에 의거하여 고객의 개인정보를 수집하고 있으며, 고객의 서비스이용에 필요한 최소한의 정보만을 수집하고
							있습니다. 정보통신망법과 개인정보보호법에 의거하여 수집, 이용을 제한하고 있습니다.<br> 나. 회사는
							고객의 인권을 침해할 우려가 있는 민감한 개인정보항목(인종, 종교, 사상, 정치적 성향, 건강상태, 성생활정보 등)은
							수집하지 않습니다.
						</p>
					</div>
					<div class="conbox con3">
						개인정보의 제 3자 제공 (마케팅 목적으로 활용되지 않음) ※<br> 예약진행 시 입력하신 개인정보는 선택하신
						해당 행사업체에만 제공됩니다. 회사는 회원님의 동의가 있거나 관련 법령의 규정에 의한 경우를 제외하고 어떠한 경우에도
						‘개인정보 수집 및 이용목적’ 에서 고지한 범위를 넘어서거나, 해당되는 회원 서비스 영역과 무관한 타 기업/기관에
						제공하거나 이용하지 않습니다. <br>단, 제공의 필요시 회원의 동의를 얻어 회원 서비스 수행에 직접적으로
						관계되는 업체에 한해서 제한적인 조건으로 개인정보가 제공되며 내용은 다음과 같습니다.
					</div>
					<div class="conbox con4">
						[취소 위약금 증빙제공 및 차액 환급]<br> 고객은 계약취소와 관련하여 취소수수료(여행사 인건비포함)에 대한
						구체적인 증빙과 설명을 여행사에 요구할 수 있으며,<br> 여행사는 관련 증빙과 설명을 제시하고, 취소 수수료
						규정과 차액이 있는 경우 이를 환급합니다.
					</div>


					<input type="checkbox" class="sa_checkbox" name="chkbox"
						onclick='checkSelectAll()' id="chkbox1"> <label
						for="chkbox1">여행 약관에 동의합니다.</label> <input type="checkbox"
						class="sa_checkbox" name="chkbox" onclick='checkSelectAll()'
						id="chkbox2"> <label for="chkbox2">개인정보 수집 및 이용에
						동의합니다.</label> <input type="checkbox" class="sa_checkbox" name="chkbox"
						onclick='checkSelectAll()' id="chkbox3"> <label
						for="chkbox3">고유식별정보 수집 및 이용에 동의합니다.</label> <input
						type="checkbox" class="sa_checkbox" name="chkbox"
						onclick='checkSelectAll()' id="chkbox4"> <label
						for="chkbox4">개인정보 제 3자 제공에 동의합니다.</label>
				</div>

			</div>

			<!-- 총 가격 -->
			<div id="total_price">
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
						<td style="text-align: right;" class="tp_table_td" id="price01">${p.pack_price01}원</td>
						<td class="tp_table_td" style="border-right: 1.5px solid #EAEAEA;">x
							<input readonly type="text" value="0" id="count01"
							style="border: none; text-align: right; width: 10px; pointer-events: none;" />명
						</td>
						<td rowspan="3" class="tp_table_td" style="text-align: center;">쿠폰
							할인</td>
						<td rowspan="3" class="tp_table_td"
							style="border-right: 1.5px solid #EAEAEA;">-원</td>
						<td rowspan="3"
							style="color: red; font-size: 16px; text-align: center; font-weight: bold;"><input
							readonly type="text" id="res_total_price" name="res_total_price"
							value="0"
							style="border: none; color: red; font-size: 18px; text-align: right; width: 150px; border-color: #F6F6F6; pointer-events: none;" />원</td>
					</tr>
					<tr>
						<td class="tp_table_td">아동</td>
						<td style="text-align: right;" class="tp_table_td" id="price02">${p.pack_price02}원</td>
						<td class="tp_table_td" style="border-right: 1.5px solid #EAEAEA;">x
							<input readonly type="text" value="0" id="count02"
							style="border: none; text-align: right; width: 10px; pointer-events: none;" />명
						</td>

					</tr>
					<tr>
						<td class="tp_table_td">유아</td>
						<td class="tp_table_td" style="text-align: right;" id="price03">${p.pack_price03}원</td>
						<td class="tp_table_td" style="border-right: 1.5px solid #EAEAEA;">x
							<input readonly type="text" value="0" id="count03"
							style="border: none; text-align: right; width: 10px; pointer-events: none;" />명
						</td>

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

			<!-- 예약 버튼 -->
			<div id="reservation_btn">
				
				<button type="submit" id="r_ok" >예약하기</button>
			</div>
		</form>
	</div>
	<div class="footer_box">
		<div id="footer">
			<jsp:include page="footer.jsp" />
		</div>
	</div>
	
</body>