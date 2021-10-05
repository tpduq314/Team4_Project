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
drop table mem;

insert into mem (mem_id,mem_pwd,mem_name,mem_addr,mem_phone01,mem_phone02,mem_phone03,
mail_id,mail_domain,mem_date) values('aaaaa','77777','홍길동','서울시 동작구 노량진동 00빌딩','010','7777',
'7777','aaaaa','daum.net',sysdate);

select * from mem;

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
	,pack_price01 varchar2(20) not null -- 어른 상품 가격
	,pack_price02 varchar2(20) not null -- 유아 상품 가격
	,pack_price03 varchar2(20) not null -- 소아 상품 가격
	,pack_start_date varchar2(20) not null --출국 날짜 
	,pack_end_date varchar2(20) not null --입국 날짜
	,pack_duration varchar2(50) not null --패키지 기간
	,pack_detail varchar2(200) not null --포함 내역
	,pack_none_detail varchar2(200) not null --불포함 내역
);

select * from PACKAGE;



drop table package;
drop table landmark;
drop table hotel;

select * from package;

create table hotel(
	hotel_code varchar2(50) primary key,
	hotel_name varchar2(100) not null --호텔 이름
	,hotel_pic varchar2(500) not null --호텔 사진
	,hotel_desc varchar2(300) not null --호텔 상세내용 
	,hotel_address varchar2(100) not null --호텔 주소
	,hotel_phone varchar2(100) not null --호텔 전화번호
	,hotel_fax varchar2(100) not null --호텔 팩스
	,hotel_homepage varchar2(100) not null --호텔 홈페이지
	,hotel_pack_code varchar2(20) not null 
	,foreign key(hotel_pack_code) references package(pack_code)
); 
drop table hotel;

select * from hotel;

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values ('h1','호텔A','https://dimgcdn.ybtour.co.kr/TN/7b/7b01e6f6ba59c7f94e48ee5e9ef646d8.tn.410x280.jpg','호텔 A 설명','284 Prabaramee Road Patong Beach','66-76-380050','34789234','http://www.diamondcliff.com','a128');
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values ('h2','호텔B','https://dimgcdn.ybtour.co.kr/TN/7b/7b01e6f6ba59c7f94e48ee5e9ef646d8.tn.410x280.jpg','호텔 B 설명','284 Prabaramee Road Patong Beach','66-76-380050','34789234','http://www.diamondcliff.com','a128');
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values ('h3','호텔C','https://dimgcdn.ybtour.co.kr/TN/7b/7b01e6f6ba59c7f94e48ee5e9ef646d8.tn.410x280.jpg','호텔 C 설명','284 Prabaramee Road Patong Beach','66-76-380050','34789234','http://www.diamondcliff.com','a128');

create table landmark(
	land_code varchar2(50) primary key
	,land_name varchar2(100) not null --여행지 이름
	,land_pic01 varchar2(100) not null --여행지 사진
	,land_pic02 varchar2(100) not null
	,land_pic03 varchar2(100) not null
	,land_desc varchar2(300) not null --여행지 상세내용
	,land_pack_code varchar2(20) not null
	,foreign key(land_pack_code) references package(pack_code)
);

insert into landmark(land_code,land_name,land_pic01,land_pic02,land_pic03,land_desc,land_pack_code) values('l1','루스키섬','https://dimgcdn.ybtour.co.kr/TN/a5/a59d7b6644d852bdc6ca20cc7df15de0.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a5/a59d7b6644d852bdc6ca20cc7df15de0.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a5/a59d7b6644d852bdc6ca20cc7df15de0.tn.410x280.jpg','랜드마크A 설명','a128');
insert into landmark(land_code,land_name,land_pic01,land_pic02,land_pic03,land_desc,land_pack_code) values('l2','원마운트','https://www.onemount.co.kr/web/images/clip/offi_1_1_img01.jpg','https://dimgcdn.ybtour.co.kr/TN/a5/a59d7b6644d852bdc6ca20cc7df15de0.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a5/a59d7b6644d852bdc6ca20cc7df15de0.tn.410x280.jpg','랜드마크B 설명','a128');

select *from landmark;

create table res(
	res_code varchar2(50) primary key --예약 코드
	,res_count01 varchar2(10) not null --성인 수
	,res_count02 varchar2(10) not null --소아 수
	,res_count03 varchar2(10) not null --유아 수
	,res_start_date varchar2(50) not null --출발일
	,res_end_date varchar2(50) not null --도착일
	,res_airport varchar2(50) not null --항공
	,res_hotel varchar2(50) not null --호텔
	,res_total_price varchar2(100) not null --총 가격
	,res_date date --예약 날짜
	,res_req varchar2(500)  --요청사항
	,mem_id varchar2(100) not null --예약 멤버 아이디
	,pack_code varchar2(20) not null  --패키지 코드
	,foreign key(pack_code) references package(pack_code)
	,foreign key(mem_id) references mem(mem_id)
);


select * from res;

drop table res;

select * from package, res where package.pack_code = res.pack_code;
select * from mem, res where mem.mem_id = res.mem_id;

create table cli(
	cli_no number(38) primary key --예약자 번호
	,cli_name varchar2(50) not null --이름
	,cli_birth varchar2(50) not null --생년월일
	,cli_gender varchar2(50) not null --성별
	,cli_email varchar2(100) not null --이메일
	,cli_phone01 varchar2(50) not null --핸드폰 번호
	,cli_phone02 varchar2(50) --집 번호
	,res_code varchar2(50) not null --예약 번호
	,foreign key(res_code) references res(res_code)
);

drop sequence no_seq;
create sequence no_seq
start with 1
increment by 1
nocache;

select * from cli;

drop table cli;

create table qa(
	qa_no number(38) primary key--문의자 번호
	,qa_phone varchar2(20) not null--핸드폰번호
	,qa_mail_id varchar2(100) not null--메일 아이디
	,qa_title varchar2(50) not null--문의내용 제목
	,qa_cont varchar2(1000) not null --문의 사항
	,qa_date date --문의 날짜
	,res_code varchar2(50) not null--예약 번호
	,mem_id varchar2(100) not null
	,foreign key(res_code) references res(res_code)
	,foreign key(mem_id) references mem(mem_id)
);

drop table qa;

drop sequence seq_qano;

create sequence seq_qano
start with 1
increment by 1
nocache;

insert into qa 
	(qa_no, qa_phone, qa_mail_id, qa_title, qa_cont, res_code, mem_id, qa_date) values 
	(seq_qano.NEXTVAL, '010-0100-1111', 'tpduq','제목','시퀀스 테스트','9746','aaaa',sysdate );

select * from qa;


