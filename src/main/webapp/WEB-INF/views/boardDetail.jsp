<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
</head>
<script src="//code.jquery.com/jquery-3.5.1.min.js" ></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<link href="css/board.css" rel="stylesheet" type="text/css">


<script>
    /**
     * 게시글 상세보기 화면 생성
     */
    $( document ).ready(function() {
        var board = ${data};

        $(".board_detail_table").append('<th class=th_title>' + board.boardTitle + '</th>');
        $(".board_detail_table").append('<th class=th_writer>' + board.boardWriter + '</th>');
        $(".board_detail_table").append('<th class=th_date>' + board.boardDate + '</th>');
        $(".board_detail_content").append('<p>' + board.boardContent + '</p>');
    });
</script>

<body>
<section class="board_detail_section">
    <div class="board_detail_wrapper">
        <div class="board_detail_container">
            <table class="board_detail_table">
                <!-- 게시글 상세보기 타이틀/작성자/작성시간 생성 부분 -->
                <tr>
                </tr>
            </table>
            <!-- 게시글 상세보기 글 내용 생성 부분 -->
            <div class="board_detail_content">
            </div>
        </div>
    </div>
</section>
</body>
</html>
