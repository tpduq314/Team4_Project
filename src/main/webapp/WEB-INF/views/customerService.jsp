
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Group Project</title>
<script src="./resources/js/jquery.js"></script>
</head>

<link rel="stylesheet" type="text/css"
	href="./resources/css/customerService.css" />

<script type="text/javascript">
//유효성 검사	  
function check(){
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 이메일이 적합한지 검사할 정규식
	var exp = /^[0-9]+$/;
	
	var qa_phone=document.getElementById("qa_phone");
	var qa_mail_id = document.getElementById("qa_mail_id");
	var qa_title = document.getElementById("qa_title");
	var qa_cont = document.getElementById("qa_cont");
	
	if(qa_phone.value.length==0){
		alert("번호을 입력해주세요");
		qa_phone.focus();
		return false;
	}
	
	if(!(qa_phone.value.match(exp))){
		alert("숫자만 입력해주세요");
		qa_phone.focus();
		return false;
	}
	
	if(qa_mail_id.value.length==0){
		alert("이메일을 입력해주세요");
		qa_mail_id.focus();
		return false;
	}
	if(!(qa_mail_id.value.match(re2))){
		alert("정확한 형식으로 입력해주세요");
		qa_mail_id.focus();
		return false;
	}
	
	if(qa_title.value.length==0){
		alert("제목을 입력해주세요");
		qa_title.focus();
		return false;
	}


	

	
}	
</script>
<div id="customer_service">
	<div id="header_box">
		<div id="header">
			<jsp:include page="header2.jsp" />
		</div>
	</div>

	<div id="res_top">
		<div id="reservation">
			<h1 id="txt_reservation">1대1 문의</h1>
		</div>
	</div>

	<form method="post" action="customer_service_ok" onsubmit="return check();">
		<div>
			<!-- <p
			style="float: right; margin-top: 60px; margin-right: 200px; font-size: 14px;">
			<span style="color: red;">*</span>는 필수 정보입니다.
		</p> -->

			<table
				style="border-top: 2px solid black; margin-left: 250px; margin-top: 90px; font-size: 15px; ">
				<tr>
					<td class="cs_tb_1"><span style="color: red;">* </span>휴대폰 번호</td>
					<td class="cs_tb_2"><input name="qa_phone" id="qa_phone"
						class="cs_tb_2_input" type="text" placeholder="'-'제외 숫자만 입력" /></td>
				</tr>
				<tr>
					<td class="cs_tb_1"><span style="color: red;">* </span>이메일</td>
					<td class="cs_tb_2"><input name="qa_mail_id" id="qa_mail_id"
						class="cs_tb_2_input" type="text" placeholder="이메일 아이디" /></td>
				</tr>
				<tr>
					<td class="cs_tb_1"><span style="color: red;"></span>예약 번호</td>
					<td class="cs_tb_2"><input name="res_code" id="res_code"
						class="cs_tb_2_input" type="text" placeholder="예약번호를 입력하세요"
						style="width: 1020px;" /></td>
				</tr>
				<tr>
					<td class="cs_tb_1"><span style="color: red;">* </span>제목</td>
					<td class="cs_tb_2"><input name="qa_title" id="qa_title"
						class="cs_tb_2_input" type="text" placeholder="제목을 입력하세요"
						style="width: 1020px; height: 40px;" /></td>
				</tr>
				<tr>
					<td class="cs_tb_1"><span style="color: red;">* </span>내용</td>
					<td class="cs_tb_2"><input name="qa_cont" id="qa_cont"
						class="cs_tb_2_input" type="text" placeholder="내용을 입력하세요"
						style="width: 1020px; height: 500px;" /></td>
				</tr>
			</table>
			<p
				style="margin-top: 15px; color: blue; margin-left: 275px; font-weight: bold;">주민번호나
				여권번호 등 개인정보는 작성에 유의하시기 바랍니다.</p>

			<button type="submit"
				style="width: 150px; height: 60px; margin-top: 30px; margin-left: 800px; font-size: 16px; font-weight: bold; border: none; background-color: gray; color: white;">문의하기</button>
		</div>
	</form>

</div>
<div class="footer_box">
	<div id="footer">
		<jsp:include page="footer.jsp" />
	</div>
</div>

</body>
</html>