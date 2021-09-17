<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet" type="text/css" href="./resources/css/editPersonalInfo.css" />

</head>

<body>

	<script>
		//유효성 검사	  
		function check2() {
			var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			// 이메일이 적합한지 검사할 정규식
			var exp = /^[0-9]+$/;

			var password = document.getElementById("password");
			var email = document.getElementById("email");
			var phone = document.getElementById("phone");
			var birth = document.getElementById("birth");

			if (password.value.length == 0) {
				alert("패스워드를 입력해주세요");
				res_email.focus();
				return false;
			}
			if (email.value.length == 0) {
				alert("이메일을 입력해주세요");
				res_email.focus();
				return false;
			}
			if (!(email.value.match(re2))) {
				alert("정확한 이메일 형식을 입력해주세요");
				res_email.focus();
				return false;
			}
			if (phone.value.length == 0) {
				alert("전화번호를 입력해주세요");
				de_name.focus();
				return false;
			}
			if (!(phone.value.match(exp))) {
				alert("숫자만 입력해주세요");
				res_birth.focus();
				return false;
			}
			if (!(birth.value.length == 8)) {
				alert("생년월일을 입력해주세요");
				res_birth.focus();
				return false;
			}

			if (!(birth.value.match(exp))) {
				alert("숫자만 입력해주세요");
				res_birth.focus();
				return false;
			}

		}
	</script>
	
	<div id="travel_description" style="height: 600px;">

		<div id="editPersonalInfo">
			개인정보 변경
			<table
				style="margin-top: 50px; font-size: 15px; text-align: left; width: 100%;">
				<tr>
					<td class="res_table_td_1" style="width: 100px;">아이디</td>
					<td class="res_table_td_2" style="height: 60px;"><input
						class="input_table" type="text" name="id" placeholder="아이디" /></td>
				</tr>
				<tr>
					<td class="res_table_td_1" style="width: 100px;">비밀번호</td>
					<td class="res_table_td_2" style="height: 60px;"><input
						class="input_table" type="text" name="password" placeholder="비밀번호"
						id="password" /></td>
				</tr>
				<tr>
					<td class="res_table_td_1" style="width: 100px;">이메일</td>
					<td class="res_table_td_2" style="height: 60px;"><input
						class="input_table" type="text" name="email_id" placeholder="이메일"
						id="email" style="width: 250px;" />&nbsp;&nbsp;</td>
				</tr>
				<tr>
					<td class="res_table_td_1" style="width: 100px;">휴대전화</td>
					<td class="res_table_td_2" style="height: 60px;"><input
						class="input_table" type="text" name="call_num" id="phone"
						placeholder="'-' 제외 숫자만 입력" /></td>
				</tr>
				<tr>
					<td class="res_table_td_1" style="width: 100px;">생년월일</td>
					<td class="res_table_td_2" style="height: 60px;"><input
						class="input_table" type="text" name="birth"
						placeholder="예)20180101" id="birth" /></td>
				</tr>
			</table>

			<button
				style="width: 280px; height: 70px; font-size: 18px; color: white; background-color: #8C8C8C; margin-top: 40px; float: left; font-weight: bold; border: none;">취소</button>

			<button onclick="check2();"
				style="width: 280px; height: 70px; font-size: 18px; color: white; background-color: #6E85B2; margin-top: 40px; float: right; font-weight: bold; border: none;">수정완료</button>

		</div>
	</div>

</body>
