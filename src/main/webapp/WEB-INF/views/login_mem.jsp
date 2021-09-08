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
	width: 400px;
	background-color: #f1f1f1;
	height: 600px;
	padding: 80px 40px;
	border-radius: 10px;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%)
}
/*헤드 위치 css */
.signup_form h1 {
	text-align: center;
	margin-bottom: 60px;
	color: none;
}

/*중복확인 css*/
.overlap {
	display: block;
	width: 100%;
	height: 20px;
	border: none;
	background: linear-gradient(120deg, #E2E2E2, #4F4F4F); D 0%, #B721FF
	100%);
	border-radius: 10px;
	background-size: 200%;
	outline: none;
}

/*아이디,비밀번호,이메일,이름,핸드폰번호 경계 css*/
.txtb {
	border-bottom: 2px solid #adadad;
	position: relative;
	margin: 30px 0;
}

/*아이디,비밀번호,이메일,이름,핸드폰번호 dox css*/
.txtb input {
	font-size: 15px;
	color: #333;
	width: 100%;
	border: none;
	padding: 0 5px;
	height: 40px;
	outline: none;
}

/* sign up 버튼  css*/
.signup_btn {
	display: block;
	width: 100%;
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
</style>

<body>
	<form name="m" method="post" action="member_join_ok"
		onsubmit="return join_check();">

		<div class="signup_form">
			<h1>SIGN UP</h1>
			<div class='txtb'>
				<input name="mem_id" id="mem_id" type="text"
					placeholder='아이디를 입력해주세요.'>
			</div>

			<input type='button' class='overlap' value='중복확인'
				onclick="id_check();"> <br /> <span id="idcheck"></span>

			<div class="txtb">
				<input name="mem_pwd" id="mem_pwd" type="password"
					placeholder='비밀번호를 입력해주세요.'>
			</div>

			<div class="txtb">
				<input name="mem_name" id="mem_name" type="text"
					placeholder='이름을 입력해주세요. '>
			</div>

			<div class="txtb">
				<input type="email" placeholder='이메일을 입력해주세요.'>
			</div>

			<div class="txtb">
				<input type="text" placeholder='핸드폰 번호를 입력해주세요. '>
			</div>

			<div class="txtb">
				<input name="mem_addr" id="mem_addr" type="text"
					placeholder='주소를 입력해주세요. '>
			</div>

			<div class="txtb">
				<input name="mem_phone02" id="mem_phone02" size="4" maxlength="4"
						/>-<input name="mem_phone03" id="mem_phone03"
						size="4" maxlength="4"  />
			</div>

			<input type='submit' class='signup_btn' value='SIGN UP'>
			<div class="bottom-text">
				<a herf='#'> 로그인으로 돌아가기 
			</div>
		</div>
	</form>
</body>
</html>