package com.naver.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemVO {
	
	private String mem_id;//회원 아이디
	private String mem_pwd;//비번
	private String mem_name;//회원이름
	private String mem_addr; //주소
	private String mem_phone01;//폰번호
	private String mem_phone02;
	private String mem_phone03;
	private String mail_id;//메일 아이디
	private String mail_domain;//메일 도메인
    private String mem_date;

}
