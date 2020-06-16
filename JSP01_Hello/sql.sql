/* 영화 */
CREATE TABLE Movies (
	movieSeq NUMBER NOT NULL PRIMARY KEY, /* 영화 일련번호 */
	title VARCHAR2(80) NOT NULL, /* 제목(한글) */
	titleEng VARCHAR2(40), /* 제목(영어) */
	genre VARCHAR2(20) NOT NULL, /* 장르 */
	movieRating CHAR(2) NOT NULL, /* 영화 등급 */
	company VARCHAR2(20) NOT NULL, /* 제작 국가 */
	director VARCHAR2(40) NOT NULL, /* 감독 */
	actor VARCHAR2(60), /* 배우 */
	runningTime NUMBER(3) NOT NULL, /* 상영 시간 */
	releaseDate DATE NOT NULL, /* 개봉일 */
	showingDateBegin DATE NOT NULL, /* 상영 시작일 */
	showingDateEnd DATE NOT NULL, /* 상영 종료일 */
	storyLine VARCHAR2(2000) NOT NULL, /* 줄거리 */
	trailerUrl VARCHAR2(200), /* 예고편 동영상 URL */
	poster BLOB, /* 포스터 이미지 */
	stillCut1 BLOB, /* 스틸 컷 이미지1 */
	stillCut2 BLOB, /* 스틸 컷 이미지2 */
	stillCut3 BLOB, /* 스틸 컷 이미지3 */
	stillCut4 BLOB, /* 스틸 컷 이미지4 */
	price NUMBER DEFAULT 8000, /* 비용 */
	registeredDate TIMESTAMP(0) DEFAULT SYSDATE /* 등록일 */
);

CREATE SEQUENCE SEQ_Movies CACHE 2;

/* 영화 평가 */
CREATE TABLE MovieComments (
	movieCommentSeq NUMBER NOT NULL PRIMARY KEY, /* 영화 평가 일련번호 */
	movieSeq NUMBER NOT NULL, /* 영화 일련번호 */
	userSeq NUMBER, /* 회원 일련번호 */
	rating NUMBER(1) NOT NULL, /* 평점 */
	review VARCHAR2(1000) NOT NULL, /* 평가 */
	registeredDate TIMESTAMP(0) DEFAULT SYSDATE /* 등록일 */
);

CREATE SEQUENCE SEQ_MovieComments CACHE 2;

/* 상영 */
CREATE TABLE Showings (
	showingSeq NUMBER NOT NULL PRIMARY KEY, /* 상영 일련번호 */
	theater NUMBER(1) NOT NULL, /* 상영관 */
	movieSeq NUMBER NOT NULL, /* 영화 일련번호 */
	showtime TIMESTAMP NOT NULL, /* 영화 시작 일시 */
	earlyMorning CHAR(1) NOT NULL, /* 조조 여부 */
	a01 CHAR(1) DEFAULT 'N', /* 좌석1 */
	a02 CHAR(1) DEFAULT 'N', /* 좌석2 */
	a03 CHAR(1) DEFAULT 'N', /* 좌석3 */
	a04 CHAR(1) DEFAULT 'N', /* 좌석4 */
	a05 CHAR(1) DEFAULT 'N', /* 좌석5 */
	a06 CHAR(1) DEFAULT 'N', /* 좌석6 */
	b01 CHAR(1) DEFAULT 'N', /* 좌석7 */
	b02 CHAR(1) DEFAULT 'N', /* 좌석8 */
	b03 CHAR(1) DEFAULT 'N', /* 좌석9 */
	b04 CHAR(1) DEFAULT 'N', /* 좌석10 */
	b05 CHAR(1) DEFAULT 'N', /* 좌석11 */
	b06 CHAR(1) DEFAULT 'N', /* 좌석12 */
	c01 CHAR(1) DEFAULT 'N', /* 좌석13 */
	c02 CHAR(1) DEFAULT 'N', /* 좌석14 */
	c03 CHAR(1) DEFAULT 'N', /* 좌석15 */
	c04 CHAR(1) DEFAULT 'N', /* 좌석16 */
	c05 CHAR(1) DEFAULT 'N', /* 좌석17 */
	c06 CHAR(1) DEFAULT 'N', /* 좌석18 */
	d01 CHAR(1) DEFAULT 'N', /* 좌석19 */
	d02 CHAR(1) DEFAULT 'N', /* 좌석20 */
	d03 CHAR(1) DEFAULT 'N', /* 좌석21 */
	d04 CHAR(1) DEFAULT 'N', /* 좌석22 */
	d05 CHAR(1) DEFAULT 'N', /* 좌석23 */
	d06 CHAR(1) DEFAULT 'N', /* 좌석24 */
	e01 CHAR(1) DEFAULT 'N', /* 좌석25 */
	e02 CHAR(1) DEFAULT 'N', /* 좌석26 */
	e03 CHAR(1) DEFAULT 'N', /* 좌석27 */
	e04 CHAR(1) DEFAULT 'N', /* 좌석28 */
	e05 CHAR(1) DEFAULT 'N', /* 좌석29 */
	e06 CHAR(1) DEFAULT 'N', /* 좌석30 */
	registeredDate TIMESTAMP(0) DEFAULT SYSDATE /* 등록일 */
);

CREATE SEQUENCE SEQ_Showings CACHE 2;

