CREATE TABLE tb_user (
	username VARCHAR(64) NOT NULL PRIMARY KEY,
	usertype INTEGER NOT NULL DEFAULT 0,
	password CHAR(32) NOT NULL,
	email VARCHAR(64) NOT NULL, 
	regip VARCHAR(16) NOT NULL,
	regtime INTEGER NOT NULL,
	lastip VARCHAR(16) NOT NULL DEFAULT "",
	lasttime INTEGER NOT NULL DEFAULT 0,
	retrycount INTEGER NOT NULL DEFAULT 0,
	retrytime INTEGER NOT NULL DEFAULT 0,
	scores INTEGER NOT NULL DEFAULT 0,
	points INTEGER NOT NULL DEFAULT 0,
	rankw INTEGER DEFAULT 0,
	rankw0 INTEGER DEFAULT 0,
	rankm INTEGER DEFAULT 0,
	rankm0 INTEGER DEFAULT 0,
	rankq INTEGER DEFAULT 0,
	rankq0 INTEGER DEFAULT 0,
	KEY (lasttime),
	KEY (scores),
	KEY (rankw),
	KEY (rankm),
	KEY (rankq));

CREATE TABLE tb_rankw (
	username VARCHAR(64) NOT NULL PRIMARY KEY,
	rank INTEGER NOT NULL AUTO_INCREMENT,
	KEY (rank));

CREATE TABLE tb_rankm (
	username VARCHAR(64) NOT NULL PRIMARY KEY,
	rank INTEGER NOT NULL AUTO_INCREMENT,
	KEY (rank));

CREATE TABLE tb_rankq (
	username VARCHAR(64) NOT NULL PRIMARY KEY,
	rank INTEGER NOT NULL AUTO_INCREMENT,
	KEY (rank));

CREATE TABLE tb_log (
	username VARCHAR(64) NOT NULL,
	eventip VARCHAR(16) NOT NULL,
	eventtime INTEGER NOT NULL,
	eventtype INTEGER NOT NULL,
	detail INTEGER NOT NULL DEFAULT 0);

CREATE TABLE tb_task (
	taskname VARCHAR(64) NOT NULL PRIMARY KEY,
	tasktime INTEGER NOT NULL DEFAULT 0);

INSERT INTO tb_task (taskname) VALUES ("dailytask");