CREATE TABLE MyTable7
(
id INT,
name VARCHAR(255)
);

 INSERT INTO MyTable7
 (id, name)
 VALUES(1, 'hello');
 
 SELECT * FROM MyTable7;
 
 
 -- NOT NULL (NULL 을 넣지 못하게 하는 코드)
 
 CREATE TABLE MyTable8
 (
 id INT NOT NULL,
 name VARCHAR(255) NOT NULL
 );
 
 SELECT * FROM MyTable8;
 
 INSERT INTO MyTable8
 (id, name)
 VALUES
 (3, 'hello');
 
 INSERT INTO MyTable8  -- NOT NULL이라는 제약을 걸어둬서 실행이 안됌
 (id)
 VALUES
 (3);
 
 DESC MyTable8;
 
 -- 