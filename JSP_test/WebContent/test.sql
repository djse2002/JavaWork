
/* Drop Tables */

DROP TABLE NEW_TABLE CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE NEW_TEST
(
	-- 글 고유아이디
	-- 
	wr_uid number NOT NULL,
	-- 글내용
	wr_content clob,
	-- 글제목
	wr_subject varchar2(200) NOT NULL,
	-- 작성자 이름
	wr_name varchar2(400) NOT NULL,
	-- 조회수
	wr_viewcnt number default 0,
	-- 등록일
	wr_regdate date default sysdate,
	PRIMARY KEY (wr_uid)
);



/* Comments */

COMMENT ON COLUMN NEW_TABLE.wr_uid IS '글 고유아이디
';
COMMENT ON COLUMN NEW_TABLE.wr_content IS '글내용';
COMMENT ON COLUMN NEW_TABLE.wr_subject IS '글제목';
COMMENT ON COLUMN NEW_TABLE.wr_name IS '작성자 이름';
COMMENT ON COLUMN NEW_TABLE.wr_viewcnt IS '조회수';
COMMENT ON COLUMN NEW_TABLE.wr_regdate IS '등록일';


-- 시퀀스 작성
CREATE SEQUENCE TEST_WRITE_SEQ_TEST;

-- 기본데이터 작성
INSERT INTO NEW_TEST VALUES
(TEST_WRITE_SEQ.nextval, '첫째글:방가요', '안녕하세요', '김희철', 0, '2017-03-02');
INSERT INTO NEW_TEST VALUES
(TEST_WRITE_SEQ.nextval, '둘째글:헤헤헤','1111', '김수길', 0, '2017-03-02');
INSERT INTO NEW_TEST VALUES
(TEST_WRITE_SEQ.nextval, '세째글:힘내세요', '7394', '최진덕' , 0, '2017-08-12');
INSERT INTO NEW_TEST VALUES
(TEST_WRITE_SEQ.nextval, '네째글: ... ', '9090', '이혜원', 0, '2018-02-09');
INSERT INTO NEW_TEST VALUES
(TEST_WRITE_SEQ.nextval, '다섯째글: 게시판', '7531', '박수찬', 0, sysdate);




SELECT * FROM NEW_TEST;
