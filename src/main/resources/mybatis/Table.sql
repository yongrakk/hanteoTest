--게시판 게시글 테이블 생성
CREATE TABLE board (
    boardNo int unsigned NOT NULL AUTO_INCREMENT,
    cateId varchar(100) NOT NULL,
    boardWriter varchar(500) NOT NULL,
    boardTitle varchar(500) NOT NULL,
    boardContent varchar(2000) NOT NULL,
    boardDate datetime NOT NULL,
    PRIMARY KEY (boardNo,cateId),
    FOREIGN KEY (cateId) REFERENCES boardcategory(cateId)
);

--게시판 카테고리 테이블 생성
CREATE TABLE boardcategory (
    cateId varchar(100) NOT NULL,
    parentId varchar(100) NOT NULL,
    cateNm varchar(200) NOT NULL,
    cateDepth int NOT NULL,
    seq int DEFAULT NULL,
    PRIMARY KEY (cateId)
) ;