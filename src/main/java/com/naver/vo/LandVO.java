package com.naver.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class LandVO {
	
	private String land_code; //랜드마크 코드
	private String land_name; //랜드마크 이름
	private String land_pic01; //랜드마크 사진01
	private String land_pic02;
	private String land_pic03;
	private String land_desc; //랜드마크 설명
	private String pack_code; //패키지 코드(외래키)
}
