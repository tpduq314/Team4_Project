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
	,pack_pic01 varchar2(1000) not null --메인 사진
	,pack_pic02 varchar2(100) not null 
	,pack_pic03 varchar2(100) not null 
	,pack_pic04 varchar2(100) not null 
	,pack_price varchar2(20) not null --상품 가격
	,pack_date varchar2(20) not null --출국 날짜 
);

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a123','캐나다 여행','캐나다 여행은 즐거워','북미','캐나다','https://dimgcdn.ybtour.co.kr/TN/b3/b3cd7d1308f5fc087516412dfe0df4db.tn.410x280.jpg','7777','7777','7777','10000','20210324');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a124','미국 여행','미국 여행은 즐거워','북미','미국','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1mE31A55zaWmWJ8354D-wGvJw_eYAVyI_g&usqp=CAU','7777','7777','7777','10000','20210324');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a125','한국 여행','한국 여행은 즐거워','아시아','한국','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXO8Bjv5G4_yEsZOAurYQdJSqXT9JFKaphfg&usqp=CAU','7777','7777','7777','10000','20210324');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a126','일본 여행','일본 여행은 즐거워','아시아','일본','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTN-QLMXdnGZHqrCKOkLVjtJs3QfxSLkSIbwg&usqp=CAU','7777','7777','7777','10000','20210324');


insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a128','중국 여행','중국 여행은 즐거워','아시아','중국','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQncARM8nat04KiH-tZxUCuWKxsMxxzSIn5nA&usqp=CAU','7777','7777','7777','10000','20210324');

drop table package;
drop table landmark;
drop table hotel;

select * from package;

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