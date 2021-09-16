package com.naver.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class HotelVO {
	
	private String hotel_code; //호텔 코드
	private String hotel_name; //호텔 이름
	private String hotel_pic; //호텔 사진
	private String hotel_desc; //호텔 설명
	private String pack_code; //패키지 코드(외래키)


}
