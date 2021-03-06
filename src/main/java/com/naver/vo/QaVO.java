package com.naver.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QaVO {
	
	private int qa_no; //시퀀스 넘버
	private String qa_phone; //핸드폰번호
	private String qa_mail_id; //메일주소
	private String qa_title; //문의 제목
	private String qa_cont; //문의 내용
	private String res_code; //예약번호
	private String mem_id; //회원 아이디
	private String qa_date; //문의 시간
}
