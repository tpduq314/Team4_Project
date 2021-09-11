
<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Group Project</title>
</head>

<link rel="stylesheet" type="text/css" href="./resources/css/customerService.css" />

<script type="text/javascript">
	//유효성 검사
	function ask(phone, title, content) {
		var exp = /^[0-9]+$/;//정규 표현식이다. ^은 시작, $는 문자의 끝, [0-9]는 0부터 9까지 중의 하나를 의미, +는 한번이상 반복,결국 숫자만 입력하게 하는 정규 표현식

		if (phone.value.match(exp)) {//정규표현식 검증
			if (title.value.length == 0) {
				alert('제목을 입력하세요');
				title.focus();
				return false;
			}
			if (content.value.length == 0) {
				alert('내용을 입력하세요');
				content.focus();
				return false;
			}
			return true;
		} else {
			alert("'-'제외 숫자만 입력하세요");
			phone.focus();
			return false;
		}

	}
</script>
<div id="customer_service">

	<div id="res_top">
		<div id="reservation">
			<h1 id="txt_reservation">1대1 문의</h1>
		</div>
	</div>


	<div>
		<!-- <p
			style="float: right; margin-top: 60px; margin-right: 200px; font-size: 14px;">
			<span style="color: red;">*</span>는 필수 정보입니다.
		</p> -->

		<table
			style="border-top: 2px solid black; margin-left: 250px; margin-top: 90px; font-size: 15px;">
			<tr>
				<td class="cs_tb_1"><span style="color: red;">* </span>휴대폰 번호</td>
				<td class="cs_tb_2"><input id="phone" class="cs_tb_2_input"
					type="text" placeholder="'-'제외 숫자만 입력" /></td>
			</tr>
			<tr>
				<td class="cs_tb_1"><span style="color: red;">* </span>이메일</td>
				<td class="cs_tb_2"><input class="cs_tb_2_input" type="text"
					placeholder="이메일 아이디" /> @ <input class="cs_tb_2_input"
					type="text" placeholder="이메일 도메인" /></td>
			</tr>
			<tr>
				<td class="cs_tb_1">예약 번호</td>
				<td class="cs_tb_2"><input class="cs_tb_2_input" type="text"
					placeholder="예약번호를 입력하세요" style="width: 700px;" /></td>
			</tr>
			<tr>
				<td class="cs_tb_1"><span style="color: red;">* </span>제목</td>
				<td class="cs_tb_2"><input id="title" class="cs_tb_2_input"
					type="text" placeholder="제목을 입력하세요"
					style="width: 700px; height: 40px;" /></td>
			</tr>
			<tr>
				<td class="cs_tb_1"><span style="color: red;">* </span>내용</td>
				<td class="cs_tb_2"><input id="content" class="cs_tb_2_input"
					type="text" placeholder="내용을 입력하세요"
					style="width: 700px; height: 500px;" /></td>
			</tr>
		</table>
		<p
			style="margin-top: 15px; color: blue; margin-left: 275px; font-weight: bold;">주민번호나
			여권번호 등 개인정보는 작성에 유의하시기 바랍니다.</p>

		<button
			onclick="ask(document.getElementById('phone'),document.getElementById('title'),document.getElementById('content'))"
			style="width: 150px; height: 60px; margin-top: 30px; margin-left: 630px; font-size: 16px; font-weight: bold; border: none; background-color: gray; color: white;">문의하기</button>
	</div>
</div>


</body>
</html>