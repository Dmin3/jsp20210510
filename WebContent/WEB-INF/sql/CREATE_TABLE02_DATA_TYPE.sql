-- data type

-- number
-- INT,
-- DECIMAL(소수점까지 저장, 소수점 자리를 직접 정해줘야됌), DECIMAL(숫자의길이, 소수점 자리설정)
CREATE TABLE MyTable3
(
Col1 INT,
COl2 DECIMAL
);
INSERT INTO MyTable3
(Col1, Col2)
VALUES
(55, 3.14);

SELECT * FROM MyTable3;

DESC MyTable3;

CREATE TABLE MyTable4
(
	Col1 DECIMAL,
    Col2 DECIMAL(10, 2),
    Col3 DECIMAL(3, 1)
);

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(3.14, 3.14, 3.14); -- ok

SELECT * FROM MyTable4;

INSERT INTO MyTable4
(Col1, Col2, Col3)
VALUES
(333.14, 333.14, 333.1); -- not ok


-- char (String)

CREATE TABLE MyTable5
(
	Col1 CHAR(5), -- 고정 자리수
    Col2 VARCHAR(5) -- 가변 자리수 
);

INSERT INTO MyTable5
(Col1, Col2)
VALUES
('adc', 'abc');

SELECT * FROM MyTable5;

SET sql_mode = 'PAD_CHAR_TO_FULL_LENGTH';
SELECT * FROM MyTable5;
-- 'adcdd', 'abcdd'


SET sql_mode = '';
SELECT * FROM MyTable5;
-- 'abc', 'abc'


-- date, datetime, timestamp

CREATE TABLE MyTable6
(
	Col1 DATE, -- 날짜만
    Col2 DATETIME, -- 시간까지
    col3 TIMESTAMP -- 시간까지
    
    -- DATETIME 과 TIMESTAMP의 차이점
    -- 거의 없음 아무거나 사용해도됌
);

INSERT INTO MyTable6
(Col1, Col2, Col3)
VALUES
('2021-06-02', 
 '2021-06-02 11:07:30',
 '2021-06-02 11:07:30'); 

SELECT * FROM MyTable6;