/* 상영관 */
--CREATE TABLE Theaters (
--	theaterSeq NUMBER(1) NOT NULL PRIMARY KEY, /* 상영관 일련번호 */
--	theater NUMBER(1) NOT NULL, /* 상영관 */
--	showtime TIMESTAMP(0) NOT NULL, /* 영화 시작 일시 */
--	a01 CHAR(1) DEFAULT 'N', /* 좌석1 */
--	a02 CHAR(1) DEFAULT 'N', /* 좌석2 */
--	a03 CHAR(1) DEFAULT 'N', /* 좌석3 */
--	a04 CHAR(1) DEFAULT 'N', /* 좌석4 */
--	a05 CHAR(1) DEFAULT 'N', /* 좌석5 */
--	a06 CHAR(1) DEFAULT 'N', /* 좌석6 */
--	b01 CHAR(1) DEFAULT 'N', /* 좌석7 */
--	b02 CHAR(1) DEFAULT 'N', /* 좌석8 */
--	b03 CHAR(1) DEFAULT 'N', /* 좌석9 */
--	b04 CHAR(1) DEFAULT 'N', /* 좌석10 */
--	b05 CHAR(1) DEFAULT 'N', /* 좌석11 */
--	b06 CHAR(1) DEFAULT 'N', /* 좌석12 */
--	c01 CHAR(1) DEFAULT 'N', /* 좌석13 */
--	c02 CHAR(1) DEFAULT 'N', /* 좌석14 */
--	c03 CHAR(1) DEFAULT 'N', /* 좌석15 */
--	c04 CHAR(1) DEFAULT 'N', /* 좌석16 */
--	c05 CHAR(1) DEFAULT 'N', /* 좌석17 */
--	c06 CHAR(1) DEFAULT 'N', /* 좌석18 */
--	d01 CHAR(1) DEFAULT 'N', /* 좌석19 */
--	d02 CHAR(1) DEFAULT 'N', /* 좌석20 */
--	d03 CHAR(1) DEFAULT 'N', /* 좌석21 */
--	d04 CHAR(1) DEFAULT 'N', /* 좌석22 */
--	d05 CHAR(1) DEFAULT 'N', /* 좌석23 */
--	d06 CHAR(1) DEFAULT 'N', /* 좌석24 */
--	e01 CHAR(1) DEFAULT 'N', /* 좌석25 */
--	e02 CHAR(1) DEFAULT 'N', /* 좌석26 */
--	e03 CHAR(1) DEFAULT 'N', /* 좌석27 */
--	e04 CHAR(1) DEFAULT 'N', /* 좌석28 */
--	e05 CHAR(1) DEFAULT 'N', /* 좌석29 */
--	e06 CHAR(1) DEFAULT 'N' /* 좌석30 */
--);
--
--CREATE SEQUENCE SEQ_Theaters CACHE 2;

--INSERT INTO Theaters (theaterSeq) VALUES (1);
--INSERT INTO Theaters (theaterSeq) VALUES (2);
--INSERT INTO Theaters (theaterSeq) VALUES (3);
--INSERT INTO Theaters (theaterSeq) VALUES (4);
--INSERT INTO Theaters (theaterSeq) VALUES (5);

/* 예매 */
CREATE TABLE Reservations (
	reservationSeq NUMBER NOT NULL PRIMARY KEY, /* 예매 일련번호 */
	userSeq NUMBER, /* 회원 일련번호 NOT NULL -> NULLABLE*/
	movieSeq NUMBER, /* 영화 일련번호 */
	showingSeq NUMBER, /* 상영 일련번호 */
	headcount NUMBER(1) NOT NULL, /* 인원 수 */
	seats VARCHAR2(255) NOT NULL, /* 좌석 */
	savedPointSeq NUMBER, /* 적립 포인트 일련번호 */
	usedPointSeq NUMBER, /* 사용 포인트 일련번호 */
	refundedPointSeq NUMBER, /* 환불 포인트 일련번호 */
	totalPrice NUMBER NOT NULL, /* 총 비용 */
	registeredDate TIMESTAMP(0) DEFAULT SYSDATE /* 등록일 */
);

CREATE SEQUENCE SEQ_Reservations CACHE 2;

/* 예매 상세 */
CREATE TABLE ReservationDetails (
	reservationDetailSeq NUMBER NOT NULL PRIMARY KEY, /* 예매 상세 일련번호 */
	reservationSeq NUMBER NOT NULL, /* 예매 일련번호 */
	division VARCHAR2(6) NOT NULL, /* 구분 */
	registeredDate TIMESTAMP(0) DEFAULT SYSDATE /* 등록일 */
);

CREATE SEQUENCE SEQ_ReservationDetails CACHE 2;

/* 포인트 */
CREATE TABLE Points (
	pointSeq NUMBER NOT NULL PRIMARY KEY, /* 포인트 일련번호 */
	userSeq NUMBER , /* 회원 일련번호 NOT NULL -> NULLABLE*/ 
	division VARCHAR2(6) NOT NULL, /* 구분 */ /* 크기 4 -> 6으로 수정*/
	point NUMBER NOT NULL, /* 포인트 */
	registeredDate TIMESTAMP(0) DEFAULT SYSDATE /* 등록일 */
);

CREATE SEQUENCE SEQ_Points CACHE 2;

