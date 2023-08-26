
/* Drop Tables */

DROP TABLE QnA CASCADE CONSTRAINTS;
DROP TABLE AdminInfo CASCADE CONSTRAINTS;
DROP TABLE Reply CASCADE CONSTRAINTS;
DROP TABLE Community CASCADE CONSTRAINTS;
DROP TABLE Review CASCADE CONSTRAINTS;
DROP TABLE Reservation CASCADE CONSTRAINTS;
DROP TABLE Customer CASCADE CONSTRAINTS;
DROP TABLE Menu CASCADE CONSTRAINTS;
DROP TABLE StoreInfo CASCADE CONSTRAINTS;
DROP TABLE Owner CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE AdminInfo
(
	id varchar2(30) NOT NULL,
	pw varchar2(64) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE Community
(
	writeNo number NOT NULL,
	id varchar2(30) NOT NULL UNIQUE,
	title varchar2(50) NOT NULL,
	content varchar2(500) NOT NULL,
	createdDate date DEFAULT sysdate NOT NULL,
	PRIMARY KEY (writeNo)
);


CREATE TABLE Customer
(
	id varchar2(30) NOT NULL,
	pw varchar2(64) NOT NULL,
	name varchar2(30) NOT NULL,
	member_type number(1) DEFAULT 1 NOT NULL,
	tel number(11) NOT NULL UNIQUE,
	email varchar2(30) NOT NULL UNIQUE,
	address varchar2(200) NOT NULL,
	PRIMARY KEY (id)
);


CREATE TABLE Menu
(
	menu_name varchar2(30) NOT NULL,
	price number NOT NULL,
	content varchar2(100) NOT NULL,
	best number(1) DEFAULT 0 NOT NULL,
	store_id varchar2(30) NOT NULL,
	PRIMARY KEY (menu_name)
);


CREATE TABLE Owner
(
	id varchar2(30) NOT NULL,
	pw varchar2(64) NOT NULL,
	name varchar2(30) NOT NULL,
	member_type number(1) DEFAULT 2 NOT NULL,
	tel number(11) NOT NULL UNIQUE,
	email varchar2(30) NOT NULL UNIQUE,
	PRIMARY KEY (id)
);


CREATE TABLE QnA
(
	writeNo number NOT NULL,
	user_id varchar2(30),
	owner_id varchar2(30),
	admin_id varchar2(30),
	title varchar2(50),
	content varchar2(500),
	answer varchar2(500),
	createdDate date,
	answerDate date,
	status number(1) DEFAULT 0,
	PRIMARY KEY (writeNo)
);


CREATE TABLE Reply
(
	replyNo NUMBER PRIMARY KEY,
	writeNo number NOT NULL,
	id varchar2(30) NOT NULL,
	reply varchar2(500) NOT NULL,
	createdDate date DEFAULT sysdate NOT NULL,
	CONSTRAINT fk_writeNo foreign key(writeNo) references community (writeNo)
);


CREATE TABLE Reservation
(
	reserveNo NUMBER(7) NOT NULL UNIQUE,
	id varchar2(30) NOT NULL,
	store_id varchar2(30) NOT NULL,
	reserveDate date NOT NULL,
	headCount number NOT NULL,
	tableNo number NOT NULL,
	applicationDate date DEFAULT sysdate NOT NULL,
	status number DEFAULT 0 NOT NULL,
	PRIMARY KEY (reserveNo, id, store_id)
);


CREATE TABLE Review
(
	reviewNo NUMBER PRIMARY KEY,
	reserveNo NUMBER(7) NOT NULL,
	id varchar2(30) NOT NULL,
	store_id varchar2(30) NOT NULL,
	rating number(1) DEFAULT 0 NOT NULL,
	content varchar2(500) NOT NULL,
	reviewPictureUrl blob,
	createdDate date DEFAULT sysdate NOT NULL,
	CONSTRAINT fk_reserveNo foreign key(reserveNo) references reservation (reserveNo)
);


CREATE TABLE StoreInfo
(
	store_id varchar2(30) NOT NULL,
	id varchar2(30) NOT NULL UNIQUE,
	name varchar2(200) NOT NULL,
	category varchar2(30) NOT NULL,
	store_tel number(11) NOT NULL UNIQUE,
	address varchar2(100) NOT NULL,
	openTime date NOT NULL,
	closeTime date NOT NULL,
	closedDays varchar2(30) NOT NULL,
	content varchar2(500) NOT NULL,
	mainPictureUrl blob NOT NULL,
	pictureUrl blob NOT NULL,
	menuPictureUrl blob NOT NULL,
	rating number(1) DEFAULT 0 NOT NULL,
	reviewCount number(1) DEFAULT 0 NOT NULL,
	PRIMARY KEY (store_id)
);



/* Create Foreign Keys */

ALTER TABLE QnA
	ADD FOREIGN KEY (admin_id)
	REFERENCES AdminInfo (id)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (writeNo)
	REFERENCES Community (writeNo)
;


ALTER TABLE Community
	ADD FOREIGN KEY (id)
	REFERENCES Customer (id)
;


ALTER TABLE QnA
	ADD FOREIGN KEY (user_id)
	REFERENCES Customer (id)
;


ALTER TABLE Reply
	ADD FOREIGN KEY (id)
	REFERENCES Customer (id)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (id)
	REFERENCES Customer (id)
;


ALTER TABLE QnA
	ADD FOREIGN KEY (owner_id)
	REFERENCES Owner (id)
;


ALTER TABLE StoreInfo
	ADD FOREIGN KEY (id)
	REFERENCES Owner (id)
;


ALTER TABLE Review
	ADD FOREIGN KEY (reviewNo, id, store_id)
	REFERENCES Reservation (reserveNo, id, store_id)
;


ALTER TABLE Menu
	ADD FOREIGN KEY (store_id)
	REFERENCES StoreInfo (store_id)
;


ALTER TABLE Reservation
	ADD FOREIGN KEY (store_id)
	REFERENCES StoreInfo (store_id)
;

CREATE SEQUENCE seq_reservation START WITH 1000001;
CREATE SEQUENCE seq_review START WITH 1;
CREATE SEQUENCE seq_reply START WITH 1;
CREATE SEQUENCE seq_community START WITH 1;
CREATE SEQUENCE seq_QnA START WITH 1;


