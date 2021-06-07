USE test;
CREATE TABLE Table01
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    bookId INT
);

CREATE TABLE Table02
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    bookName VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES
('kim', 1);

INSERT INTO Table01
(name, bookId)
VALUES
('lee', 2);

INSERT INTO Table01
(name, bookId)
VALUES
('choi', 3);

INSERT INTO Table01
(name, bookId)
VALUES
('park', 4);

INSERT INTO Table02
(bookName)
VALUES
('book1');

INSERT INTO Table02
(bookName)
VALUES
('book2');

INSERT INTO Table02
(bookName)
VALUES
('book3');

INSERT INTO Table02
(bookName)
VALUES
('book4');

SELECT * FROM Table01; -- 4개 레코드
SELECT * FROM Table02; -- 4개 레코드

-- 두개의 테이블 한번에 조회
SELECT * FROM Table01,Table02; -- 16개 레코드

-- JOIN
SELECT * FROM
Table02 JOIN Table01
ON Table01.bookid = Table02.id;

-- alias (별칭(변수))

-- TABLE 경우
SELECT * FROM
Table01 AS t1 JOIN Table02 AS t2 -- Table01을 t1으로 별칭(변수)
ON t1.BookId = t2.id;

-- column에도 별칭 저장
SELECT 
t1.id AS id1,
t1.name AS name1,
t1.bookId AS bookId,
t2.id AS id2,
t2.bookName AS bname
FROM
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;




SELECT b.id boardId,
					  b.title title,
					  b.body body,
					  m.name memberName,
					  b.inserted 
					 FROM Board b JOIN Member m ON b.memberId = m.id 
					 WHERE b.id;


