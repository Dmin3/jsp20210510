USE text2;

SELECT * FROM Board
ORDER BY id DESC;

SELECT * FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
ORDER BY b.id DESC; -- 댓글이 없는 게시물도 null로 출력이 되야하기때문에 board 테이블까지 포함한 left join 이용

SELECT b.*, count(c.id) FROM Board b LEFT JOIN Comment c ON c.boardId = b.id
GROUP BY b.id
ORDER BY b.id DESC;


SELECT b.id boardId,
		b.title title,
		m.name name,
        count(c.id) numberOfComment,
		b.inserted  
		FROM Board b JOIN Member m 
		ON b.memberId = m.id 
        LEFT JOIN Comment c
        ON b.id = c.boardId
        GROUP BY b.id
		ORDER BY boardId DESC;
        
        SELECT * FROM Member;
        SELECT * FROM Board;
        
		SELECT m.*, count(b.id)
        FROM Member m JOIN Board b ON m.id = b.memberId WHERE m.id = 'aa';
        
       SELECT m.*, count(b.id), count(c.id)
       FROM Member b LEFT JOIN Board b ON m.id = b.memberId
       LEFT JOIN Comment c ON 
	
        
        