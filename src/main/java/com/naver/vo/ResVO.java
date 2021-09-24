package com.naver.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ResVO {
	private String res_code; //예약 코드
	private String res_count01; //성인 수
	private String res_count02; //소아 수
	private String res_count03; //유아 수
	//private String res_start_date; //출발 날짜
	private String res_total_price; //총 가격
	private String res_date; //예약 날짜
	//private String pack_code; //패키지 코드
	private String mem_id; //회원 아이디

}
