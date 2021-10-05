<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<script src="./resources/js/jquery.js"></script>
<script src="./resources/js/member.js"></script>

</head>
	

<style>
/*헤드 css*/
* {
	margin: 100;
	padding: 0;
	text-decoration: none;
	box-sizing: border-box;
}

body {
	min-height: 100vh;
	background-color: white;
}
/* 아이디,비밀번호,이메일,이름,핸드폰번호 위치css*/
.signup_form {
	width: 600px;
	background-color: #f1f1f1;
	height: 750px;
	padding: 80px 40px;
	border-radius: 10px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%)
}
/*헤드 위치 css */

/*중복확인 css*/
.overlap {
	height: 20px;
	border: none;
	background: linear-gradient(120deg, #E2E2E2, #4F4F4F); D 0%, #B721FF
	100%);
	border-radius: 10px;
	
}

/*아이디,비밀번호,이메일,이름,핸드폰번호 경계 css*/
.txtb {
	width: 400px;
	height: 50px;
	margin-top: 5px;
	margin-bottom: 5px;
	margin-left: 60px;

}

h1 {
	text-align: center;
	margin-bottom: 30px;
}

/*아이디,비밀번호,이메일,이름,핸드폰번호 dox css*/
.txtb input {
	font-size: 15px;
	color: #333;
	border: none;
	height: 40px;
	width:400px;
	outline: none;
	padding-left: 5px;
	border: black solid 1px;
}

/* sign up 버튼  css*/
.signup_btn {
	display: block;
	width: 400px;
	height: 60px;
	border: none;
	background-color: #08AEEA;
	background-image: linear-gradient(120deg, #ff9068, #fd746c);
	/*로그인으로 돌아가기 text css*/
	border-radius: 10px;
	background-size: 200%;
	border-color: white;
	color: none;
	outline: none;
	cusor: pointer;
	transition: .5s;
	margin-left: 60px;
	margin-top: 20px;
}

.signup_btn: hover {
	background-position: right;
}
/* 로그인으로 돌아가기 text 위치 css*/
.bottom-text {
	margin-top: 30px;
	text-align: center;
}

.bottom-text a {
	color: #F15F79;
}

select {
	height:42px; width:28%;margin-left: 3px; margin-right: 3px;
}

</style>
<%


%>

<body>

	<form name="mem" method="post" action="mem_join_ok"
		onsubmit="return join_check();">

		<div class="signup_form">
			<h1>SIGN UP</h1>
			<div class='txtb'>
				<input name="mem_id" id="mem_id" type="text"
					placeholder='아이디를 입력해주세요.' style="float: left; width: 70%;">
				<input type='button' class='overlap' value='중복확인'
					onclick="id_check();" style="float: right; width: 25%; border: none;">
			</div>

			<div class='txtb' style="height: 15px;">
				<span id="idcheck" style="size: 12px;"></span>
			</div>
			<div class="txtb">
				<input name="mem_pwd" id="mem_pwd" type="password"
					placeholder='비밀번호를 입력해주세요.'>
			</div>

			<div class="txtb">
				<input name="mem_name" id="mem_name" type="text"
					placeholder='이름을 입력해주세요. '>
			</div>

			<div class="txtb">
				<input name="mail_id" id="mail_id" placeholder='이메일을 입력해주세요.'style="width: 45%;"> @
				<input name="mail_domain" id="mail_domain" placeholder='도메인을 입력해주세요.' style="width: 45%;">
			</div>

			<div class="txtb">
				<input name="mem_addr" id="mem_addr" type="text"
					placeholder='주소를 입력해주세요. '>
			</div>

			<div class="txtb">
			<select name="mem_phone01" id="mem_phone01">
							<c:forEach var="p" items="${phone}">
								<option value="${p}">${p}</option>
							</c:forEach></select>
			- <input name="mem_phone02" id="mem_phone02" size="4" maxlength="4" style="width:28%;margin-left: 3px; margin-right: 3px;"/> 
			- <input name="mem_phone03" id="mem_phone03" size="4" maxlength="4" style="width:28%;margin-left: 3px; margin-right: 3px;"/>
			</div>

			<input type='submit' class='signup_btn' value='SIGN UP'>
			<div class="bottom-text">
				<a href="/Project/login"> 로그인으로 돌아가기 </a>
			</div>
		</div>
	</form>
</body>