/* 회원 */
CREATE TABLE Users (
	userSeq NUMBER NOT NULL PRIMARY KEY, /* 회원 일련번호 */
	id VARCHAR2(15) NOT NULL, /* 아이디 */
	password VARCHAR2(70) NOT NULL, /* 비밀번호 */
	name VARCHAR2(20) NOT NULL, /* 이름 */
	birthday DATE NOT NULL, /* 생년월일 */
	mobile1 VARCHAR2(6) NOT NULL, /* 휴대폰번호1 */
	mobile2 VARCHAR2(6) NOT NULL, /* 휴대폰번호2 */
	mobile3 VARCHAR2(6) NOT NULL, /* 휴대폰번호3 */
	mobileReception CHAR(1) NOT NULL, /* 휴대폰 수신 동의 */
	email VARCHAR2(320) NOT NULL, /* 이메일 */
	emailReception CHAR(1) NOT NULL, /* 이메일 수신 동의 */
	zipcodeSeq NUMBER NOT NULL, /* 우편번호 일련번호 */
	address VARCHAR2(100) NOT NULL, /* 상세 주소 */
	registeredDate TIMESTAMP(0) DEFAULT SYSDATE, /* 등록일 */
	authority VARCHAR2(10) NOT NULL /* 페이지 접근 권한 */
);

CREATE SEQUENCE SEQ_Users CACHE 2;

CREATE UNIQUE INDEX UIX_Users ON Users(id);
CREATE INDEX IX_Users ON Users(password);

/* 우편번호 */
CREATE TABLE Zipcodes (
	zipcodeSeq NUMBER(5) NOT NULL PRIMARY KEY, /* 우편번호 일련번호 */
	zipcode VARCHAR2(7) NOT NULL, /* 우편번호 */
	sido VARCHAR2(10) NOT NULL, /* 특별시, 광역시, 도 */
	gugun VARCHAR2(30), /* 시, 군, 구 */
	dong VARCHAR2(80) NOT NULL, /* 읍, 면, 동, 리, 건물명 */
	bunji VARCHAR2(20) /* 번지, 아파트 동, 호수 */
);

CREATE INDEX IX_Zipcodes ON Zipcodes(dong);

/* 외래키 설정 */		

ALTER TABLE Showings
	ADD
		CONSTRAINT FK_Movies_TO_Showings
		FOREIGN KEY (
			movieSeq
		)
		REFERENCES Movies (
			movieSeq
		)
		ON DELETE CASCADE;

ALTER TABLE MovieComments
	ADD
		CONSTRAINT FK_Movies_TO_MovieComments
		FOREIGN KEY (
			movieSeq
		)
		REFERENCES Movies (
			movieSeq
		) 
		ON DELETE CASCADE;

ALTER TABLE MovieComments
	ADD
		CONSTRAINT FK_Users_TO_MovieComments
		FOREIGN KEY (
			userSeq
		)
		REFERENCES Users (
			userSeq
		) 
		ON DELETE SET NULL;

ALTER TABLE Reservations
	ADD
		CONSTRAINT FK_Movies_TO_Reservations
		FOREIGN KEY (
			movieSeq
		)
		REFERENCES Movies (
			movieSeq
		) 
		ON DELETE SET NULL;

ALTER TABLE Reservations
	ADD
		CONSTRAINT FK_Users_TO_Reservations
		FOREIGN KEY (
			userSeq
		)
		REFERENCES Users (
			userSeq
		)
		ON DELETE SET NULL;

ALTER TABLE Reservations
	ADD
		CONSTRAINT FK_Points_TO_Reservations
		FOREIGN KEY (
			usedPointSeq
		)
		REFERENCES Points (
			pointSeq
		);

ALTER TABLE Reservations
	ADD
		CONSTRAINT FK_Points_TO_Reservations2
		FOREIGN KEY (
			savedPointSeq
		)
		REFERENCES Points (
			pointSeq
		);

ALTER TABLE Reservations
	ADD
		CONSTRAINT FK_Points_TO_Reservations3
		FOREIGN KEY (
			refundedPointSeq
		)
		REFERENCES Points (
			pointSeq
		);

ALTER TABLE Reservations DROP CONSTRAINT FK_Showings_TO_Reservations;		
		
ALTER TABLE Reservations
	ADD
		CONSTRAINT FK_Showings_TO_Reservations
		FOREIGN KEY (
			showingSeq
		)
		REFERENCES Showings (
			showingSeq
		)
		ON DELETE CASCADE;
		
ALTER TABLE Points
	ADD
		CONSTRAINT FK_Users_TO_Points
		FOREIGN KEY (
			userSeq
		)
		REFERENCES Users (
			userSeq
		)
		ON DELETE SET NULL;

ALTER TABLE Users
	ADD
		CONSTRAINT FK_Zipcodes_TO_Users
		FOREIGN KEY (
			zipcodeSeq
		)
		REFERENCES Zipcodes (
			zipcodeSeq
		);

ALTER TABLE ReservationDetails DROP CONSTRAINT FK_RESV_TO_RESVDetails;
		
ALTER TABLE ReservationDetails
	ADD
		CONSTRAINT FK_RESV_TO_RESVDetails
		FOREIGN KEY (
			reservationSeq
		)
		REFERENCES Reservations (
			reservationSeq
		)
		ON DELETE CASCADE;

		
-- CREATE SEQUENCE SEQ_Movies CACHE 2;
-- CREATE SEQUENCE SEQ_MovieComments CACHE 2;
-- CREATE SEQUENCE SEQ_Showings CACHE 2;
-- CREATE SEQUENCE SEQ_Reservations CACHE 2;
-- CREATE SEQUENCE SEQ_ReservationDetails CACHE 2;
-- CREATE SEQUENCE SEQ_Points CACHE 2;
-- CREATE SEQUENCE SEQ_Users CACHE 2;
		
CREATE VIEW V_HeadcountSum
AS
	SELECT movieSeq, SUM(headcount) AS headcount, (SELECT SUM(headcount) AS headcountSum FROM Reservations) AS headcountSum
	FROM Reservations
	GROUP BY movieSeq
