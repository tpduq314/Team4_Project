<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=">
  <title>login</title>
</head>
<style>
  /*헤드 css*/
  *{
   margin: 0;
  padding : 0; 
  text-decoration:none; 
  box-sizing : border-box;
}
body{
 min-height:100vh;
background: -webkit-linear-gradient(to right, #ff9068, #fd746c);
background: white;
}
/*아이디, 비밀번호 위치 css*/
.Login_Form{
  width : 400px;
  background-color : #0000;
  height : 500px;
  padding : 40px 40px;
   border-radius: 10px;
  position : absolute;
  left : 50%;
  top:50%;
  transform : translate(-50%,-50%)
}
/* 헤드 위치 css*/
.Login_Form h1{
text-align:center;
  margin-bottom : 60px;
}
/* 아이디,비밀번호 경계 css*/
.txtb{
  border-bottom: 2px solid #adadad;
  position : relative; 
  margin : 30px 0;   
  }
/*아이디 , 비밀번호 text css*/
.txtb input{
  font-size : 15px; 
  color : #333; 
  width : 100%;
  border : none; 
  padding : 0 5px; 
  height : 40px; 
  outline : none;   
}
/*아이디,비밀번호 색상 위치 모양 css*/
.loginbt{
  display : block; 
  width :100%;
  height : 50px; 
  border : none; 
  background: -webkit-linear-gradient(to right, #ff9068, #fd746c);
background: linear-gradient(120deg, #ff9068, #fd746c);
D 0%, #B721FF 100%);
 border-radius : 10px;
 background-size : 200%;
  border-color: white;
  color : #fff; 
  outline : none ;
  cusor : pointer;
  transition :.5s;   
}

.loginbt: hover{
  background-position : right; 
}

.bottom-text{
 margin-top: 30px;
  text-align : center;
} /* 회원가입하기 text 색상*/
.bottom-text a {
  color : #F15F79;
}
.footer_box{
	position:relative;
	width:100%;
	height:400px;
}

</style>


<body>

	<form method="post" action="mem_login_ok" onsubmit="return login_check();">
		<div class="Login_Form">
			<h1>LOGIN</h1>
			<div class='txtb'>
				<input id="login_id" name="login_id" type="text" placeholder='아이디를 입력해주세요.'> 
			</div>

			<div class="txtb">
				<input id="login_pwd" name="login_pwd" type="password" placeholder='비밀번호를 입력해주세요.'>
			</div>

			<input type='submit' class='loginbt' value='Login'>
			<div class="bottom-text">
				아이디가 없으세요?
				 <input type="button" value="회원가입하기"
					onclick="location='login_mem';"
					style="color: #F15F79; border: none; font-size: 15px; background-color: white; font-weight: bold;" />
			</div>
		</div>
	</form>
<%-- 	<div class="footer box">
		<div id="footer">
		<jsp:include page="footer.jsp"/>
		</div>
		</div> --%>
</body>
</html>