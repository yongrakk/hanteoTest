## 한터글로벌 사전과제 제출

### 지원자 : 최용락 (c1.yrkk@gmail.com)
### 프로젝트명
**hanteo**

### ⚙개발 환경
- JAVA 11
- JDK 11
- **IDE** : Intellij   
- **Framework** : Spring boot 2.7
- **ORM** : Mybatis
- **Database** : Mysql 8.2
- **Library** : Jquery, Ajax, lombok
- **Build Tool** : Gradle 8.5

### 🔑 프로젝트 실행 유의사항
**데이터베이스 사용 정보**
**Mysql Database Schema : hanteo, Port: 3306**
**사용한 DB User**
**ID :** test
**PASSWORD** : 1234

**테스트를 위한 데이터 생성**
1. 테이블 생성 SQL 스크립트 실행 //카테고리 테이블: boardcategory , 게시글 테이블: board
**(/resources/mybatis/Table.sql)**
2. 테스트 데이터 생성 SQL 스크립트 실행 //카테고리 데이터, 게시글 데이터
**(/resources/mybatis/Insert.sql)**

**테스트 실행 어플리케이션**
1. 실행 어플리케이션 : LotteProductApplication
2. 접속 URL (http://localhost:8080/)
  
### 📌주요 기능 
* 인덱스 ("/")

  - 좌측 게시판 목록 메뉴에 대>중>소 카테고리 로 구분
  - 마우스 인식 이벤트로 카테고리 세분화 조작
  - 공통 익명 게시판 사용
  - 소 카테고리 클릭 시 해당 게시판 게시글 목록 화면에 번호/제목/작성자/작성일자 생성
  - 최근 작성한 게시글이 맨위로 올라오도록 쿼리 작성
  - 게시글 제목 클릭으로 상세보기 화면으로 이동

* 게시글 상세 ("/boardDetail")

  - 게시글 번호(boardNo), 카테고리 번호(cateId)로 DB조회
  - 제목/작성자/작성일자 와 게시글 내용을 화면에 생성
      
### 🎄프로젝트 트리
```
   src
├─main                                
│├─java
││└─com
││  └─example
││    └─hanteo
││      │ HanteoApplication.java           #실행 어플리케이션
││      │      
││      ├─controller
││      │    BoardController.java          #게시판 컨트롤러(카테고리, 게시글리스트, 게시글상세)
││      │      
││      ├─dto
││      │    BoardCateDto.java             #게시판 카테고리 Dto
││      │    BoardDetailDto.java           #게시판 상세 Dto
││      │    BoardListDto.java             #게시판 리스트 Dto
││      │      
││      ├─mapper
││      │    BoardMapper.java                        #게시판 Mapper
││      │      
││      └─service
││           BoardService.java                       #게시판 관련 Service
││           BoardServiceImpl.java                   #게시판 관련 Service
││                      
│└─resources
│ │ application.properties                           #스프링 관련 설정
│ │  
│ ├─mybatis
│ ││  Insert.sql                                     #초기 데이터 생성 SQL 스크립트
│ ││  mybatis-config.xml                             #Mybatis 관련 설정
│ ││  Table.sql                                      #테이블 생성 SQL 스크립트
│ ││  
│ │└─mapper
│ │        boardMapper.xml                           #게시판 관련 쿼리 Mapper
│ │        
│ ├─static
│ │├─css
│ ││      board.css                                  #Html css 처리
│ ││      
│ │          
|└─webApp
│ ├─WEB-INF
│ │├─views
│ ││      boardDetail.jsp                            #게시글 상세보기 화면
│ ││      boardIndex.jsp                             #인덱스 화면


```
### 🔗테이블 관계도 (스키마 : hanteo)
![테이블관계](https://github.com/yongrakk/hanteoTest/assets/42191675/8c1d4e86-8430-4771-92bc-a64a02447f92)
