create table mem(
  mem_id varchar2(100) primary key
  ,mem_pwd varchar2(200) not null --암호화 된 비번
  ,mem_name varchar2(50) not null --회원이름
  ,mem_addr varchar2(100)  --주소
  ,mem_phone01 varchar2(10) --폰번호
  ,mem_phone02 varchar2(10) 
  ,mem_phone03 varchar2(10)
  ,mail_id varchar2(30)--메일 아이디
  ,mail_domain varchar2(100) --메일 도메인
  ,mem_date date --가입날짜
);

insert into mem (mem_id,mem_pwd,mem_name,mem_addr,mem_phone01,mem_phone02,mem_phone03,
mail_id,mail_domain,mem_date) values('aaaaa','77777','홍길동','서울시 동작구 노량진동 00빌딩','010','7777',
'7777','aaaaa','daum.net',sysdate);

create table package(
	pack_code varchar2(20) primary key --상품 코드
	,pack_name varchar2(100) not null --상품 이름
	,pack_desc varchar2(100) not null --상품 설명
	,pack_main_cate varchar2(50) not null --여행 국가 이름
	,pack_sub_cate varchar2(50) not null --여행 국가의 도시 이름
	,pack_pic01 varchar2(100) not null --메인 사진
	,pack_pic02 varchar2(100) not null 
	,pack_pic03 varchar2(100) not null 
	,pack_pic04 varchar2(100) not null 
	,pack_price varchar2(20) not null --상품 가격
	,pack_date varchar2(20) not null --출국 날짜 
);

create table hotel(
	hotel_name varchar2(100) primary key --호텔 이름
	,hotel_pic varchar2(100) not null --호텔 사진
	,hotel_desc varchar2(300) not null --호텔 상세내용 
	,hotel_pack_code varchar2(20) not null
	,foreign key(hotel_pack_code) references package(pack_code)
); 

create table landmark(
	land_name varchar2(100) primary key --여행지 이름
	,land_pic varchar2(100) not null --여행지 사진
	,land_desc varchar2(300) not null --호텔 상세내용
	,land_pack_code varchar2(20) not null
	,foreign key(land_pack_code) references package(pack_code)
);





select *from mem;