--게시판 카테고리 데이터 생성
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('00000', 'anony', '익명게시판', 3, 1);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10000', 'index', '보이그룹', 1, 1);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10100', '10000', '엑소', 2, 1);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10101', '10100', '공지사항', 3, 1);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10102', '10100', '첸', 3, 2);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10103', '10100', '백현', 3, 3);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10104', '10100', '시우민', 3, 4);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10200', '10000', '방탄소년단', 2, 2);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10201', '10200', '공지사항', 3, 1);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('10202', '10200', '뷔', 3, 2);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('20000', 'index', '걸그룹', 1, 2);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('20100', '20000', '블랭핑크', 2, 3);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('20101', '20100', '공지사항', 3, 1);
INSERT INTO boardcategory(cateId, parentId, cateNm, cateDepth, seq) VALUES('20102', '20100', '로제', 3, 2);

--게시판 게시글 데이터 작성
insert into board values (1,'00000','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'00000','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'00000','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'00000','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'00000','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'10101','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'10101','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'10101','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'10101','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'10101','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'10102','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'10102','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'10102','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'10102','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'10102','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'10103','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'10103','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'10103','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'10103','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'10103','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'10104','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'10104','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'10104','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'10104','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'10104','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'10201','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'10201','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'10201','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'10201','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'10201','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'10202','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'10202','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'10202','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'10202','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'10202','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'20101','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'20101','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'20101','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'20101','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'20101','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');
insert into board values (1,'20102','user1','첫 제목','안녕하세요 첫번째 글 작성입니다.','2024-01-01 07:59:59');
insert into board values (2,'20102','user2','두번째 제목','안녕하세요 두번째 글 작성입니다.','2024-01-02 08:59:59');
insert into board values (3,'20102','user3','세번째 제목','안녕하세요 세번째 글 작성입니다.','2024-01-03 09:59:59');
insert into board values (4,'20102','user4','네번째 제목','안녕하세요 네번째 글 작성입니다.','2024-01-04 10:59:59');
insert into board values (5,'20102','user5','다섯번째 제목','안녕하세요 다섯번째 글 작성입니다.','2024-01-05 11:59:59');