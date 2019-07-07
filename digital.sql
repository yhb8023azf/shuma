#设置客户端连接服务器
SET NAMES utf8;
#丢弃原有数据库
DROP DATABASE IF EXISTS digital;
#创建数据库
CREATE DATABASE digital CHARSET=utf8;
#进入数据库
USE digital;


#创建用户表
CREATE TABLE digital_user(
	uid INT PRIMARY KEY AUTO_INCREMENT,
	uname VARCHAR(32),      #用户昵称
	upwd VARCHAR(32),       #用户密码
	real_name VARCHAR(16),  #真实姓名，如王小明
	email VARCHAR(32),      #邮箱
	phone CHAR(11),         #电话
	gender INT              #性别  0-女  1-男
);
#导入用户信息数据
INSERT INTO digital_user VALUES(null,'yangyang','123456','杨洋','yangyang@163.com','17718412654','1');
INSERT INTO digital_user VALUES(null,'yaya','123456','丫丫','yaya@qq.com','17718412659','0');
INSERT INTO digital_user VALUES(null,'yanghongbin','123456','杨红彬','1121341028@163.com','17711241654','1');
INSERT INTO digital_user VALUES(null,'zhangfan','123456','张帆','1607651901@qq.com','17710140545','0');
INSERT INTO digital_user VALUES(null,'lijunfeng','123456','李俊峰','ljf@163.com','17852222654','1');


#所属型号家族
CREATE table digial_family(
	fid INT PRIMARY KEY AUTO_INCREMENT,
	fname VARCHAR(32)
);
#导入所属型号家族数据
INSERT INTO digial_family VALUES(null,'笔记本');
INSERT INTO digial_family VALUES(null,'台式机');
INSERT INTO digital_family VALUES(null,'外设系列');
INSERT INTO digital_family VALUES(null,'评测中心');

#笔记本、台式机、外设系列
CREATE TABLE digital_laptop(
	lid INT PRIMARY KEY AUTO_INCREMENT,
  family_id INT,              #所属型号家族编号
  title VARCHAR(128),         #主标题
  subtitle VARCHAR(128),      #副标题
  price DECIMAL(10,2),        #价格
  promise VARCHAR(64),        #服务承诺
  spec VARCHAR(64),           #规格/颜色

  lname VARCHAR(32),          #商品名称
  os VARCHAR(32),             #操作系统
  memory VARCHAR(32),         #内存容量
  resolution VARCHAR(32),     #分辨率
  video_card VARCHAR(32),     #显卡型号
  cpu VARCHAR(32),            #处理器
  video_memory VARCHAR(32),   #显存容量
  category VARCHAR(32),       #所属分类
  disk VARCHAR(32),           #硬盘容量及类型
  details VARCHAR(1024),      #产品详细说明

  shelf_time BIGINT,          #上架时间
  sold_count INT,             #已售出的数量
  is_onsale BOOLEAN           #是否促销中
);
#导入笔记本、台式机、外设系列
INSERT INTO xz_laptop VALUES(1,1,'14英寸四核独显轻薄商务便携笔记本电脑','金属游戏本，芯八代六核I7-8750H处理器，GTX1050/4G独显，8G内存，128G固态+1T机械，IPS高清屏',5999,'')
INSERT INTO xz_laptop VALUES(2,1)
INSERT INTO xz_laptop VALUES(3,1)
INSERT INTO xz_laptop VALUES(4,1)
INSERT INTO xz_laptop VALUES(5,1)
INSERT INTO xz_laptop VALUES(6,1)
INSERT INTO xz_laptop VALUES(7,1)
INSERT INTO xz_laptop VALUES(8,1)
INSERT INTO xz_laptop VALUES(9,1)

INSERT INTO xz_laptop VALUES(10,2)
INSERT INTO xz_laptop VALUES(11,2)
INSERT INTO xz_laptop VALUES(12,2)
INSERT INTO xz_laptop VALUES(13,2)
INSERT INTO xz_laptop VALUES(14,2)
INSERT INTO xz_laptop VALUES(15,2)

INSERT INTO xz_laptop VALUES(16,3)
INSERT INTO xz_laptop VALUES(17,3)
INSERT INTO xz_laptop VALUES(18,3)
INSERT INTO xz_laptop VALUES(19,3)
INSERT INTO xz_laptop VALUES(20,3)
INSERT INTO xz_laptop VALUES(21,3)







/**笔记本电脑图片**/
CREATE TABLE xz_laptop_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  laptop_id INT,              #笔记本电脑编号
  sm VARCHAR(128),            #小图片路径
  md VARCHAR(128),            #中图片路径
  lg VARCHAR(128)             #大图片路径
);

/**用户信息**/
CREATE TABLE xz_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);

/**收货地址信息**/
CREATE TABLE xz_receiver_address(
  aid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                #用户编号
  receiver VARCHAR(16),       #接收人姓名
  province VARCHAR(16),       #省
  city VARCHAR(16),           #市
  county VARCHAR(16),         #县
  address VARCHAR(128),       #详细地址
  cellphone VARCHAR(16),      #手机
  fixedphone VARCHAR(16),     #固定电话
  postcode CHAR(6),           #邮编
  tag VARCHAR(16),            #标签名

  is_default BOOLEAN          #是否为当前用户的默认收货地址
);

#轮播图
CREATE TABLE digital_carousel(
	cid INT PRIMARY KEY AUTO_INCREMENT,
	url VARCHAR(64),     #路径
	title VARCHAR(32),   #标题
	img VARCHAR(32)      
);
#导入轮播图
/****首页轮播广告商品****/
INSERT INTO xz_index_carousel VALUES(NULL, '../images/index/bg2.jpg','轮播广告商品1','index.html'),
INSERT INTO xz_index_carousel VALUES(NULL, '../images/index/bg1.jpg','轮播广告商品2','index.html');






























