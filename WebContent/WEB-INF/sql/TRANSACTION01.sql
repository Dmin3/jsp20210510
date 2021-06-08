USE test;



CREATE TABLE Table05
(
name VARCHAR(255) PRIMARY KEY,
money INT NOT NULL DEFAULT 0
);

INSERT INTO Table05 (name, money) VALUES ('kim', 10000);
INSERT INTO Table05 (name, money) VALUES ('lee', 10000);

SELECT * FROM Table05;

UPDATE Table05
SET money = 5000
WHERE name = 'kim';

UPDATE Table05
SET money = 15000
WHERE name = 'lee';

-- 데이터를 조작하는 쿼리중 한번에 반영되는 쿼리 -> COMMIT

ROLLBACK; -- <- 전 상태로 돌아감


-- 동시 실행
UPDATE Table05
SET money = 5000
WHERE name = 'kim';

UPDATE Table05
SET money = 15000
WHERE name = 'lee';

COMMIT; -- db 반영

SELECT * FROM Table05;

SELECT * FROM Member;

SELECT * FROM Board;
