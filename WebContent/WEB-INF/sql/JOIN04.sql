USE text2;

-- 게시물을 작성하지 않은 Member의 id, name을 출력
SELECT * FROM Board;
SELECT * FROM Member;

SELECT m.id, m.name
FROM Member m LEFT JOIN Board b 
ON m.id = b.memberId
WHERE b.memberId IS NULL;