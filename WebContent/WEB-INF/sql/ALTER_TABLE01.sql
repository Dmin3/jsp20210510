-- ALTER TABLE
CREATE TABLE MyTable16
(
	id INT,
    title VARCHAR(255),
    body VARCHAR(255)
);

-- add column(추가)
ALTER TABLE MyTable16
ADD inserted TIMESTAMP;

DESC MyTable16;

-- drop column(삭제)
ALTER TABLE MyTable16
DROP COLUMN inserted;

-- modify colum
ALTER TABLE MyTable16
MODIFY COLUMN body VARCHAR(1023); -- colum 수정 하는법

-- add not null
ALTER TABLE MyTable16
MODIFY title VARCHAR(255) NOT NULL;

DESC MyTable16;

INSERT INTO MyTable16
(id, title)
VALUES
(2, 'title');

SELECT * FROM MyTable16;

-- add unique
ALTER TABLE MyTable16
ADD UNIQUE (id);

DESC MyTable16;

-- add PRIMARY KEY

ALTER TABLE MyTable16
ADD PRIMARY KEY (id);

-- add auto_increment
ALTER TABLE MyTable16
MODIFY id INT AUTO_INCREMENT;