WITH READ ONLY		
		
		
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'지.아이.조 2','G.I. Joe 2: Retaliation','액션','15','미국','존 추','이병헌, 브루스윌리스',110.0,to_date('20130328', 'yyyymmdd'),to_date('20130328', 'yyyymmdd'),to_date('20130428', 'yyyymmdd'),'세계 최고의 특수 군단 ‘지.아이.조’. 하지만 인류를 위협하는 코브라 군단의 ‘자르탄’이 꾀한 음모로 인해 군단의 존재까지 위협받는 사상 최대의 위기에 처하게 되고, 유일하게 살아남은 요원들은 이에 맞서 거대한 전투를 준비하는데… 숙명의 적 코브라 군단 뿐 아니라 정부의 위협까지 받게 된 ‘지.아이.조’ 그들의 모든 것을 건 최강의 반격이 시작된다!','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=aEcrd8zRAKYeSd5fAeCKQvezrfAShiz3hdNjQX93ql8%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'연애의 온도','Very Ordinary Couple','로맨스','18','한국','노덕','이민기, 김민희',112.0,to_date('20130501', 'yyyymmdd'),to_date('20130501', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'헤어져, 라고 말하고 모든 것이 더 뜨거워졌다. 직장동료 동희(이민기)와 영(김민희)은 3년차 비밀연애커플. 남들 눈을 피해 짜릿하게 사랑했지만 오늘, 헤어졌다. 다음날 아침, 직장동료로 다시 만난 두 사람. 서로의 물건을 부숴 착불로 보내고, 커플 요금을 해지하기 전 인터넷 쇼핑으로 요금 폭탄을 던지고. 심지어는 서로에게 새로운 애인이 생겼다는 말에 SNS 탐색부터 미행까지! 헤어져, 라고 말한 후에 모든 것이 새롭게 시작되었다. 헤어지고 다시 시작된 들었다 놨다 밀었다 당겼다, 사랑할 때보다 더 뜨거워진 동희와 영. 연애가 원래 이런 건가요?','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=%3DH4dzIeYwcSq2T06ZzqvNdW2xVHEUhEasWoSWZgCdAyo%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'런닝맨','Running Man','액션','15','한국','조동오','신하균, 이민호, 김상호',127.0,to_date('20130404', 'yyyymmdd'),to_date('20130404', 'yyyymmdd'),to_date('20130504', 'yyyymmdd'),'서울 도심 한복판에서 벌어진 살인 사건, 숨을 곳도, 피할 곳도, 믿을 곳도 없다! 한 때 ‘도망 전문가’로 명성을 날렸지만 이제 낮에는 카센터 직원, 밤에는 콜 전문 기사로 활동 중인 차종우(신하균). 어린 나이 ‘사고’를 쳐 얻은 18살 나이차 아들 기혁(이민호)과는 관계가 소원한 철부지 아빠지만 아들과 단둘이 살만한 집을 마련하는 것이 유일한 꿈이다. 어느 날, 큰 돈을 주겠다던 대박 손님이 차 안에서 죽은 채 발견되는 사건이 발생하고, 본능적으로 현장에서 도망 친 종우는 하루아침에 살인 사건의 유력한 용의자가 된다. 아들에게 조차 의심받는 상황 속, 전국민이 주목하는 살인용의자가 된 종우는 경찰, 언론, 정체불명의 이들에게 쫓기게 된다. 주변 인물마저 목숨을 잃게 되자 더 이상 물러설 곳 없는 종우는 누명을 벗고 아들에게 부끄럽지 않은 아빠가 되기 위한 반격을 준비하는데...! 살인 누명을 쓴 도망자 모든 것을 바꾸기 위해 그가 뛰기 시작했다!','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=t5bsvWa8SUyiUwtdnpETGp8SyqxyqOix%2Bbk94rA2r%2B4%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'파파로티','My paparotti','드라마','15','한국','윤종찬','한석규, 이제훈',127.0,to_date('20130504', 'yyyymmdd'),to_date('20130504', 'yyyymmdd'),to_date('20130514', 'yyyymmdd'),'성악 천재 건달 vs 문제적 선생 그들의 까칠한 앙상블이 시작된다! 한 때 잘 나가던 성악가였지만 지금은 촌구석 예고의 음악 선생인 상진(한석규). 싸늘한 교육열, 까칠함만 충만한 그에게 청천벽력 같은 미션이 떨어진다. 천부적 노래 실력을 지녔으나, 일찍이 주먹세계에 입문한 건달 장호(이제훈)를 가르쳐 콩쿨에서 입상 하라는 것. 전학 첫날 검은 승용차에 어깨들까지 대동하고 나타난 것도 모자라, 수업 중에도 ‘큰 형님’의 전화는 꼭꼭 챙겨 받는 무늬만 학생인 장호가 못마땅한 상진. 장호의 노래를 들어볼 필요도 없이 결론을 내린다. “똥인지 된장인지 꼭 찍어 먹어봐야 아냐?!” 주먹과 노래 두 가지 재능을 타고났으나 막막한 가정 환경으로 인해 주먹 세계에 뛰어든 장호. 비록 현실은 ‘파바로티’의 이름 하나 제대로 모르는 건달이지만 성악가가 되고픈 꿈만은 잊은 적 없다. 이런 자신을 가르쳐 주긴커녕 툭하면 개나 소나 취미로 하는 게 클래식이냐며 사사건건 무시하는 쌤 상진의 태도에 발끈하는 장호. 그래도 꿈을 포기할 수 없는 장호는 험난하고 까칠한 상진과의 관계를 이어가는데... “쌤요. 내 똥 아입니더!”','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=66V2irANansRPv8i3m7epLPVMkMqb5rwiHy7/ABHrXI%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'신세계','New world','액션','18','한국','박훈정','이정재, 최민식, 황정민',134.0,to_date('20130504', 'yyyymmdd'),to_date('20130504', 'yyyymmdd'),to_date('20130521', 'yyyymmdd'),'"너, 나하고 일 하나 같이 하자" 경찰청 수사 기획과 강과장(최민식)은 국내 최대 범죄 조직인 ''골드문''이 기업형 조직으로 그 세력이 점점 확장되자 신입경찰 이자성(이정재)에게 잠입 수사를 명한다. 그리고 8년, 자성은 골드문의 2인자이자 그룹 실세인 정청(황정민)의 오른팔이 되기에 이른다. "우리 브라더는 그냥 딱, 이 형님만 믿으면 돼야!" 골드문 회장이 갑자기 사망하자, 강과장(최민식)은 후계자 결정에 직접 개입하는 ''신세계'' 작전을 설계한다. 피도 눈물도 없는 후계자 전쟁의 한 가운데, 정청(황정민)은 8년 전, 고향 여수에서 처음 만나 지금까지 친형제처럼 모든 순간을 함께 해 온 자성(이정재)에게 더욱 강한 신뢰를 보낸다. "약속 했잖습니까... 이번엔 진짜 끝이라고" 한편, 작전의 성공만 생각하는 강과장(최민식)은 계속해서 자성(이정재)의 목을 조여만 간다. 시시각각 신분이 노출될 위기에 처한 자성(이정재)은 언제 자신을 배신할 지 모르는 경찰과, 형제의 의리로 대하는 정청(황정민) 사이에서 갈등하게 되는데…','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=7c0fy61Lx%2BaLE5M19As9MUrTFK/GWZAsq7crzzYeyTI%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'7번방의 선물','','코믹','15','한국','이환경','류승룡, 박신혜',127.0,to_date('20130501', 'yyyymmdd'),to_date('20130501', 'yyyymmdd'),to_date('20130521', 'yyyymmdd'),'흥행킹 류승룡! 세상에서 가장 사랑스러운 ''딸바보''로 돌아오다! 최악의 흉악범들이 모인 교도소 7번방에 이상한 놈이 들어왔다! 그는 바로 6살 지능의 딸바보 ''용구''! 평생 죄만 짓고 살아온 7번방 패밀리들에게 떨어진 미션은 바로 ''용구'' 딸 ''예승''이를 외부인 절대 출입금지인 교도소에 반.입.하.는.것! 13년 새해, 웃음과 감동 가득한 사상 초유의 합동작전이 시작된다!','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=ZtdWhLEhagHtQOo2PwGjDty3YHjtqgaUj9hbFaVgdSI%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'호프 스프링즈','Hope Springs','로맨스','18','미국','데이비드 프랑켈','메릴 스트립, 토미 리 존스',100.0,to_date('20130404', 'yyyymmdd'),to_date('20130404', 'yyyymmdd'),to_date('20130504', 'yyyymmdd'),'<악마는 프라다를 입는다>의 데이빗 프랭클 감독과 메릴 스트립이 선사하는 솔직?화끈한 연애힐링코미디! ‘처음보다’ 더 짜릿한 사랑을 원해요! 사랑의 유통기한은 3년까지라더니.. 결혼 30년차 부부 ‘케이’(메릴 스트립)와 ‘아놀드’(토미 리 존스)는 각방을 쓴지 오래됐고, 화끈한 스킨십도 전혀 없다. 하숙생과 별반 다를 게 없는 무뚝뚝한 남편 ‘아놀드’와 달리, 소녀감성 아내 ‘케이’(메릴 스트립)는 식어버린 사랑을 되돌리기 위해 ‘일주일간의 부부 관계 힐링 캠프’에 덥석 예약하는데.. 성상담 전문가의 솔직하고 발칙한 질문공세에 시니컬하고 보수적인 ‘아놀드’는 안절부절, 큰 맘 먹은 ‘케이’조차 정신이 아득할 지경! 과연 그들은 일주일만에 ‘다시’ 사랑할 수 있을까?','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=U5FH8nqqAKnNndJbkMVgr1tPCLQkwqpmg/U7bayCbKE%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'킬링 소프틀리','Killing Them Softly','액션','18','미국','앤드류 도미닉','브래드 피트, 리차드 젠킨스',97.0,to_date('20130404', 'yyyymmdd'),to_date('20130404', 'yyyymmdd'),to_date('20130504', 'yyyymmdd'),'부드럽게 죽여주는 건, 예술이야! 어느 날, 정체불명의 도둑들에 의해 거액의 도박판 강탈 사건이 발생한다. 도박판의 주인 마키가 유력한 용의자로 의심받고 있는 가운데 범죄 조직들은 범인을 찾기 위해 킬러 잭키 코건(브래드 피트)을 고용한다. 믿는 것은 오직 자신과 돈 뿐인 잔혹한 킬러 ‘잭키 코건’. 도둑들의 뒤를 쫓으며 점차 수사망을 좁혀가던 그는 도둑들에게 또 다른 배후세력이 있음을 감지하고, 도둑들 또한 자신들의 뒤를 쫓는 누군가가 있음을 알게 되는데… 과연, 그는 임무를 완수할 수 있을까?','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=AxBdR1XE2pBTsrwmIWFiAWunDVWLHZQUUm1XZoIqZGI%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'호스트','The host','판타지','15','미국','앤드류 니콜','시얼샤 로넌, 맥스 아이언스, 제이크 아벨',125.0,to_date('20130404', 'yyyymmdd'),to_date('20130404', 'yyyymmdd'),to_date('20130504', 'yyyymmdd'),'인류의 미래, 사랑을 위해 싸워야 한다! 생명체의 뇌에 들어가 기생해 사는 외계생명체 ‘소울’에 의해 거의 모든 인간이 정복당한 미래. 감정을 빼앗기지 않은 단 한명의 인간 멜라니에게 소울들은 그들 중 가장 경험이 많고 뛰어난 정신력을 가진 완다를 집어 넣는다. 하지만 완다는 이미 사라졌어야 할 멜라니의 영혼과 마주하고, 멜라니의 강력한 의지와 처음 겪는 다양한 감정에 괴로워한다. 멜라니는 자신의 육체를 지배한 완다에게 맞서며 헤어졌던 가족과 연인에게로 그녀를 이끈다. 멜라니의 모습을 한 완다는 마침내 멜라니의 연인 제라드를 만나게 되고, 그 곳에서 또 다른 인연 이안을 만나 호감을 느끼게 되는데…. 한 몸에 존재하는 두 개의 영혼, 인류의 마지막이 그녀에게 달렸다!','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=y78UnsQKNDz2LWrnPsH7Ckqt4YT4Vhlev9GzdxvGEtc%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'안나 카레니나','Anna Karenina','드라마','15','영국','조 라이트','키이라 라이틀리, 주드 로',130.0,to_date('20130321', 'yyyymmdd'),to_date('20130321', 'yyyymmdd'),to_date('20130421', 'yyyymmdd'),'치명적인 아름다움, 파국을 불러온 비극적 사랑 ‘복수는 내가 하리라, 내 이를 보복하리’ 아름다움 외모와 교양을 갖춘 사교계의 꽃 안나 카레니나(키이라 나이틀리). 러시아 정계의 최고 정치가인 남편 카레닌(주드 로), 8살 아들과 함께 호화로운 저택에서 행복한 결혼 생활을 하고 있지만, 고루하고 이성적인 남편에게 염증을 느낀다. 낯선 파티에서도 안나의 아름다움은 시선을 고정시키고, 그녀 앞에 매력적인 외모의 젊은 장교 브론스킨(아론 존슨)이 나타난다. 안나는 애써 브론스킨을 외면하지만, 그의 저돌적인 애정공세에 결국 치명적 사랑에 빠지게 된다. 뜨거운 욕망에 사로잡힌 안나는 브론스킨과 위험한 관계를 이어가고, 두 사람의 부적절한 관계가 사교계에 소문이 퍼지자, 안나는 가정을 버리고 도피하는데…','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=dSe6nUThiA7JKVMWUSCmlDYv8eQqI9Txbd9GmrsrI%2BM%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'쉐프','The Chef','기타','A','프랑스','다니엘 코헨','장 르노',85.0,to_date('20130409', 'yyyymmdd'),to_date('20130409', 'yyyymmdd'),to_date('20130509', 'yyyymmdd'),'자키(미카엘 운)는 실력은 있지만 운이 없는 아마추어 쉐프로, 최고급 레스토랑 ‘카르고 라가르드’의 스타 쉐프인 알렉상드르(장 르노)를 동경한다. 한편, 알렉상드르는 레스토랑의 새 오너와 갈등을 빚으면서 퇴출 위기를 맞고, 설상가상으로 새로운 메뉴를 개발할 아이디어를 더 이상 떠올리지 못하는 상황. 알렉상드르는 자신을 도와줄 조수를 간절히 찾던 중 우연히 자키의 재능을 발견하고 함께 신메뉴를 개발하기로 하는데... (13년 4월 시네프랑스)','');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'베르세르크:황금시대편Ⅲ-강림','','애니메이션','18','일본','쿠보오카토시유키','',120.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'216년 만에 다시 찾아온 일식! ‘고드핸드’로부터 살아남기 위한 최후의 전쟁! 거듭되는 전승으로 승승장구하던 ‘매의 단’의 대장 그리피스는 가츠가 떠난 뒤 공주를 범한 죄로 지하감옥에 갇히고 ‘매의 단’은 역적으로 몰려 떠돌이 신세가 된다. 일년 뒤, 다시 돌아온 가츠는 그리피스의 소식을 듣고 그를 감옥에서 구해낸다. 그러나 오랜 고문으로 이미 재기불능 상태가 돼버린 그리피스. 모든 꿈이 꺾인 그는 현실에 비관하며 목숨을 끊으려 하고 그 순간, 그의 강렬한 야망이 봉인된 ‘고드핸드’를 불러낸다. 신과 인간의 중간 존재인 ‘고드핸드’는 소원을 이루기 위해선 제물이 필요하다 말하고 이에 그리피스는 ‘매의 단’을 바치겠다 말하는데…! 고드핸드 ‘페무토’로 부활한 그리피스와 죽음의 낙인이 찍힌 ‘가츠’의 대결! 모든 이야기는 지금부터 시작이다!','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=WwwPM03R1pS8wmG49Z8uS7ZpW36hYmxuR%2BkjRY%2BgoMk%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'오블리비언','Oblivion','액션','15','미국','조셉 코신스키','톰크루즈, 모건 프리먼',124.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'외계인의 침공이 있었던 지구 최후의 날 이후, 모두가 떠나버린 지구의 마지막 정찰병인 ''잭 하퍼''(톰 크루즈)는 임무를 수행하던 중 정체불명의 우주선을 발견한다. 그곳에서 자신이 누군지 알고 있는 한 여인(올가 쿠릴렌코)을 만나 기억나지 않는 과거 속에 어떤 음모가 있었음을 알게 된 잭. 그는 적인지 동료인지 알 수 없는 지하조직의 리더(모건 프리먼)를 통해 자신을 둘러싼 모든 것에 의심을 품기 시작하고 지구의 운명을 건 마지막 전쟁을 시작하는데…','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=QJIroD5zBqUHqAqKXfDYHvALwREpfITmMKiihcQZXR8%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'전설의 주먹','Fist of Legend','액션','18','한국','강우석','황정민,유준상, 이요원',153.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'전설의 파이터들이 맞붙는 지상 최대의 파이트 쇼 다시 싸워야 할 이유가 생겼다 학창시절, 화려한 무용담들을 남기며 학교를 평정했던 파이터들 중 진짜 최강자는 누구였을까? 한때 ‘전설’이라 불렸던 그들이 맞붙어 승부를 가리는 TV파이트 쇼 ‘전설의 주먹’. 세월 속에 흩어진 전국 각지의 파이터들이 하나 둘씩 등장하고, 쇼는 이변을 속출하며 뜨겁게 달아오른다. 그리고 화제 속에 등장한 전설의 파이터 세 사람에 전국민의 시선이 집중된다. 복싱 챔피언의 꿈이 눈 앞에서 좌절된, 지금은 혼자서 딸을 키우는 국수집 사장 임덕규(황정민) 카리스마 하나로 일대를 평정했던, 지금은 출세를 위해 자존심까지 내팽개친 대기업 부장 이상훈(유준상) 남서울고 독종 미친개로 불렸던, 지금도 일등을 꿈꾸지만 여전히 삼류 건달인 신재석(윤제문) 말보다 주먹이 앞섰던 그 시절, 예기치 못한 사건으로 각자의 삶을 살던 세 친구들의 비하인드 스토리까지 밝혀지면서 전국은 ‘전설의 주먹’ 열풍에 휩싸인다. 마침내 역대 최고의 파이터들이 8강 토너먼트를 통해 우승상금 2억 원을 놓고 벌이는 최후의 파이트 쇼 ‘전설대전’의 막이 오르고… 이제 자기 자신이 아닌 그 누군가를 위해 인생의 마지막 승부를 건 세 친구의 가슴 뜨거운 대결이 다시 시작된다. 진짜 전설은 지금부터다.','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=BfycLDLZFteGJFgIirsU3chXtDGSg0yHnY2w5tqVgw%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'월플라워','Perks of Being A Wallflower','드라마','12','미국','스티븐크보스키','엠마왓슨, 로건레먼',102.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'줄거리‘불량품들의 섬에 온 걸 환영해!’ 유쾌하지만 쓰라리고, 지치지만 빛나던 청춘의 기억 말 못할 트라우마를 가지고 자신만의 세계에 갇혀있던 ‘찰리’는 고등학교 신입생이 돼서도 친구들과 어울리지 못한 채 방황한다. 그러던 어느 날, 타인의 시선 따위는 신경 쓰지 않고 삶을 즐기는 ‘샘’과 ‘패트릭’ 남매를 만나 인생의 새로운 전환을 맞이한다. 멋진 음악과 친구들을 만나며 세상 밖으로 나가는 법을 배워가는 ‘찰리’. 자신도 모르는 사이 ‘샘’을 사랑하게 된 그는 이제껏 경험한적 없는 가슴 벅찬 나날을 보낸다. 하지만 불현듯 나타나 다시 ‘찰리’를 괴롭히는 과거의 상처와 ‘샘’과 ‘패트릭’의 겉잡을 수 없는 방황은 시간이 흐를수록 세 사람의 우정을 흔들어 놓기 시작하는데… 찰리와 샘, 그리고 패트릭의 마지막 10대는 아름다운 마침표를 찍을 수 있을까?','');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'꼬마영웅 경찰차 프로디','Ploddy The Police Car','애니메이션','A','기타','라스무스 A. 실버르센','',74.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'이제 마을은 내가 지킨다 ! 아름다운 작은 마을을 지키는 용감한 경찰차 프로디, 폭풍우로 끊어진 고압선을 수리하다 전기충격을 받고, 신비한 능력을 얻는다. 어느 날, 악당형제가 마을 식수원의 소중한 물을 몰래 훔쳐 마을을 위험하게 만들자 친환경 전기차로 변신한 프로디가 수다쟁이 수달 도티와 함께 악당형제에 맞서 싸우는데… 과연, 프로디는 악당형제로부터 마을을 안전하게 지킬 수 있을까?','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=6eHBin9J812gFUNtwdEvUSx8cuLpusmxBq9Ka1HvLRA%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'레옹','leon','액션','18','프랑스','뤽베송','장르노, 게리올드만',132.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'`사랑해요. 내 첫사랑 레옹.`_마틸다 `나도 행복해 지고 싶어. 잠도 자고, 뿌리도 내릴 꺼야.`_레옹 한 손엔 우유 2팩이 든 가방, 다른 한 손엔 화분을 들고 뿌리 없이 떠도는 킬러 레옹은 어느 날 옆 집 소녀 마틸다의 일가족이 몰살 당하는 것을 목격한다. 그 사이 심부름을 갔다 돌아 온 마틸다는 가족들이 처참히 몰살 당하자 레옹에게 도움을 청하다. 가족의 원수를 갚기 위해 킬러가 되기로 결심한 12세 소녀 마틸다는 레옹에게 글을 알려주는 대신 복수하는 법을 배우게 된다. 드디어 그녀는 가족을 죽인 사람이 부패 마약 경찰 스탠스임을 알게 되고, 그의 숙소로 향하게 되는데…','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=NeFUvVMwDFuvBzaid5EAJaAnd2oJ0q0y3gI8yGqo2Pg%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'어둠 속의 빛','In Darkness','드라마','18','기타','아그네츠카 홀랜드','로버트 위키에위츠, 벤노 퓨어만',143.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'줄거리죽음과 존엄의 경계에 선 포화 속 11명의 유대인… 그리고, 그가 있었다! 제2차 세계 대전이 한창이던 폴란드의 리버포. 가족의 생계를 위해 빈집 털이와 하수구 수리공으로 생계를 연명하던 소하. 어느 날 그는 온갖 악취와 암흑뿐인 하수구로 잔인한 죽음을 피하기 위해 숨어든 유대인들을 발견하게 되고, 그들은 소하에게 비밀을 지켜달라며 돈을 건넨다. 이들을 신고만 해도 돈을 벌 수 있지만, 소하는 결국 그들의 부탁을 들어주며 칩거생활을 도와주게 된다. 그러던 중 마을에 누군가 유대인을 도와주고 있다는 소문이 돌기 시작하면서 소하는 자신과 가족의 목숨이 위태로워질 수 있다는 불안을 느끼게 되고, 다시 조심스럽게 하수구로 걸음을 … 그들은 살기 위해 숨어야만 했다! 기약 없는 어둠 속의 생활, 그 잔인했던 420일 간의 기록이 밝혀진다!','');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'디테일스','The details','드라마','18','미국','제이콥 아론 에스테스','토비맥과이어, 엘리자베스뱅크스',101.0,to_date('20130411', 'yyyymmdd'),to_date('20130411', 'yyyymmdd'),to_date('20130511', 'yyyymmdd'),'줄거리내가 무시했던 디테일, 네가 집착했던 디테일… 그 사이, 우리가 바보처럼 놓쳤던 디.테.일.스! 산부인과 의사 제프(토비 맥과이어)는 아내 닐리(엘리자베스 뱅크스)와 어느 날부턴가 미묘하게 서먹해지는 것을 느낀다.아내를 위해 뒷마당에 잔디밭을 선물하며 관계회복을 시도해보지만, 밤마다 잔디를 뒤집어 놓는 너구리 포획에 집착하는 바람에 둘 사이는 더 멀어지게 된다. 도움을 얻고자 친구이자 정신과 의사인 레베카에게 상담을 받던 제프는 분위기에 휩쓸려 그녀와 하룻밤을 보내게 되고, 정체를 알 수 없던 이웃집 여자 라일라(로라 린니)는 우연한 기회에 불륜사실을 알게 된 이후, 제프에게 상상조차 할 수 없는 협박을 하기 시작하는데.... 평범하던 일상에 불쑥 들이닥쳐버린 인생 최대의 위기! 제프는 이 모든 상황을 다시 되돌릴 수 있을까? 4월, 인생 좀 아는 당신 꼭 챙겨볼 것! 새로운 시작을 위한 색다른 공감 드라마를 만난다','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=6FuScffBpK5SKOHDzBRTlunhzaT3BnehUlB/vGLWTH0%3D');
INSERT INTO MOVIES (MOVIESEQ, TITLE, TITLEENG, GENRE, MOVIERATING, COMPANY, DIRECTOR, ACTOR, RUNNINGTIME, RELEASEDATE, SHOWINGDATEBEGIN, SHOWINGDATEEND, STORYLINE, TRAILERURL) VALUES (SEQ_Movies.NEXTVAL,'토스카','Tosca','오페라','A','독일','루크 본디','요나스 카우프만',132.0,to_date('20130413', 'yyyymmdd'),to_date('20130413', 'yyyymmdd'),to_date('20130413', 'yyyymmdd'),'총 3막으로 구성된 멜로 드라마로서 오페라가수 토스카, 그녀의 연인 카바라도시, 그리고 토스카를 차지하려는 악질 경감 스카르피아 사이에서 펼쳐지는 사랑과 질투, 음모와 죽음을 사실적으로 긴박하게 풀어내는 하룻밤 동안의 이야기이다. 프랑스 대혁명 이후 나폴레옹 전쟁 시대의 로마. 유명 오페라가수 토스카와 그녀의 연인인 화가 카바라도시의 사랑이 깊어가던 어느 날, 정치범 안젤로티가 탈옥하여 카바라도시가 성화를 그리는 성당에 몰래 들어오고, 카바라도시는 그를 숨겨준다. 안젤로티를 찾기 위해 혈안이 되어있는 욕심 많은 경찰 스카르피아는 카바라도시를 의심하고 안젤로티를 숨겼다는 이유로 감옥으로 보내고 사형선고를 받게 한다. 평소 토스카를 탐하던 스카르피아는 어떻게 해서든 토스카를 차지하기 위해 연인을 인질로 토스카를 설득한다. 연인을 살리기 위해서라면 스카르피아를 선택해야 하는 상황에 놓인 토스카는 결국 스카르피아를 칼로 찌르고 만다. 하지만 카바라도시를 살리려던 그녀의 노력은 스카르피아의 거짓 약속으로 물거품이 되고, 결국 카바라도시는 사형집행장에서 죽고 만다. 연인을 잃게 된 충격으로 괴로워하던 토스카는 그녀를 쫓는 경찰을 뒤로 하고 높은 성벽에서 몸을 던지고 만다.','http://web.mvod.megabox.co.kr/swf/gplayer2.swf?host=web.mvod.megabox.co.kr&k=fYdH3N4S/lxP1kiccd2wgeEQaONtL%2BaOISDuX3I8jTg%3D');

COMMIT;
