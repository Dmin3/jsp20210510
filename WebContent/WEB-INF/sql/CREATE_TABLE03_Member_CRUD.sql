CREATE DATABASE text2; -- text2라는 새로운 멤버 추가
USE text2; -- text2 를 사용하겠다는 뜻.


CREATE TABLE Member (
	id VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(255),
    birth DATE,
    inserted TIMESTAMP
);

SELECT * FROM Member;



