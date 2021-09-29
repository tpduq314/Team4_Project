package com.naver.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CliVO {

	private int cli_no; //예약자 번호
	private String cli_name; // 이름
	private String cli_birth; // 생년월일
	private String cli_gender; //성별
	private String cli_email; //이메일
	private String cli_phone01; //핸드폰 번호
	private String cli_phone02; //집 번호
	private String res_code; //예약 코드
}
