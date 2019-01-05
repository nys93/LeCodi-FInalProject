-- 회원 table
create table tbl_member(
    userid varchar2(20) primary key        -- ID
    ,password varchar2(50) not null        -- PW
    ,name varchar2(20) not null            -- name
    ,birth varchar2(30)                    -- 생년월일
    ,phonenumber1 varchar2(20)             -- 핸드폰 번호1
    ,phonenumber2 varchar2(20)             -- 핸드폰 번호2
    ,phonenumber3 varchar2(20)             -- 핸드폰 번호3
    ,postcode number(20)                   -- 우편번호
    ,address_primary varchar2(300)         -- 기본주소
    ,address_detail varchar2(300)          -- 상세주소
    ,email_id varchar2(100)                -- 이메일 ID
    ,email_domain varchar2(100)            -- 이메일 도메인
    ,status varchar2(3)						--탈퇴확인
);

commit;

-- 비회원 table
create table non_member(
    phonenumber varchar2(20) primary key   -- 핸드폰 번호
    ,orderpw number(4) not null            -- 주문비밀번호
    ,address varchar2(300)                 -- 주소
    ,postcode varchar2(20)                 -- 우편번호
);

commit;

-- 창고(오프라인) table
create table tbl_store(
    storecode number(10) primary key        -- 창고(오프라인) 코드
    ,location varchar2(300)                 -- 위치
    ,phonenumber varchar2(20)               -- 오프라인 전화번호
);

commit;

-- 배송 table
create table shipment(
    shippingnumber number(10) primary key       -- 배송번호
    ,shippingamount number(30) default 0        -- 배송수량
    ,shippingdate date default sysdate          -- 배송날짜
    ,shippingaddress varchar2(300)              -- 배송주소
    ,shippingPHnumber varchar2(20)              -- 배송지 전화번호
); 

-- 오더 table
create table tbl_order(
    ordernumber number(10) primary key          -- 주문번호   
    ,orderdate date default sysdate             -- 작성날짜 
    ,userid varchar2(20) not null               -- 유저ID     fk
    ,postcode number(20)                  		-- 우편번호
    ,address_primary varchar2(300)         		-- 기본주소
    ,address_detail varchar2(300)          		-- 상세주소
    ,phonenumber1 varchar2(20)            	 	-- 핸드폰 번호1
    ,phonenumber2 varchar2(20)             		-- 핸드폰 번호2
    ,phonenumber3 varchar2(20)             		-- 핸드폰 번호3
    ,extrarequest varchar2(300)                 -- 기타요구사항
    ,productname1 varchar2(20)					-- 제품명
    ,productname2 varchar2(20)					-- 제품명
    ,productname3 varchar2(20)					-- 제품명
    ,productname4 varchar2(20)					-- 제품명
    ,productname5 varchar2(20)					-- 제품명
    ,productcode1 number(10)                    -- 제품코드 fk
    ,productcode2 number(10)                    -- 제품코드 fk
    ,productcode3 number(10)                    -- 제품코드 fk
    ,productcode4 number(10)                    -- 제품코드 fk
    ,productcode5 number(10)                    -- 제품코드 fk
    ,price1 number	
    ,price2 number
    ,price3 number
    ,price4 number
    ,price5 number
    ,c_size1 varchar2(20)	
    ,c_size2 varchar2(20)
    ,c_size3 varchar2(20)
    ,c_size4 varchar2(20)
    ,c_size5 varchar2(20)
    ,color1 varchar2(20)
    ,color2 varchar2(20)
    ,color3 varchar2(20)
    ,color4 varchar2(20)
    ,color5 varchar2(20)
    ,mount1 number (10)                	   	    -- 물품 당 주문 수량
    ,mount2 number (10)
    ,mount3 number (10)
    ,mount4 number (10)
    ,mount5 number (10)
);

CREATE SEQUENCE seq_order START WITH 1 INCREMENT BY 1;

commit;

