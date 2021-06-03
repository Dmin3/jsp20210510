-- UNIQUE (고유로 가지는 값, 중복 불가 )

CREATE TABLE MyTable9 (
id INT UNIQUE ,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES
(3, 'hello');

INSERT INTO MyTable9
( name)
VALUES
('hello');

INSERT INTO MyTable9
( name)
VALUES
('donald');

SELECT * FROM MyTable9;

-- NULL

SELECT * FROM MyTable9
WHERE id IS NOT NULL;

SELECT * FROM MyTable9
WHERE id IS NULL;

-- IFNULL
SELECT ifnull(id, 0), name FROM MyTable9; -- 만약 null이라면 null id 값에 넣어줌


-- 
CREATE TABLE MyTable10
(
id INT UNIQUE NOT NULL,
name VARCHAR(255) NOT NULL
);


