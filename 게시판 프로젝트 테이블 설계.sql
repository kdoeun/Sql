#날짜 : 2021/08/10
#이름 : 김도은
#내용 : 게시판 프로젝트 테이블 설계

#약관 테이블
CREATE TABLE `Jboard_terms` (
	`terms`		TEXT,
	`privacy`	TEXT
);

#회원 테이블
CREATE TABLE `khjyo2001Jboard_member` (
	`uid`		VARCHAR(20) PRIMARY KEY,
	`pass`	VARCHAR(255),
	`name`	VARCHAR(20),
	`nick`	VARCHAR(20) UNIQUE,
	`email`	VARCHAR(50) UNIQUE, 
	`hp`		CHAR(13)	UNIQUE,	
	`grade`	TINYINT DEFAULT 2,
	`zip`		CHAR(5),
	`addr1`	VARCHAR(255),
	`addr2`	VARCHAR(255),
	`regip`	VARCHAR(20),
	`rdate` 	DATETIME	
);

#게시물 테이블
CREATE TABLE `Jboard_article` (
	`seq`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`commen`		INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(225),
	`content`	TEXT,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`uid`			VARCHAR(20),
	`regip`		VARCHAR(20),
	`rdate`		DATETIME
);

#파일 테이블
CREATE TABLE `Jboard_file` (
	`fseq`		INT,	
	`parent`		INT,
	`oriName`	VARCHAR(225),
	`newName`	VARCHAR(225),
	`download`	INT DEFAULT 0,
	`rdate`		DATETIME	
);
