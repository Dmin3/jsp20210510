USE test;

DESC MyTable17;

-- member
CREATE TABLE MyTable17
(
	id VARCHAR(255) PRIMARY KEY,
    name VARCHAR(255) NOT NULL
);

-- board
DROP TABLE MyTable18;

CREATE TABLE MyTable18
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(255) NOT NULL,
    t17Id VARCHAR(255) NOT NULL,
    FOREIGN KEY(t17Id) REFERENCES MyTable17(id) -- t17id가 mytable17에 id column을 참조한다는 뜻
);

INSERT INTO MyTable17
(
id,name
)
VALUES
('donald', 'trump');

INSERT INTO MyTable18
(
title,t17Id
)
VALUES
('usa', 'donald'); -- ok

SELECT * FROM MyTable17;
SELECT * FROM MyTable18;

-- 제약사항 위계 (t17Id에 'kim'이라는 단어가 없어서 실행에러)
INSERT INTO MyTable18
(
title,t17Id
)
VALUES
('korea', 'kim');

-- 삭제
-- donald를 참조하고 있는 MyTable18에 donald가 있어서 삭제가 안됌
DELETE FROM MyTable17
WHERE id ='donald';

-- donald를 삭제 해줘야지만 MyTable17에 값을 삭제 할수있음
DELETE FROM MyTable18
WHERE t17Id = 'donald';