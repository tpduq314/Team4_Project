package com.naver.vo;

import lombok.Data;

@Data
public class QaVO {
	
	private int qa_no; //시퀀스 넘버
	private String qa_phone; //핸드폰번호
	private String mail_id; //메일주소
	private String qa_title; //문의 제목
	private String qa_cont; //문의 내용
	private String res_code; //예약번호
	private String qa_date; //문의 시간
}