--예시
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('코드','제목','설명','하와이/미국/캐나다','괌','','','','','1579000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('a128','캐나다 여행','캐나다 여행은 즐거워','북미','캐나다','https://dimgcdn.ybtour.co.kr/TN/b3/b3cd7d1308f5fc087516412dfe0df4db.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','2299000','1853120','445880','2021.09.10','2021.09.10','2박 3일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--괌
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('PGP7013','괌 더츠바키타워+조식포함','[오후출발 6일]','괌/사이판','괌','https://dimgcdn.ybtour.co.kr/TN/a4/a4a3cdbd1f77af8bf0a6edab1bb3e024.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a4/a4a3cdbd1f77af8bf0a6edab1bb3e024.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/e6/e67dd619e597fbcf1651bd88d39e1cec.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/9b/9bfc8d547f733734c837f38858e67371.tn.410x280.jpg','1579000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('PGH3028','[허니문]괌 롯데호텔','렌트카 1일 + 노팁','괌/사이판','괌','https://dimgcdn.ybtour.co.kr/TN/f2/f267a3847046aaebe24c31c2c190b5fc.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/72/72e1c31d914b436b1ee742c8d940f4a2.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/f3/f302be748c87f47062a78347f0204bdd.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fa/fa77a150ce97e9327bfcea658adc1f9c.tn.410x280.jpg','1579000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('PGP1009','괌 PIC','GOLD + 퍼시픽판타지디너쇼','괌/사이판','괌','https://dimgcdn.ybtour.co.kr/TN/5c/5cccfd1c166cb904e4ab6592f61f57b9.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/08/086017c264188c43d48a03ffd3bfc0b1.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/b6/b6affe61b48f8d438fb696cb42e4e61a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/0c/0ca4c1f77e5f24dbac953cbedb0afc37.tn.410x280.jpg','1579000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--사이판
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('PSP3050','월드 리조트 SAIPAN 8일','[사이판/트래블버블]','괌/사이판','사이판','https://dimgcdn.ybtour.co.kr/TN/c5/c50e121b449acbf59b0f1c8a2fb56fb6.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/9b/9b65f47a9f12d1d5854f38ba481c3a1a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a4/a4b8e945d1cd705a0b8b5959dac397e5.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/0d/0d0e2cdaa1a0ddecba46f3b491a7f128.tn.410x280.jpg','1029000','387000','149000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('PSP4011','사이판 켄싱턴 5박','노팁 + 노쇼핑','괌/사이판','사이판','https://dimgcdn.ybtour.co.kr/TN/43/43ddf8d8963d4b7dfece020be0b696a8.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/4d/4d07c33618ddbc52d8f018e87af09563.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/43/435a6155f4e3aa425e08d3d044668459.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/59/59ea96032f82f7d292e57d3bcd062b64.tn.410x280.jpg','1579000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--팔라우
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('PPP1002','팔라우 퍼시픽','가든뷰 5일','괌/사이판','팔라우','https://dimgcdn.ybtour.co.kr/TN/19/19a24f203d5fca6ae4912f05e7fd72c7.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/e6/e6c029a0cd796760253e266ebd979d7a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/1d/1d192668e03ef57fafa90b7092fd0544.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/19/19a24f203d5fca6ae4912f05e7fd72c7.tn.410x280.jpg','1599000','739000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('PPP1007','팔라우 로얄리조트','가든뷰 5일','괌/사이판','팔라우','https://dimgcdn.ybtour.co.kr/TN/2b/2b28a5762047f1402e068bdfc10d4049.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/77/77fcf3f7773a7f38981875b2d0444fce.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/a9/a9c1d8a88fb1b22c6230e3994db9d5c5.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/2b/2b28a5762047f1402e068bdfc10d4049.tn.410x280.JPG','1359000','739000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--하와이
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NHP1101','자유로운 하와이 6일','관광 1일 + 자유 3일','하와이/미국/캐나다','하와이','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/23/23316854a64c50248c780395a5718ba4.tn.410x280.jpg','2299000','1853120','445880','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NHP1094','력셔리 하와이 7일','비즈니스 탑승','하와이/미국/캐나다','하와이','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/98/9865add2b847ed6d921c313dc7387718.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/53/5381dfaf60037f30d847ccc69b2c705e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a9/a97361925135c25b22ab48cef62fea47.tn.410x280.jpg','6788000','5450240','1348760','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--미동부
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NEP1005','미동부 보스톤 캐나다 완전일주','미동부 BEST','하와이/미국/캐나다','미동부','https://dimgcdn.ybtour.co.kr/TN/87/87eeb90a67b7f31253bc0cd9f80dd0a0.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/99/9929d6eb3527a5941550c9c3428b6556.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/84/84be1d91b61fe24b6ce56af20991b1ad.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/75/75180ac67b26c25b24c963af181a7646.tn.410x280.JPG','3299000','2650400','648600','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NEP1015','뉴욕 워싱턴 나이아가라 7일','비즈니스 탑승','하와이/미국/캐나다','미동부','https://dimgcdn.ybtour.co.kr/TN/65/657d4c55ff4ecb96216ba1586168429d.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/65/653b20fb081ae59bad9d9e6d5c845d80.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/9a/9a607ebf75347a894951b34f06d2fabe.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/53/53b7edd22f1c77183758bfd176d632dc.tn.410x280.JPG','3199000','2575320','623680','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NEP1024','미동부 완전 일주','뉴욕 시내 호텔 숙박','하와이/미국/캐나다','미동부','https://dimgcdn.ybtour.co.kr/TN/6d/6d4b3cbdac43be30b845a64313655680.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/cd/cdb2b97f7c1235a72cc1091ba29bc4e4.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/b9/b94265dde3c76c5538874612b686df8e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/aa/aa62dfa2de89f8feae62349d128ca6b9.tn.410x280.jpg','13490000','10808120','2681880','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--중남미
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('SMH5011','시크릿더바인 7일','리조트 바우처 제공','하와이/미국/캐나다','중남미','https://dimgcdn.ybtour.co.kr/TN/f1/f1d60c98ea436a5af9ca86c40ab82423.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/14/1432ef4ba043400cdb03076d854f54f3.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/d0/d0daef2142ac2372f5929b5e5668c2a9.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/14/1432ef4ba043400cdb03076d854f54f3.tn.410x280.jpg','2699000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('SMF1012','파라디수스 7일','릴렉싱 마사지','하와이/미국/캐나다','중남미','https://dimgcdn.ybtour.co.kr/TN/26/26c8ac4a8c4537d67bef6f3c4f6c40c7.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/68/684440896559ebff2fafa110b7cb4c95.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a0/a0771965a4caf8c2ee94b2a46a4de0aa.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/2e/2e305e73b135482f4cfe488d56db70fa.tn.410x280.jpg','2399000','1199000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--미서부
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NCP5202','포클랜드 + 벤쿠버 8일','9월 신규취항','하와이/미국/캐나다','미서부','https://dimgcdn.ybtour.co.kr/TN/e3/e3c9132be18dfdf8e60417bba7b8bc1d.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/d1/d17b2ecfe6c859782266a67776505e79.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/89/89c5214b849acd5dabec52476f6f93ff.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/f4/f438622fc3502a9ba553a92640b62892.tn.410x280.jpg','3099000','2479200','619800','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NWP1025','미서부 3대 도시 10일','6인 단독','하와이/미국/캐나다','미서부','https://dimgcdn.ybtour.co.kr/TN/13/134651ae7765e299f8fe5dcd7312ab91.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/0c/0cde07d01f5a5f329485947362857597.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/27/27c6a4d9376bab1fa6e1b9d7baeac346.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/21/217a754c0441677a62fad3c05d2b4179.tn.410x280.jpg','4199000','3361440','837560','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--캐나다
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NCP1126','옐로나이프 오로라 5일','오로라 3회 관측','하와이/미국/캐나다','캐나다','https://dimgcdn.ybtour.co.kr/TN/7b/7b68bd517191d939dcddfd5423d5b10a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/39/39888d3f10f197aa53e74cf8e2dd224b.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/f4/f45bbea5a8e2856ecd14f70ea05b09b3.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/3c/3c19e3142d09f5cd0e35e61051d02319.tn.410x280.jpg','2799000','2245440','553560','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('NCP1110','벤쿠버 + 유콘 시내관광','화이트홀스에서 오로라 감상','하와이/미국/캐나다','캐나다','https://dimgcdn.ybtour.co.kr/TN/68/68b8c72c8869294c6ee5a324b258fa2f.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/cf/cf46b3d9caadcb7bc9e1b2ed83e947ae.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/83/833bc8ce09499734de7e0463e2bb4fde.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/4a/4ae7a18a55fcdb4578ccf47819736ba7.tn.410x280.jpg','3390000','2734560','66440','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--서유럽
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EWP2079','베른/루체른+융프라우','티본스테이크+곤돌라','유럽','서유럽','https://dimgcdn.ybtour.co.kr/TN/3a/3a8ca5bb7db91ac2e502c693401e6861.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fb/fb960fe276923d04362fcd8c7ecba3bb.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/54/54a884871c212c02c14d26fb13191468.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/47/472e057c49ff7edc03456163e3f725be.tn.410x280.jpg','2899000','2899000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EWP1027','이태리 일주 6일','항공 별도','유럽','서유럽','https://dimgcdn.ybtour.co.kr/TN/7a/7aeea823495495e40c9cf6408375e7ca.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/12/129ebb872daf76390aa1d5f65e3ed867.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/63/631180baf9a4522dc9d61d4649d3dbe1.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/dd/dd5c5627ce592bf088ea772a4796cac2.tn.410x280.jpg','1000000','1000000','1000000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--동유럽
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EEP1264','Lv1 동유럽 완전 일주 핵심 7일 코스','CJ온스타일/항공별도','유럽','동유럽','https://dimgcdn.ybtour.co.kr/TN/b0/b0baaa960dfe6f41ae978b7f39cee39a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/85/8525df8b03ac80fde1d53bc7787dfddb.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a7/a78d8c77ffd26b659e92f003bd432c82.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a4/a4b918c6b88607f7ce9c9fcb2394e945.tn.410x280.jpg','499000','499000','499000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EEP1154','동유럽 4국 9일','비즈니스 탑승','유럽','동유럽','https://dimgcdn.ybtour.co.kr/TN/99/99897c62991b42e78a3c3fad024dce69.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/88/88af75b15d6fbfa81521fe5a68a569a7.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fb/fb790b72baa5c21e69e5a9cf83b5fd6b.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/2c/2cbc1f466035561ce6cfda4ee53143b1.tn.410x280.jpg','4999000','4999000','1475520','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--그리스
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('ETP2096','꽉찬 그리스 + 터키 핵심 일주 10일','특급 5박 UP','유럽','그리스','https://dimgcdn.ybtour.co.kr/TN/2c/2ceb2d42b7a5a8977759da32a52dc328.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/6b/6baa751d79b8d760810a3078b90ef743.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/e7/e774f5237364c6bfb0ae9de7085630d5.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/df/dfb7785f494639ab0c262933a1550408.tn.410x280.jpg','1990000','1990000','199000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EMH1000','산토리니 7일','허니문/반자유','유럽','그리스','https://dimgcdn.ybtour.co.kr/TN/79/79fda36bc7aa4999d85877866ba1287d.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/21/2127db3415dde217ab878350a3f4bafa.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/04/04115cbc11ae0f24d2ac441a65c1e8e6.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/07/07fc15cab1ba49bb3491436f262a6c39.tn.410x280.JPG','2290000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--스페인
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EMP5043','스페인+포르투갈 7일','10대맛기행','유럽','스페인','https://dimgcdn.ybtour.co.kr/TN/89/8997d4b378dcb95a0a3d3ea1bb80912c.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/3c/3c810792bea24cc72a563d4d7eec498c.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/bd/bd93a0e3f53f070b2515848137011292.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/5c/5c8452cea69498608806947ae7d82f54.tn.410x280.jpg','3099000','3099000','309900','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EMP1137','스페인+포르투칼 9일 OZ','전일정 4성급 호텔 UP','유럽','스페인','https://dimgcdn.ybtour.co.kr/TN/97/979146a7af87cebafe0e6bd7c931412f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/ff/ff343fe77a863c015929a99b0f98803c.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/66/665bca393f35cdc6231d35de8d4e9b21.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/e6/e660c51fda1f6aee59469f5969829c5c.tn.410x280.jpg','2890000','2890000','289000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--독일
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EEP2033','베를린 관광','1급 호텔 2박 UP','유럽','독일','https://dimgcdn.ybtour.co.kr/TN/95/95d14d680bb0b9c10fd615a0b970a542.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/4b/4bbc50c40f9dd11168a85692533d73cb.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/d8/d828d786d004d9a41b19f0408638c04c.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/54/54dd48f8c5fe3043e3d33d0a466ee5a7.tn.410x280.jpg','3129000','3129000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EEP1261','독일+동유럽 3국','주말 출/도착','유럽','독일','https://dimgcdn.ybtour.co.kr/TN/a9/a9381819bf15be91041dd4875aae1e08.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/e2/e2b29fc5f62b0b066f461603cf643097.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/8d/8df37936afbb811dac21c1feebc5d2de.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/59/59af550d26014e2aea551eb7f96418d7.tn.410x280.jpg','1999000','1999000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--영국
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EWP3058','서유럽 4국 12일','리기산 하이킹+윈저/옥스퍼드','유럽','영국','https://dimgcdn.ybtour.co.kr/TN/4f/4fb7a3ca767f257abdb8863297efe726.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/68/68282b040d6e66b837a6289edd969b60.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/64/647f12f0e96ae77ad3cff787fc29a417.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/aa/aa6a11600995eb42e403c63e05b36986.tn.410x280.jpg','3199000','3199000','639800','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EWP4020','영국 일주 8일','NO팁/NO옵션','유럽','영국','https://dimgcdn.ybtour.co.kr/TN/97/9750dbe25d4d3a0c1baf81d8db22ad3e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/b8/b84cde19ef4d9b230f03962a85772c76.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/47/472e057c49ff7edc03456163e3f725be.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/15/153ad6d4dfff3fffa8ea60acc600f335.tn.410x280.jpg','3199000','3199000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--모로코
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EMP5180','스페인/모로코 12일','6대특식+2박호텔UP','유럽','모로코','https://dimgcdn.ybtour.co.kr/TN/87/8776401a75c91982b7124c447b1c5255.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/26/2606e90c552653cc1c7220174a73f741.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/5d/5d021e11639953c740018b5576d15c20.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/1d/1db2c9e924d0c93469d33dc8b0846b69.tn.410x280.jpg','2640000','2640000','264000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--발칸
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('EKP3039','발칸+동유럽 10일','3대도시 자유시간','유럽','발칸','https://dimgcdn.ybtour.co.kr/TN/0a/0a7597941f1984a670e29f5cb2ffce14.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/21/211a24143e413e55b71a0b1414d4e8f2.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/6f/6f2f0fffed0c4af049d37bdf75b72dea.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/02/02b2a4c8672f3a488d1a5fb2244f99bb.tn.410x280.jpg','2190000','2190000','633120','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--방콕
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('ATG1118','아유타야 3색 108홀','골프 투어','동남아','방콕','https://dimgcdn.ybtour.co.kr/TN/fd/fd120b59e4438d06d2d303e64e8fdf77.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/83/83da84e8528b673b0ecbccb1efb72e87.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/26/26057eef12c218af678f4ef8e7ca1e3c.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/38/381a090ba0cbe6977694962d5e922b5e.tn.410x280.jpg','779000','779000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
--('h64','크리스탈 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2005/06/14/30000/6de4740c-f3c3-4fdd-b001-1a598369bcdb.jpg','체크인 2PM / 체크아웃 12N','RUGENPARKSTRASSE 13 CH-3800 INTERLAKEN','41-33-822-6233','41-33-822-6233','http://www.crystal-hotel.ch','EKP3039');

--insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
--('h65','이비스 파리 알레지아','https://image.hanatour.com/usr/cms/resize/400_0/2006/01/17/10000/b135d06f-bb0f-4412-bc59-b269dc07d6c8.jpg','체크인 12:00 PM / 체크아웃 12:00 PM','49 Rue Des Plantes','33-1-53-90-40-00','33-1-53-90-40-00','http://www.accorhotels.com/gb/hotel-0959-ibis-paris-alesia-montparnasse-14th/index.shtml','EKP3039');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('ATP1134','레이트체크아웃 노보텔스위트','자유 1.5일+관광 1.5일','동남아','방콕','https://dimgcdn.ybtour.co.kr/TN/41/4165ace1067e790981dfa49a54322931.tn.410x280.PNG','https://dimgcdn.ybtour.co.kr/TN/6c/6c2274d89dd5e53cee8616b9b59d33b3.tn.410x280.PNG','https://dimgcdn.ybtour.co.kr/TN/4a/4a4a57147fb1c95d136930d968ef86b8.tn.410x280.PNG','https://dimgcdn.ybtour.co.kr/TN/e5/e5049b1a1baf9116b5c1f7315b272127.tn.410x280.PNG','639000','639000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--베트남
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('AVP7022','나트랑 알마리조트','신규오픈/오션뷰스위트','동남아','베트남','https://dimgcdn.ybtour.co.kr/TN/39/397a92852b38431b7fc8e640111b8a28.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/42/42c7490c2fd0f589da042e990e4ed3dd.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a4/a4b50d449c11b80dbc191d0df7d7f7b5.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/60/605cd1720f8bd63812f1fa3de1cee4be.tn.410x280.jpg','1499000','1219200','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('AVP4277','포포인츠바이쉐라톤 3박','자유일정','동남아','베트남','https://dimgcdn.ybtour.co.kr/TN/cd/cd71c5809ce9e0391cae19b9230960c4.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/33/3389940df88e51dfabe4ef0dfd4b0ffe.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/4e/4ec42f9537bc2d32f90f168a48a2cd88.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/c4/c417e29461c26b6e735b816acf8a5557.tn.410x280.jpg','799000','639200','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--치앙마이
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('ATP5026','왓반덴사원+반캉왓+온천 5일','반나절 자유일정','동남아','치앙마이','https://dimgcdn.ybtour.co.kr/TN/75/753ec54753f3827c5f166605eec5d530.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/78/780cc2e8053a9ab983c54d466a5d5a8a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/0b/0bf6c36176008af651aab3678cc8a0e5.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/6b/6ba59e8f2dcef7c9c17569ebf9d220cb.tn.410x280.jpg','919000','919000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('ATP5035','초특급 샹그릴라 호텔 5일','정글코스터체험','동남아','치앙마이','https://dimgcdn.ybtour.co.kr/TN/96/96c637cbccb382f91acd43c127e3e2d0.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/90/90bf2e0841aec0481f248018ef77232a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/03/036bf3e6b524481b4f00e0849662658a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/85/85bce17ae0718bffca051fa7fa8dea1c.tn.410x280.jpg','1699000','1699000','200000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--파타야
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('ATP1112','방콕&파타야 4인출발','야간시티투어/요트투어','동남아','파타야','https://dimgcdn.ybtour.co.kr/TN/ab/ab318080c76a2d4438c7c0b9c6331c45.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/8a/8a48f035470fdd9ed17554e772eeed85.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/ef/ef063454ff7b0f7b99b96f052adfc369.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/4c/4c42c3399c57ae5bc0fef2fe2518a5b6.tn.410x280.jpg','759000','759000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('ATP1052','초특급 케이프다라 5일','럭셔리 오션뷰','동남아','파타야','https://dimgcdn.ybtour.co.kr/TN/93/935c4fbd159e57054f62a31a9312e9d5.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fc/fca264c649b6878503bec9c38680ff02.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/11/110dc95e1203cac795a9fbc758e9843d.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/df/df80034bb6fe8f4cb57b0aeaf23a4237.tn.410x280.jpg','669000','669000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--세부
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('APP4112','솔레아+호핑투어','노쇼핑/4명단독','동남아','세부','https://dimgcdn.ybtour.co.kr/TN/c4/c4ec409feb20a6014a2a7285dfcce812.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/7a/7acc3af5e476037cd0ab68de902a553f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/2e/2e06db71d278d9f7574f298942d56d13.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/c4/c4ec409feb20a6014a2a7285dfcce812.tn.410x280.jpg','749000','699000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('APP5042','제이파크 리조트 ALL 포함','리조트식 제공','동남아','세부','https://dimgcdn.ybtour.co.kr/TN/d9/d991620a3dbfe63dd6a3ff0c9588f0a4.tn.410x280.png','https://dimgcdn.ybtour.co.kr/TN/ed/ed9e3b06724c20a4023f4005035c3df0.tn.410x280.png','https://dimgcdn.ybtour.co.kr/TN/94/946f05310c39b9be2bde9913f6538ef7.tn.410x280.png','https://dimgcdn.ybtour.co.kr/TN/9c/9c28c46992d9a15d0c7b52e543472547.tn.410x280.JPG','1299000','1199000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--마닐라
--코타키나발루
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('AMP1041','판포르네오 3박 5일','산호섬호핑투어+시내관광','동남아','코타키나발루','https://dimgcdn.ybtour.co.kr/TN/e2/e2fdb3374fbaf8c913803ba40e7b5065.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a9/a94dc3371314d89925511b1efa0c1808.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/c9/c9feebf3173becbf5c8f6ea33f597a28.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/d8/d8ead0c6ff6faacb5fa9e781fdb1de6f.tn.410x280.jpg','520200','440200','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('AMP3022','호핑투어+반딧불투어 포함','1박 자유','동남아','코타키나발루','https://dimgcdn.ybtour.co.kr/TN/79/791d130263c82955d83b814806db8cda.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/ef/eff26dfe79ebddcf008abac34293ee1a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/5a/5a808c31d2bf46cd319cf8db52525d88.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/96/964ca3c0716dde91a15eb7287ba90edd.tn.410x280.jpg','970200','670200','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--보라카이
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('APP1045','아잘리아 가족여행','호핑투어/디몰투어','동남아','보라카이','https://dimgcdn.ybtour.co.kr/TN/99/99043988c267c8296dfc226a8f2d771f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/ef/ef45b142e7d7b7f4ab9d1b4316c8dbb7.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/bd/bde705f1b0fc9bd34659ce0a6065c1b8.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/65/6538bb78f2e3166eba0766aa0f167480.tn.410x280.JPG','749000','749000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('APP1882','헤난크리스탈샌즈','호핑포함/화이트비치','동남아','보라카이','https://dimgcdn.ybtour.co.kr/TN/46/46cfeefc2c1fbad5553327fa02e1cd39.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/9d/9d90db589dacd1c11074a55a1605cd4a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/22/2226576341b70d22e68a680da1147988.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/2d/2d9a0a9a66375937bc8737ecaab4d4d1.tn.410x280.jpg','899000','899000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--홍콩
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CHP1085','인터컨티넬탈호텔','프리미엄','홍콩/마카오/대만','홍콩','https://dimgcdn.ybtour.co.kr/TN/aa/aa473a054c0de675b92db94cb1c24056.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/4f/4f481cbca0213e154664239bf3d2d307.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/64/64301d7c0b7575e2080c0a509dc8df14.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/1b/1bbeb302af7c996789cb7e36aa5490d6.tn.410x280.jpg','1799000','1799000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CHP1023','하버그랜드구룡_홍콩 3일','4인패키지','홍콩/마카오/대만','홍콩','https://dimgcdn.ybtour.co.kr/TN/d2/d2c82ed59c64a47e6e2c01c7ec1f60e4.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/56/56298ab9ea89d2d8aa17bd275d66caed.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/8a/8a89b8fb9118c5397d9e33501fc8d08d.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/f9/f9c2b014e7dae719e7dc0a2151c9178a.tn.410x280.jpg','2099000','2099000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--마카오
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CHP2029','베네시안숙박 4일','1일자유/노쇼핑','홍콩/마카오/대만','마카오','https://dimgcdn.ybtour.co.kr/TN/88/88c894cfb9dc7902d24eb8d153199f39.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/90/90d7a093ad275e228ecbc922457744f6.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/71/7198c0447f18beb26913c7abcc85d988.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/4e/4e290947f373045fc3793f5a63f82502.tn.410x280.jpg','2399000','2399000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CHP2026','MGM호텔','노쇼핑','홍콩/마카오/대만','마카오','https://dimgcdn.ybtour.co.kr/TN/a5/a56f2e7ee35365437ffff492c2b1ce07.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/9d/9d8884f12cd77977e5e2d652ada78ab5.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/48/48ea4e1740916b2e71d221af38a28ae0.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a5/a56f2e7ee35365437ffff492c2b1ce07.tn.410x280.jpg','2199000','2199000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--대만
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CIP1010','대만 먹거리 즐기기 4일','먹킷리스트','홍콩/마카오/대만','대만','https://dimgcdn.ybtour.co.kr/TN/16/16297cee5e1dafd9350f0c31a1dd0a42.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/68/6868e0065cddedb58553967129d4947b.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/ae/ae29cbe592a26de51764be61d0ec02a1.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/c6/c6432910c2595deb4dabc956f80ac036.tn.410x280.jpg','2299000','2299000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CIP1167','대만/야류/스펀/지우펀/야시장 4일','시내호텔/1일자유','홍콩/마카오/대만','대만','https://dimgcdn.ybtour.co.kr/TN/ed/ed752130930aeb01875aaa7b793df219.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/20/20d652534ff983a7ca09cbec02d29095.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/a9/a94974888f2950ae25d52df7f08563d4.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/5a/5af6c89b1ea4853d3fa157d8994f39bb.tn.410x280.jpg','1499000','1499000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--심천
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CHP4005','홍콩/마카오/심천 4일','세나도 광장/소수민족쇼','홍콩/마카오/대만','심천','https://dimgcdn.ybtour.co.kr/TN/5c/5c3fde4b7bf79b238f07ebc63d188984.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/d4/d4c12717914f1b18275b31ea4c29f663.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/000f01578dffb015b4dbd8a70ce1f875.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/90/9021cefb5d32bc6457e2c134bd2a2bfe.tn.410x280.jpg','2099000','2099000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--중앙아시아
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('AUP1001','우즈베키스탄 8박 9일','타슈켄트/알마티/사마르칸트','중앙아시아/몽골','중앙아시아','https://dimgcdn.ybtour.co.kr/TN/e7/e7f97a8014c3c4377679ec509c27e5b8.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/da/daa5f3083c06ede7a38f493bce64b510.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/59/5922c5aa6a00e59fed073a5563dc6dda.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/3c/3cc7d3bcb8b22bbcbdb9b26cd116fa30.tn.410x280.jpg','3450000','3450000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--몽골
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CXP2025','몽골/울란바토르 4일','승마체험/전신마사지','중앙아시아/몽골','몽골','https://dimgcdn.ybtour.co.kr/TN/f0/f0db2c5d98fb870d308d597a37c02e83.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/32/3257accf00a2cb4d689df95c068192a9.tn.410x280.png','https://dimgcdn.ybtour.co.kr/TN/49/49fd55fca6a73f520e2f9595452f1c01.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/83/8384414dcd1a44b3a6aa41bc56165f4f.tn.410x280.JPG','1779000','1779000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--북경
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CBP1001','북경 4일','김포 출발/발마사지','중국','북경','https://dimgcdn.ybtour.co.kr/TN/34/3476b6f9c3f5c358a22f0a8608b43839.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/2b/2b379e928174b6d2f892f8be98dc079f.tn.410x280.JPG','https://dimgcdn.ybtour.co.kr/TN/ae/ae3dd7e7540ccd2d4334b70b9a6c6844.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/2b/2b590dbee3a2d75f870950718efdc148.tn.410x280.JPG','1309000','1309000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CBP1005','북경 4대 시내거리 관광','VIP리무진','중국','북경','https://dimgcdn.ybtour.co.kr/TN/64/648c9f7d9e87cca875a9ccd679913c5b.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/98/98b732aadf6cc8d348f4b15a2fd282bb.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/61/610197ce9902e46e295a2964e43e3a07.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/61/61eb90c60666aa430c76aae78af79e2f.tn.410x280.jpg','909000','629000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--상해
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CPP1001','상해/항주/주가각 4일','최저가/실속호텔','중국','상해','https://dimgcdn.ybtour.co.kr/TN/0f/0f86aeca7fe33fa37888795b9ca9b149.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/e5/e54ea5da6be8b2d28e7ad2030b7cb08f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/d7/d70dd6924c7bdcd6aca1d4b3dafb56bb.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/b5/b549a4246c4c59420da94b15021013eb.tn.410x280.jpg','909000','909000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CPP1004','상해/항주/소주 4일','노옵션/노팁','중국','상해','https://dimgcdn.ybtour.co.kr/TN/79/79efbada3e4001e21412e9285383e972.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/72/7246fbe7b67ce427109c502c84759a15.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/e5/e54ea5da6be8b2d28e7ad2030b7cb08f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/26/26484cbe100836ebc425ee7885e8240c.tn.410x280.jpg','1109000','1109000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--하이난
--청도
insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CEP1002','청도/맥주박물관 3일','특급호텔','중국','청도','https://dimgcdn.ybtour.co.kr/TN/01/012a85d5dd11ff8fc728365dd975b992.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/1c/1c48348dc8165946319f5f01b2e34bc6.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/ff/ffd7624514c9aeb3292d20f151c9662f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/45/455c8e5e16a1a6050d4069512a7787cd.tn.410x280.jpg','909000','909000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_start_date,pack_end_date,pack_duration,pack_detail,pack_none_detail) 
values('CEP1014','청도/소어산/피차이위엔 3일','VIP리무진','중국','청도','https://dimgcdn.ybtour.co.kr/TN/c9/c9b353a77f63a268a3cba2736b37922f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/45/455c8e5e16a1a6050d4069512a7787cd.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/39/394916fa65adb35663a2cf498d0afe28.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/21/21fa5d4a1d05bc928ce0c99dd7f37e7a.tn.410x280.png','609000','609000','150000','2021.10.10','2021.10.15','4박 5일','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

--예시
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h1','호텔A','사진','호텔 A 설명','주소','번호','팩스','홈페이지','코드');

insert into landmark(land_code,land_name,land_pic01,land_pic02,land_pic03,land_desc,land_pack_code) 
values('l1','이름','사진1','사진2','사진3','랜드마크A 설명','a128');

--괌
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h4','두짓타니 괌 리조트','https://image.hanatour.com/usr/cms/resize/400_0/2015/12/16/10000/b4a92928-0e39-457b-a083-b10959caa200.jpg','[객실타입]
총 419개의 고급스러운 객실과 스위트 & 빌라를 보유하고 있습니다.
','1227 Pale San Vitores Road','1-671-648-8000','1-671-648-8000','http://www.dusit.com/dusitthani/guamresort/default-en.html','PGP7013');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h5','힐튼 괌 리조트 & 스파','https://image.hanatour.com/usr/cms/resize/400_0/2011/05/27/10000/c30316df-3d9e-4e05-9cd5-9fbe2e28b248.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','202 Hilton Road Tumon Bay','1-671-6461835','1-671-6461835','	http://www.hilton-guam.co.kr/','PGP7013');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h6','롯데 호텔 괌','https://image.hanatour.com/usr/cms/resize/400_0/2014/11/05/10000/06ac107e-3849-45ac-880c-da573b028137.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','185 Gun Beach Road','1-671-6466811','1-671-6466811','http://www.lottehotel.com/guam','PGH3028');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h7','하얏트 리젠시 괌','https://image.hanatour.com/usr/cms/resize/400_0/2010/06/15/10000/aa8e98c0-cb59-44ae-bc86-da6ece2a77dc.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','1155 Pale San Vitores Road','1-671-6471234','1-671-6471234','	http://www.guam.regency.hyatt.com/hyatt/hotels/','PGH3028');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h8','더 츠바키 타워','https://image.hanatour.com/usr/cms/resize/400_0/2020/02/04/10000/d8252fe1-99b2-40c1-8ccb-1ab33d4b50a5.jpg','체크인 3PM / 체크아웃 12N','241 Gun Beach Road, Tumon, Guam 96913','1-671-989-2646','1-671-989-2646','http://thetsubakitower.co.kr/','PGP1009');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h9','온워드 비치 리조트','https://image.hanatour.com/usr/cms/resize/400_0/2016/12/30/10000/8d028e09-00fb-42c7-974d-54d6b385c078.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','445 Governor Carlos G Camacho Road','16-71-6477777','16-71-6477777','http://www.onwardguam.com/hotel/en/','PGP1009');

--사이판
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h10','하얏트 리젠시 사이판','https://image.hanatour.com/usr/cms/resize/400_0/2017/01/08/10000/6a9b9f30-138f-4c8e-9333-6a0332073e5e.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','P.O.Box 5087, Capital Hill Rural Branch, Saipan','1-670-234-1234','1-670-234-1234','http://saipan.regency.hyatt.com/hyatt/hotels/','PSP3050');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h11','아쿠아 리조트 클럽 사이판','https://image.hanatour.com/usr/cms/resize/400_0/2010/06/30/10000/cacf32f7-ea19-4494-ae93-bcb466323f4d.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','PO Box 500009, Achugao, Saipan','1-670-322-1234','1-670-322-1234','http://www.aquaresortsaipan.com/','PSP3050');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h12','센추리 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2020/05/10/160000/1245643c-458e-47f3-b94e-13ea7a718e9c.jpg','체크인 2:00 PM, 체크아웃 12:00 PM','Chalan Pale Arnold Garapan','1-670-233-1420','1-670-233-1420','-','PSP4011');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h13','찰란 카노아 비치 클럽','https://image.hanatour.com/usr/cms/resize/400_0/2012/03/08/10000/09208bf8-6cc1-4877-9fb0-d680383314bd.jpg','-','P.O. Box 500356, 96950, Mariana Islands','1-670-234-7829','1-670-234-6534','-','PSP4011');

--팔라우
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h14','퍼시픽 리조트','https://dimgcdn.ybtour.co.kr/TN/19/19a24f203d5fca6ae4912f05e7fd72c7.tn.410x280.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','PO Box 500009, Achugao','1-670-322-1234','1-670-322-1234','http://www.aquaresortsaipan.com/','PPP1002');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h15','괌 플라자 리조트 & 스파','https://image.hanatour.com/usr/cms/resize/400_0/2020/05/12/170000/981a5ba5-3868-4bbc-b238-c36a9ca62778.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','1328 Pale San Vitores Road Tumon','1-671-646-7803','1-671-646-7803','http://www.aquaresortsaipan.com/','PPP1007');

--하와이
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h16','하얏트 리젠시 와이키키 비치 리조트 & 스파','https://image.hanatour.com/usr/cms/resize/400_0/2016/12/30/10000/2ab2db08-a75a-4b8e-b1a4-01938626a7e2.jpg','체크인 3:00 PM / 체크아웃 11:00 AM','2424 Kalakaua Ave','1-808-923-1234','1-808-923-1234','http://waikiki.hyatt.com/hyatt/hotels/index.jsp','NHP1101');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h17','힐튼 하와이안 빌리지 와이키키 비치 리조트','https://image.hanatour.com/usr/cms/resize/400_0/2011/11/24/10000/775b1f9f-67b2-4c6e-8efa-84d7ceb8769e.jpg','체크인 3:00 PM / 체크아웃 11:00 AM','2005 Kalia Rd','1-808-949-4321','1-808-949-4321','http://www.hiltonhawaiianvillage.com/','NHP1101');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h18','와이키키 비치 메리어트 리조트 & 스파','https://image.hanatour.com/usr/cms/resize/400_0/2014/02/18/10000/444f0382-8019-4615-9495-688cbc428196.jpg','체크인 3:00 PM / 체크아웃 11:00 AM','2552 Kalakaua Ave','1-808-922-6611','1-808-922-6611','http://www.marriott.com/hotels/travel/hnlmc-waikiki-beach-marriott-resort-and-spa/','NHP1094');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h19','하얏트 플레이스 와이키키 비치','https://image.hanatour.com/usr/cms/resize/400_0/2008/10/24/10000/46f08000-d981-4307-aad7-d4a197850881.jpg','체크인 3:00 PM / 체크아웃 11:00 AM','175 Paoakalani Ave','1-808-922-3861','1-808-922-3861','http://www.hyattplacewaikikibeach.com/','NHP1094');

--미동부
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h20','코트야드 팔시파니 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2007/05/16/10000/1b3e5d11-8e34-4bb3-8fdc-536928cd07c2.jpg','체크인 3P / 체크아웃 12N','3769 HIGHWAY 46 EAST, PARSIPPANY, NEW JERSEY 07054','1-973-394-0303','1-973-394-0303','http://marriott.com/hotels/travel/ewrps-courtyard-parsippany/','NEP1005');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h21','보스톤 메리어트 피바디','https://image.hanatour.com/usr/cms/resize/400_0/2014/01/07/10000/8c34a71f-bbbf-4659-81fe-71f407fb12aa.jpg','체크인 4:00 PM / 체크아웃 12:00 PM','8A Centennial Drive Peabody Massachusetts 01960 USA','1-978-977-9700','1-978-977-9700','http://www.marriott.com/hotels/travel/bospb-boston-marriott-peabody/','NEP1005');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h22','힐튼 토론토 에어포트 호텔 & 스위트','https://image.hanatour.com/usr/cms/resize/400_0/2013/10/10/10000/941db8ad-af7e-467b-a86a-42e9c2677c4b.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','5875 Airport Road','1-905-677-9900','1-905-677-9900','http://www.toronto.apt.hilton.com','NEP1015');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h23','크라운 플라자 해리스버그-허시','https://image.hanatour.com/usr/cms/resize/400_0/2011/02/25/10000/0f63141d-13c6-4416-826c-f35d8e2a6e27.jpg','체크인 4:00 PM / 체크아웃 11:00 AM','23 South Second Street, Harrisburg, Pennsylvania, 17101, United States','1-717-234-5021','1-717-234-5021','https://www.ihg.com/crowneplaza/hotels/us/en/harrisburg/mdtdt/hoteldetail','NEP1015');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h24','크라운 플라자 필라델피아 체리힐','https://image.hanatour.com/usr/cms/resize/400_0/2012/12/18/10000/2fddc30b-5382-4bc3-9a69-18bd33d5b0d8.jpg','체크인 4:00 PM / 체크아웃 11:00 AM','2349 W. Marlton Pike Cherry Hill , New Jersey 08002','1-856-665-6666','1-856-665-6666','http://www.ichotelsgroup.com/crowneplaza/hotels/us/en/cherry-hill/cpcrw/hoteldetail','NEP1024');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h25','코트야드 팔시파니 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2007/05/16/10000/1b3e5d11-8e34-4bb3-8fdc-536928cd07c2.jpg','체크인 3P / 체크아웃 12N','3769 HIGHWAY 46 EAST, PARSIPPANY, NEW JERSEY 07054','1-973-394-0303','1-973-394-0303','http://marriott.com/hotels/travel/ewrps-courtyard-parsippany/','NEP1024');

--중남미
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h26','오뗄 르 콩코르드 퀘벡','https://image.hanatour.com/usr/cms/resize/400_0/2005/06/14/50000/bb91ba08-88ac-41c3-9c08-a9961561cf0b.jpg','체크인 4:00 PM / 체크아웃 12:00 PM','1225 Cours du General de Montcalm','1-418-647-2222','1-418-647-2222','-','SMH5011');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h27','퀄리티 호텔 센트레 드 콩그레스','https://image.hanatour.com/usr/cms/resize/400_0/2010/09/29/10000/a3366960-1e29-41aa-a09b-cda228cf61f2.jpg','-','725 Seminaire Blvd North Saint-Jean-sur-Richelieu(Quebec), Canada J3B 8H1','1-450-348-7376','1-450-348-7376','http://www.gouverneur.com/fiche.php?lang=en&hotel_id=11','SMH5011');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h28','하얏트 시바 칸쿤 - 올 인클루시브','https://image.hanatour.com/usr/cms/resize/400_0/2015/10/16/10000/b1f5e695-b20c-4e71-a6e2-89880db141f6.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','Blvd. Kukulcan, Manzana 51, Lote 7','52-998-8487000','52-998-8487000','http://www.cancun.ziva.hyatt.com/en/hotel/home.html','SMF1012');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h29','시크릿츠 더 바인 칸쿤','https://image.hanatour.com/usr/cms/resize/400_0/2012/12/04/10000/22802bbb-8514-4729-ae78-862608b52c57.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','Blvd. Kukulcan km. 14.5 Retorno Del Rey Lot 38 38-b, Zona Hotelera','52-998-8489400','52-998-8489400','http://www.secretsresorts.com/thevine/index.asp','SMF1012');

--미서부
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h30','리브 아쿠아 비치 리조트 칸쿤','https://image.hanatour.com/usr/cms/resize/400_0/2012/05/15/10000/7a5957d9-3140-4576-a5dd-5142bb350099.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','BOULEVARD KUKULCAN KM 12.5 CANCUN C.P. 77500 MEXICO','52-99-88817600','52-99-88817600','http://www.feel-aqua.com.','NCP5202');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h31','HOTEL XCARET MEXICO','https://image.hanatour.com/usr/cms/resize/400_0/2018/01/05/10000/a25dab22-b505-48c1-acf6-29387372780f.jpg','-','Puerto Juarez Kilometro 282, Solidaridad','52-1800-009-7567','52-1800-009-7567','	http://www.hotelxcaret.com/en/','NCP5202');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h32','플라밍고 라스베이거스','https://image.hanatour.com/usr/cms/resize/400_0/2015/11/06/10000/bb463488-07c9-402e-acb8-bb56c6cc85ad.jpg','체크인 4:00 PM / 체크아웃 11:00 AM','3555 Las Vegas Blvd S','	1-702-733-3111','1-702-733-3111','http://flamingolasvegas.com','NWP1025');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h33','홀리데이 인 산호세','https://image.hanatour.com/usr/cms/resize/400_0/2016/07/12/10000/2e1eec32-4c0f-43a9-adca-27c15a5dc24a.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','1350 N 1st Street San Jose California 95112 United States','1-408-453-6200','1-408-453-6200','	http://www.ihg.com/holidayinn/hotels/gb/en/san-jose/sjccc/hoteldetail','NWP1025');

--캐나다
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h34','엑스칼리버 호텔 ','https://image.hanatour.com/usr/cms/resize/400_0/2017/01/07/10000/8ee41a55-9099-472a-9fb2-6ef3cc6c5932.jpg','체크인 3:00 PM / 체크아웃 11:00 AM','3850 Las Vegas Blvd S','1-702-597-7777','1-702-597-7777','http://www.excalibur.com/','NCP1126');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h35','룩소르 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2016/08/18/10000/1e1e7371-3f76-4ca3-bd18-4536fe6f92d3.jpg','체크인 3 PM / 체크아웃 11AM','3900 S. Las Vegas Blvd','1-702-262-4000','1-702-262-4000','http://www.luxor.com','NCP1126');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h36','QUALITY INN KANAB ','https://image.hanatour.com/usr/cms/resize/400_0/2010/08/04/10000/b6d321df-1e26-40b2-983b-d68ad074b444.jpg','체크인 4PM / 체크아웃 11AM','815 EAST HIGHWAY 89 KANAB UT 84741','435-644-8888','435-644-8888','http://www.comfortinn.com/hotel-kanab-utah-UT109','NCP1110');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h37','플래닛 할리우드 리조트','https://image.hanatour.com/usr/cms/resize/400_0/2016/08/05/10000/01ae3692-a02d-4bf9-9a42-9edd47d9ae43.jpg','체크인 4:00 PM / 체크아웃 11:00 AM','3667 Las Vegas Blvd S','1-702-785-5555','1-702-785-5555','http://planethollywoodresort.com','NCP1110');

--서유럽
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h38','홀리데이 인 익스프레스 취리히 에어포트','https://image.hanatour.com/usr/cms/resize/400_0/2012/02/08/10000/dbd5d6b6-2545-428c-a23e-7d4cd53f3886.jpg','	체크인 2:00 PM / 체크아웃 12:00 PM','Hofwisenstrasse 30','41-44-8093400','41-44-8093400','http://www.holidayinn.com','EWP2079');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h39','The Hey Hotel','https://image.hanatour.com/usr/cms/resize/400_0/2015/06/29/10000/3c97ea7e-68ce-428d-a8a4-ada73c3475ea.jpg','체크인 3:00 PM / 체크아웃 11:00 AM','Hoheweg 7','41-33-827-8787','41-33-827-8787','https://www.theheyhotel.ch/','EWP2079');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h40','HOTEL CENTRAL BRIG','https://image.hanatour.com/usr/cms/resize/400_0/2009/12/22/10000/42b3ec52-1168-453d-8c48-1dbecbdb7de7.jpg','체크인 2PM / 체크아웃 11AM','GLISERALLEE 50, 3900 BRIG-VALAIS','41-0-27-923-5020','41-0-27-923-5020','http://www.hotel-central.ch/e/indexe.html','EWP1027');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h41','호텔 로트하우스 루체른','https://image.hanatour.com/usr/cms/resize/400_0/2007/08/02/10000/17a75740-14b7-4de3-ace4-8f1f8dc3a920.jpg','체크인 3:00 PM / 체크아웃 11:00 AM','Klosterstrasse 4','41-41-2484848','41-41-2484848','http://www.rothaus.ch/','EWP1027');

--동유럽
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h42','홀리데이 인 베를린 에어포트','https://image.hanatour.com/usr/cms/resize/400_0/2006/06/22/10000/6d4dfce2-d1a9-4973-8181-cd84c55cdc67.jpg','체크인 2:00 PM / 체크아웃 12:00 PM','HANS-GRADE-ALLEE 5, 12529 BERLIN-SCHOENEFELD GERMANY','49-306-34010','49-306-34010','http://www.holidayinn-berlin.de','EEP1264');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h43','노보텔 베를린 미테','https://image.hanatour.com/usr/cms/resize/400_0/2006/06/23/10000/a775d56a-2174-40ce-8851-e9e20b59b681.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','FISCHERINSEL 12 BERLIN 10178 GERMANY','9-30-206740','9-30-206740','http://www.novotel.com','EEP1264');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h44','COURTYARD BY MARRIOTT DRESDEN','https://image.hanatour.com/usr/cms/resize/400_0/2019/11/06/10000/680b9d78-aa77-46d1-ac86-fcc04018ddb2.jpg','-','Stauffenbergallee 25A, 01099 Dresden','49-351-81510','49-351-81510','https://www.marriott.de/hotels/travel/drscy-courtyard-dresden/','EEP1154');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h45','노보텔 뮌헨 메세','https://image.hanatour.com/usr/cms/resize/400_0/2006/06/22/10000/31d87dcd-d4e2-4870-9cbe-2455a2ebf60d.jpg','체크인 24 Hours / 체크아웃 12:00 PM','Willy-Brandt-Platz 1, 81829 MUENCHEN RIEM, GERMANY','49-89-994000','49-89-994000','	http://www.accorhotels.com/gb/hotel-5563-novotel-muenchen-messe/index.shtml','EEP1154');

--그리스
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h46','머큐어 가르미슈 파르텐키르헨','https://image.hanatour.com/usr/cms/resize/400_0/2009/04/15/10000/ae2710bf-c809-4831-bac4-c6d38efc0c87.jpg','체크인 2PM / 체크아웃 12N','Daimlerstrasse 1, Herrenberg 71083 Stuttgart','49 7032 271 0','49 7032 271 0','http://www.ramada.com/herrenberg','ETP2096');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h47','H+ STUTTGART HERRENBERG','https://image.hanatour.com/usr/cms/resize/400_0/2020/03/28/830000/3ac96b94-fef8-47cf-bf6f-429a97aeb6d1.jpg','체크인 3:00 PM / 체크아웃 12:00 PM','Mittenwalder Strasse 2','49-8-821-75-60','49-8-821-75-60','-','ETP2096');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h48','아르데아티나 파크 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2013/09/11/10000/6046219a-a048-4b43-8f0c-f2f40254e272.jpg','체크인 1:00 PM / 체크아웃 11:00 AM','Via Vittore Ghiliani, 145','39-06-710641','39-06-710641','http://www.ardeatinaparkhotel.it/','EMH1000');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h49','프림 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2007/06/01/10000/ff79b27d-8a72-4bf2-a61e-b381ee790167.jpg','체크인 2P / 체크아웃 12N','VIA MARTINI DI CEFALONIA, 13 - 31046 OEDRZO (TV)','39-422-713-699','39-422-713-699','http://www.primhotel.it','EMH1000');

--스페인
insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h50','크리스탈 호텔','https://image.hanatour.com/usr/cms/resize/400_0/2005/06/14/30000/6de4740c-f3c3-4fdd-b001-1a598369bcdb.jpg','체크인 2PM / 체크아웃 12N','RUGENPARKSTRASSE 13 CH-3800 INTERLAKEN','41-33-822-6233','41-33-822-6233','http://www.crystal-hotel.ch','EMP5043');

insert into hotel(hotel_code,hotel_name,hotel_pic,hotel_desc,hotel_address,hotel_phone,hotel_fax,hotel_homepage,hotel_pack_code) values 
('h51','이비스 파리 알레지아','https://image.hanatour.com/usr/cms/resize/400_0/2006/01/17/10000/b135d06f-bb0f-4412-bc59-b269dc07d6c8.jpg','체크인 12:00 PM / 체크아웃 12:00 PM','49 Rue Des Plantes','33-1-53-90-40-00','33-1-53-90-40-00','http://www.accorhotels.com/gb/hotel-0959-ibis-paris-alesia-montparnasse-14th/index.shtml','EMP5043');