-- 제품 table
create table product (
    productcode number primary key              -- 제품번호
    ,productname varchar2(100) 		 -- 이름
    ,productamount number(10) default 0         -- 재고
    ,price number(30)                           -- 가격
    ,cloth_category varchar2(20)                      -- 카테고리
    ,manufaturedDate date default sysdate       -- 생산일자
    ,discountrate number(10) default 0          -- 할인율
    ,cloth_size number(10)                            -- 옷 사이즈
    ,color varchar2(20)                         -- 옷 색상
   	,imageaddress1 varchar2(300)                 -- 이미지 저장 주소1
	,imageaddress2 varchar2(300)                 -- 이미지 저장 주소2
	,imageaddress3 varchar2(300)                 -- 이미지 저장 주소3
	,imageaddress4 varchar2(300)                 -- 이미지 저장 주소4
	,imageaddress5 varchar2(300)                 -- 이미지 저장 주소5
);

commit;

-- 창고(오프라인) 재고 table
create table products(
    storecode number(10) not null               -- 창고(오프라인)코드  fk
    ,productcode number(10) not null            -- 제품번호
    ,productamount number(10) default 0         -- 재고
    ,constraint products_storecode_fk foreign key (storecode) 
    references tbl_store(storecode) on delete cascade
);

commit;

-- 카트 table 
CREATE TABLE CART(
   CARTDATE DATE DEFAULT sysdate, 
   USERID VARCHAR2(20), 
   PRODUCTCODE NUMBER(10), 
   CARTMOUNT NUMBER(10), 
   COLOR VARCHAR2(20), 
   C_SIZE VARCHAR2(20), 
   PRICE NUMBER, 
   PRODUCTNAME VARCHAR2(20), 
   CARTNUM VARCHAR2(20)
);

commit;


-- 공지 table
create table notice(
    boardnum number(10) primary key             -- 글 번호
    ,title varchar2(30) not null                -- 글 제목
    ,context varchar2(2000) not null            -- 글 내용
    ,userid varchar2(20) not null               -- 사용자ID(관리자) fk
    ,inputdate date default sysdate             -- 게시글 등록 날짜
);

commit;

-- 공지 게시판에 사용할 시퀀스
CREATE SEQUENCE seq_notice START WITH 1 INCREMENT BY 1;

commit;

-- 댓글  table
create table reply(
    replynum   number(10)   primary key          -- 댓글 번호
    ,userid   varchar2(20)   not null            -- 유저ID fk
    ,context   varchar2(2000)   not null         -- 댓글 내용
    ,inputdate   date   default sysdate          -- 댓글 등록 날짜
    ,boardnum   number(10)                       -- 글 번호 fk
    ,constraint reply_userid_fk foreign key (userid) 
    references tbl_member(userid) on delete cascade
    ,constraint reply_boardnum_fk foreign key (boardnum) 
    references notice(boardnum) on delete cascade
);

-- 질문게시판에 사용할 시퀀스
CREATE SEQUENCE seq_reply START WITH 1 INCREMENT BY 1;  

-- 문의글 table
create table qna(
    boardnum number(10) primary key             -- 글 번호
    ,title varchar2(30) not null                -- 글 제목
    ,context varchar2(2000) not null            -- 글 내용
    ,userid varchar2(20) not null               -- 사용자ID(관리자) fk
    ,inputdate date default sysdate             -- 게시글 등록 날짜
);

-- 문의 게시판에 사용할 시퀀스
CREATE SEQUENCE seq_qna;


--이미지 테이블
CREATE TABLE IMG_TABLE (
   ID      NUMBER   PRIMARY KEY, 
   USERID VARCHAR2(20),
   IMG_PATH VARCHAR2(2000)
);

CREATE SEQUENCE IMG_TABLE_SEQUENCE;

--코디 테이블
create table coditable(
	src varchar2(2000)
	, height varchar2(500)
	, width varchar2(500)
	, top varchar2(500)
	, leftitem varchar2(500)
	, userid varchar2(100)
	, codiname number(20)
);


-- ↓ 이 아래는 아직 테이블 추가 안한 수정 전 버전 논의 필요

-- 후기 table
create table review(
    boardnum number(10) primary key             -- 글 번호
    ,title varchar2(30) not null                -- 글 제목
    ,context varchar2(2000) not null            -- 글 내용
    ,userid varchar2(20) not null               -- 사용자ID(관리자) fk
    ,inputdate date default sysdate             -- 게시글 등록 날짜
    ,constraint notice_userid_fk foreign key (userid) 
    references member(userid) on delete cascade
);


insert into tbl_member values('admin', 'rhksfl', 'Le Codi', '991111', '010', '1234', '5678', '99999', '서울시 서울동', '서울아파트 101동 101호', '99999', 'naver.com');
