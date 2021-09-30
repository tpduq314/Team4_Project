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
	,pack_date varchar2(20) not null --출국 날짜 
	,pack_detail varchar2(200) not null --포함 내역
	,pack_none_detail varchar2(200) not null --불포함 내역
);

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_date,pack_detail,pack_none_detail) 
values('a123','캐나다 여행','캐나다 여행은 즐거워','북미','캐나다','https://dimgcdn.ybtour.co.kr/TN/b3/b3cd7d1308f5fc087516412dfe0df4db.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','2299000','1853120','445880','2021.09.10','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_date,pack_detail,pack_none_detail) 
values('a124','미국 여행','미국 여행은 즐거워','북미','미국','https://dimgcdn.ybtour.co.kr/TN/45/45f58df044e5b03b24ac55a7f243091a.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/7c/7ce43195fa12fcd224701606cedc466f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','2299000','1853120','445880','2021.09.10','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_date,pack_detail,pack_none_detail) 
values('a125','한국','한국 여행은 즐거워','국내','강원','https://dimgcdn.ybtour.co.kr/TN/91/9125000a7e9cfea231860887897746cb.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','2299000','1853120','445880','2021.09.10','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_date,pack_detail,pack_none_detail) 
values('a126','중국 여행','중국 여행은 즐거워','중국','북경','https://dimgcdn.ybtour.co.kr/TN/64/648c9f7d9e87cca875a9ccd679913c5b.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','2299000','1853120','445880','2021.09.10','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_date,pack_detail,pack_none_detail) 
values('a127','일본 여행','일본 여행은 즐거워','일본','오사카','https://dimgcdn.ybtour.co.kr/TN/61/61eb90c60666aa430c76aae78af79e2f.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','2299000','1853120','445880','2021.09.10','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');

insert into package (pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price01,pack_price02,pack_price03,pack_date,pack_detail,pack_none_detail) 
values('a128','호주 여행','호주 여행은 즐거워','오세아니아','호주','https://dimgcdn.ybtour.co.kr/TN/3d/3d9b547f2557c4a9913680377ebed006.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/07/078addb0ffdd6d740e54ecac1beaa005.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/00/006c65726324b7f7d6526a1fede8328e.tn.410x280.jpg','https://dimgcdn.ybtour.co.kr/TN/fd/fd2c513e1cbc0d17c023f090353eea72.tn.410x280.jpg','2299000','1853120','445880','2021.09.10','교통 : 왕복항공권, 전용차량비용 · 숙박 : 일정내 숙박비','기사/가이드 경비 : 1인당 전일정 USD $40 · ESTA 승인비용 : USD $14  (여행사 대행시 1인 30,000)');


insert into package(pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a129','프랑스 여행','파리 도심 투어','프랑스','파리','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1mE31A55zaWmWJ8354D-wGvJw_eYAVyI_g&usqp=CAU','7777','7777','7777','10000','20210324');

insert into package(pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a130','프랑스 여행','파리 외곽 투어','프랑스','파리','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1mE31A55zaWmWJ8354D-wGvJw_eYAVyI_g&usqp=CAU','7777','7777','7777','10000','20210324');

insert into package(pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a131','프랑스 여행','와인 투어','프랑스','와인농장','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1mE31A55zaWmWJ8354D-wGvJw_eYAVyI_g&usqp=CAU','7777','7777','7777','10000','20210324');

insert into package(pack_code,pack_name,pack_desc,pack_main_cate,pack_sub_cate,pack_pic01,pack_pic02,pack_pic03,pack_pic04,pack_price,pack_date) 
values('a132','프랑스 여행','해안 투어','프랑스','노르망디','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-1mE31A55zaWmWJ8354D-wGvJw_eYAVyI_g&usqp=CAU','7777','7777','7777','10000','20210324');
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
	(qa_no, qa_phone, mail_id, qa_title, qa_cont, res_code, mem_id, qa_date) values 
	(seq_qano.NEXTVAL, '010-0100-1111', 'tpduq','제목','시퀀스 테스트','4090','aaaa',sysdate );

select * from qa;