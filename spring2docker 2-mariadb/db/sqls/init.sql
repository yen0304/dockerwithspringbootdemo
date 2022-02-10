-- db_store.t_cart definition

CREATE TABLE t_cart (
  cid int NOT NULL AUTO_INCREMENT,
  uid int DEFAULT NULL,
  pid int DEFAULT NULL,
  num int DEFAULT NULL,
  price int DEFAULT NULL,
  created_user varchar(20) DEFAULT NULL,
  created_time datetime DEFAULT NULL,
  modified_user varchar(20) DEFAULT NULL,
  modified_time datetime DEFAULT NULL,
  PRIMARY KEY (cid)
)DEFAULT CHARSET=utf8;


-- db_store.t_product definition

CREATE TABLE t_product (
  id int NOT NULL AUTO_INCREMENT,
  categoryId int DEFAULT NULL,
  type char(100) DEFAULT NULL ,
  title char(60) DEFAULT NULL,
  price int DEFAULT NULL,
  num int DEFAULT NULL,
  imagepath varchar(100) DEFAULT NULL,
  priority int DEFAULT NULL,
  status int DEFAULT '1',
  created_user varchar(20) DEFAULT NULL,
  created_time datetime DEFAULT NULL,
  modified_user varchar(20) DEFAULT NULL,
  modified_time datetime DEFAULT NULL,
  PRIMARY KEY (id)
)DEFAULT CHARSET=utf8;


-- db_store.t_user definition

CREATE TABLE t_user (
  uid int NOT NULL AUTO_INCREMENT,
  username varchar(20) NOT NULL,
  password char(32) NOT NULL,
  salt char(60) DEFAULT NULL,
  gender int DEFAULT NULL,
  phone varchar(20) DEFAULT NULL,
  email varchar(50) DEFAULT NULL,
  avatar varchar(100) DEFAULT NULL,
  is_delete int DEFAULT NULL,
  created_user varchar(20) DEFAULT NULL,
  created_time datetime DEFAULT NULL,
  modified_user varchar(20) DEFAULT NULL,
  modified_time datetime DEFAULT NULL,
  PRIMARY KEY (uid),
  UNIQUE KEY username (username)
)DEFAULT CHARSET=utf8;

INSERT INTO db_store.t_cart (uid,pid,num,price,created_user,created_time,modified_user,modified_time) VALUES
	 (12,4,12,499,'abc000','2022-01-07 18:58:52','abc000','2022-01-07 20:51:58'),
	 (12,3,13,10000,'abc000','2022-01-07 18:58:58','abc000','2022-01-07 20:51:50'),
	 (2,3,4,3999,'user','2022-02-08 22:11:36','user','2022-02-08 22:11:36'),
	 (1,3,5,10000,'用戶1','2022-02-08 22:11:37','用戶1','2022-02-08 22:11:37');

INSERT INTO db_store.t_product (categoryId,type,title,price,num,imagepath,priority,status,created_user,created_time,modified_user,modified_time) VALUES
	 (1,'電器','微波爐',15000,100,NULL,1,1,NULL,NULL,NULL,NULL),
	 (1,'電器','冰箱',39999,100,NULL,2,1,NULL,NULL,NULL,NULL),
	 (1,'電器','洗手台',10000,100,NULL,4,1,NULL,NULL,NULL,NULL),
	 (1,'電器','燈泡',499,100,NULL,3,1,NULL,NULL,NULL,NULL);

INSERT INTO db_store.t_user (username,password,salt,gender,phone,email,avatar,is_delete,created_user,created_time,modified_user,modified_time) VALUES
	 ('abc000','0103222ad1ee0f5a00223f4e7b251548','2ddc856b937347019cdb069b1ff16b08',1,'0900000000','abc000@yahoo.com.tw',NULL,0,'abc000','2022-01-08 18:07:28','abc000','2022-01-08 18:07:28'),
	 ('abc123','9d6078b9fa61db39b32ffd9c7dafb58d','a9f0d325bb0f43beaa30fb859b61d6cb',0,'0929520147','abc123@gmail.com',NULL,0,'abc123','2022-01-08 18:09:48','abc123','2022-01-08 18:09:48');