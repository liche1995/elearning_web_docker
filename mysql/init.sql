-- 初始化建置資料庫
CREATE DATABASE IF NOT EXISTS django_web_db ;

-- 初始化使用者
-- 建立資料庫管理 資料庫搬移
CREATE USER IF NOT EXISTS 'immigration_offcer'@'localhost' IDENTIFIED WITH mysql_native_password BY 'havean1ce7rip';
CREATE USER IF NOT EXISTS 'immigration_offcer'@'%' IDENTIFIED WITH mysql_native_password BY 'havean1ce7rip';

-- 給予權限
GRANT SELECT, INSERT, UPDATE, CREATE, DROP, ALTER, REFERENCES, INDEX ON django_web_db.* TO 'immigration_offcer'@'localhost';
GRANT SELECT, INSERT, UPDATE, CREATE, DROP, ALTER, REFERENCES, INDEX ON django_web_db.* TO 'immigration_offcer'@'%';

-- sailor_spam:一般連線
CREATE USER IF NOT EXISTS 'sailor_spam'@'localhost' IDENTIFIED WITH mysql_native_password BY 'direction000yosoro'; 
CREATE USER IF NOT EXISTS 'sailor_spam'@'%' IDENTIFIED WITH mysql_native_password BY 'direction000yosoro'; 

-- 給予權限
GRANT SELECT, INSERT, UPDATE ON django_web_db.* TO 'sailor_spam'@'localhost';
GRANT SELECT, INSERT, UPDATE ON django_web_db.* TO 'sailor_spam'@'%';
