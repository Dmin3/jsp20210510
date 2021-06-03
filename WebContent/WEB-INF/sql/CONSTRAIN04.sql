CREATE TABLE MyTable12(
id INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(255) NOT NULL,
body VARCHAR(255) NOT NULL
);

-- auto_increment <- 자동으로 숫자가 증가

INSERT INTO MyTable12
(title, body)
VALUES
('제목1', '본문1');

SELECT * FROM MyTable12;