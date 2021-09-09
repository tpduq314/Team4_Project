/**
 * member.js
 */
 
 function join_check(){
	if($.trim($("#mem_id").val())==""){
		alert("회원아이디를 입력하세요!");
		$("#mem_id").val("").focus();
		return false;
	}

	if($.trim($("#mem_name").val())==""){
		alert("회원이름을 입력하세요!");
		$("#mem_name").val("").focus();
		return false;
	}
	
	if($.trim($("#mem_addr").val())==""){
		alert("주소를 입력하세요!");		
		return false;
	}
	
	if($.trim($("#mem_phone02").val())==""){
		alert("폰번호를 입력하세요!");
		$("#mem_phone02").val("").focus();
		return false;
	}
	if($.trim($("#mem_phone03").val())==""){
		alert("폰번호를 입력하세요!");
		$("#mem_phone03").val("").focus();
		return false;
	}
	if($.trim($("#mail_id").val())==""){
		alert("전자우편을 입력하세요!");
		$("#mail_id").val("").focus();
		return false;
	}
	if($.trim($("#mail_domain").val())==""){
		alert("전자우편을 입력하세요!");		
		return false;
	}
}//join_check()


//중복아이디 검색
function id_check(){
 /* copy begin */
	$("#idcheck").hide();
	//아이디 영역을 숨김
	$mem_id=$.trim($("#mem_id").val());
	//1.입력글자 길이 체크
	if($mem_id.length < 4){
		$newtext='<font color="red" size="3"><b>아이디는 4자 이상이어야 합니다.</b></font>';
		$("#idcheck").text('');
		//idcheck 아이디 영역 문자열을 초기화
		$("#idcheck").show();
		//idcheck 아이디 영역을 보이게 함.
		$("#idcheck").append($newtext);
		//idcheck영역에 문자열을 추가
		$("#mem_id").val('').focus();
		return false;
	};
	if($mem_id.length > 12){
		$newtext='<font color="red" size="3"><b>아이디는12자 이하이어야 합니다.</b></font>';
		$("#idcheck").text('');
		//idcheck 아이디 영역 문자열을 초기화
		$("#idcheck").show();
		//idcheck 아이디 영역을 보이게 함.
		$("#idcheck").append($newtext);
		//idcheck영역에 문자열을 추가
		$("#mem_id").val('').focus();
		return false;
	};
	//2.입력글자 확인
	if(!(validate_userid($mem_id))){
		$newtext='<font color="red" size="3"><b>아이디는 영문소문자,숫자,_조합만 가능합니다.</b></font>';
		$("#idcheck").text('');
		$("#idcheck").show();
		$("#idcheck").append($newtext);
		$("#mem_id").val('').focus();
		return false;
	};
	//아이디 중복확인
    $.ajax({//$는 jQuery란 뜻. $.ajax 뜻은 jQuery 내의 비동기식 아작스 실행
        type:"POST",//데이터를 서버로 보내는 방법  
        url:"mem_idcheck", //서버 매핑 주소
        data: {"id":$mem_id},  //좌측 id 피라미터 이름에 우측 $mem_id변수값을 저장
        datatype:"int",//서버의 실행된 결과값을 사용자로 받아오는 자료형 타입
        success: function (data) {//success는 아작스로 받아오는것이 성공했을경우
        	//서버 데이터를 data변수에 저장
      	  if(data==1){//중복 아이디가 있다면
      		$newtext='<font color="red" size="3"><b>중복 아이디입니다.</b></font>';
      		$("#idcheck").text('');
        	$("#idcheck").show();
        	$("#idcheck").append($newtext);          		
          	$("#mem_id").val('').focus();
          	return false;
	     
      	  }else{//중복 아이디가 아니면
      		$newtext='<font color="blue" size="3"><b>사용가능한 아이디입니다.</b></font>';
      		$("#idcheck").text('');
      		$("#idcheck").show();
      		$("#idcheck").append($newtext);
      		$("#mem_pwd").focus();
      	  }  	    	  
        },
    	  error:function(){//비동기식 아작스로 서버디비 데이터를
    		  //못가져와서 에러가 발생했을 때 호출되는 함수이다.
    		  alert("data error");
    	  }
      });//$.ajax
 /* end */	
}//id_check()


//정규표현식
function validate_userid($mem_id)
{
  var pattern= new RegExp(/^[a-z0-9_]+$/);//아이디를 영문소문
  //자와 숫자 와 _조합으로 처리
  return pattern.test($mem_id);
};




//메일 주소 선택과 직접입력
function domain_list(){
  var num=m.mail_list.selectedIndex;//선택한 목록 항목 번호
  if(num == -1){//목록이 선택되지 않았을때 실행
	  return true;
  }
  if(m.mail_list.value =="직접입력"){
	  m.mail_domain.value = "";
	  m.mail_domain.readOnly=false;//쓰기 가능
	  m.mail_domain.focus();//입력박스로 포커스 이동
  }else{//목록에서 멜주소를 선택한 경우
	 m.mail_domain.value=m.mail_list.options[num].value;
	 //목록 옵션 value값이 멜도메인 입력박스로 입력
	 m.mail_domain.readOnly=true;//읽기만 가능
  }
}//domain_list()


 