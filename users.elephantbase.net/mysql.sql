CREATE TABLE tb_user (
	uid INTEGER NOT NULL PRIMARY KEY,
	usertype INTEGER NOT NULL DEFAULT 0,
	lastip CHAR(15) NOT NULL DEFAULT '',
	lasttime INTEGER NOT NULL DEFAULT 0,
	score INTEGER NOT NULL DEFAULT 0,
	points INTEGER NOT NULL DEFAULT 0,
	charged INTEGER NOT NULL DEFAULT 0,
	upload INTEGER NOT NULL DEFAULT 0,
	download INTEGER NOT NULL DEFAULT 0,
	balance INTEGER NOT NULL DEFAULT 0,
	income INTEGER NOT NULL DEFAULT 0,
	KEY (upload),
	KEY (download));

CREATE TABLE tb_retry (
	username CHAR(15) NOT NULL PRIMARY KEY,
	retrycount INTEGER NOT NULL DEFAULT 0,
	retrytime INTEGER NOT NULL DEFAULT 0);

CREATE TABLE tb_rankw (
	uid INTEGER NOT NULL PRIMARY KEY,
	score INTEGER NOT NULL DEFAULT 0,
	rank INTEGER NOT NULL AUTO_INCREMENT,
	KEY (rank));

CREATE TABLE tb_rankw0 (
	uid INTEGER NOT NULL PRIMARY KEY,
	rank INTEGER NOT NULL DEFAULT 0);

CREATE TABLE tb_rankm (
	uid INTEGER NOT NULL PRIMARY KEY,
	score INTEGER NOT NULL DEFAULT 0,
	rank INTEGER NOT NULL AUTO_INCREMENT,
	KEY (rank));

CREATE TABLE tb_rankm0 (
	uid INTEGER NOT NULL PRIMARY KEY,
	rank INTEGER NOT NULL DEFAULT 0);

CREATE TABLE tb_rankq (
	uid INTEGER NOT NULL PRIMARY KEY,
	score INTEGER NOT NULL DEFAULT 0,
	rank INTEGER NOT NULL AUTO_INCREMENT,
	KEY (rank));

CREATE TABLE tb_rankq0 (
	uid INTEGER NOT NULL PRIMARY KEY,
	rank INTEGER NOT NULL DEFAULT 0);

CREATE TABLE tb_chargecode (
	chargecode CHAR(32) NOT NULL PRIMARY KEY,
	points INTEGER NOT NULL DEFAULT 0);

CREATE TABLE tb_log (
	uid INTEGER NOT NULL,
	eventip VARCHAR(16) NOT NULL,
	eventtime INTEGER NOT NULL,
	eventtype INTEGER NOT NULL,
	detail INTEGER NOT NULL DEFAULT 0);

CREATE TABLE tb_task (
	taskname VARCHAR(64) NOT NULL PRIMARY KEY,
	lasttime INTEGER NOT NULL DEFAULT 0,
	nexttime INTEGER NOT NULL DEFAULT 0,
	tasklock INTEGER NOT NULL DEFAULT 0);

INSERT INTO tb_task (taskname) VALUES ("dailytask");

CREATE TABLE tb_qn_user (
	uid INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	eventip CHAR(15) NOT NULL,
	eventtime INTEGER NOT NULL);

CREATE TABLE tb_qn_answer (
	uid INTEGER NOT NULL,
	qid INTEGER NOT NULL,
	answer INTEGER NOT NULL);

CREATE TABLE tb_qn_comments (
	uid INTEGER NOT NULL,
	comments VARCHAR(255) NOT NULL);

CREATE TABLE tb_upload (
	fid INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	uid INTEGER NOT NULL,
	filename CHAR(32) NOT NULL,
	savename CHAR(32) NOT NULL,
	title CHAR(32) NOT NULL,
	catagory INTEGER NOT NULL,
	size INTEGER NOT NULL,
	price INTEGER NOT NULL,
	eventtime INTEGER NOT NULL,
	download INTEGER NOT NULL DEFAULT 0,
	positive INTEGER NOT NULL DEFAULT 0,
	negative INTEGER NOT NULL DEFAULT 0,
	state INTEGER NOT NULL DEFAULT 0,
	KEY (uid),
	KEY (eventtime),
	KEY (download),
	KEY (positive));

CREATE TABLE tb_download (
	fid INTEGER NOT NULL,
	uid INTEGER NOT NULL,
	grade INTEGER NOT NULL,
	PRIMARY KEY (fid, uid),
	KEY (uid));

CREATE TABLE tb_download_comments (
	fid INTEGER NOT NULL,
	uid INTEGER NOT NULL,
	comments VARCHAR(255) NOT NULL,
	eventtime INTEGER NOT NULL,
	PRIMARY KEY (fid, uid));