package com.naver.vo;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PackVO {
	
	private String pack_code;//상품 코드
	private String pack_name;//상품 이름
	private String pack_desc;//상품 설명
	private String pack_main_cate;//여행 국가 이름
	private String pack_sub_cate;//여행 국가의 도시
	private String pack_pic01;//메인 사진
	private String pack_pic02;
	private String pack_pic03;
	private String pack_pic04;
	private String pack_price;//상품 가격
	private String pack_date;//출국 날짜
	
}