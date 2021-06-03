USE text2;
DESC Member;


ALTER TABLE Member  -- Member 테이블 안 id PRIMARY KEY 추가
ADD PRIMARY KEY (id);

ALTER TABLE Member
MODIFY password VARCHAR(255) NOT NULL;

ALTER TABLE Member
MODIFY name VARCHAR(255) NOT NULL; 

ALTER TABLE Member
MODIFY birth DATE NOT NULL; 

ALTER TABLE Member
MODIFY COLUMN inserted TIMESTAMP NOT NULL DEFAULT NOW();

SELECT * FROM Member;

INSERT INTO Member
(id, password, name, birth)
VALUES
('donald', 'trump', 'trmp', '2011-01-01');