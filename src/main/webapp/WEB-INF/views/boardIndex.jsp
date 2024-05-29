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
     * Index 에서 게시판 카테고리를 화면에 생성
     */
    $( document ).ready(function() {

        var jsonObj = ${data};

        $.each(jsonObj,function(idx,item){
            createCateMenu(item);
        });

        $.each(jsonObj,function(idx,item){
            console.log(item['boardParentId']);
            if(item['boardParentId'] == 'anony'){
                createAnonyMenu(item);
            }
        });

    });
</script>

<script>
    /**
     * 화면 생성 메소드
     * @param item
     */
    function createCateMenu(item){
        var itemParentId = item['boardParentId'];
        var itemCateId = item['boardCateId'];
        var itemCateNm = item['boardCateNm'];
        var itemDepth = item['boardCateDepth'];

        if(itemDepth == 1) {
            if($(".menu_depth_wrapper").children().length == 0){
                $(".menu_depth_wrapper").append('<div class="menu_depth_1"><ul></ul></div>');
            }
            $(".menu_depth_1 > ul").append('<li id=' + itemCateId + '>' + itemCateNm + '</li>');
        } else if(itemDepth == 2) {
            if($('#'+itemParentId).children().length == 0) {
                $('#'+itemParentId).append('<div class="menu_depth_2"><ul></ul></div>');
            }
            $('#'+itemParentId + ' .menu_depth_2 > ul').append('<li id=' + itemCateId + '>' + itemCateNm + '</li>');
        } else if(itemDepth == 3){
            if($('#'+itemParentId).children().length == 0) {
                $('#'+itemParentId).append('<div class="menu_depth_3"><ul></ul></div>');
            }
            $('#'+itemParentId + ' .menu_depth_3 > ul').append('<li onclick="boardList('+itemCateId+')" id=' + itemCateId + '>'+ itemCateNm + '</li>');
        }
    };

    /**
     * 공통 익명게시판 생성
     * @param item
     */
    function createAnonyMenu(item){
        var itemCateId = item['boardCateId']
        var itemCateNm = item['boardCateNm'];

        $(".menu_depth_3 > ul").append('<li onclick="boardList(\''+itemCateId+'\')" id=' + itemCateId + '>'+ itemCateNm + '</li>');
    };

</script>

<script>

    /**
     * 게시판 카테고리 별 게시글 목록을 화면에 생성
     * @param boardCateId
     */
    function boardList(boardCateId){
        $.ajax({
            type:"get",
            url:"/boardList",
            data:{
                boardCateId : boardCateId
            },
            success: function(s){
                //게시판 이름 생성
                if($(".title_container").children().length != 0) {
                    $(".title_container > h3").remove();
                }
                $(".board_list_section").show();

                var boardListTitle = s.boardTitleName;
                $(".title_container").append('<h3>'+boardListTitle+'</h3>');

                //게시글 목록 생성
                if(s.boardList != null){
                    if($(".board_list_table > tbody").children().length != 0){
                        $(".board_list_table > tbody > tr").remove();
                    }
                    $.each(s.boardList,function (idx,item){
                        createBoardList(item);
                    });
                }
            }
        })
    }

</script>

<script>
    /**
     * 게시글 목록 생성 메소드
     * @param item
     */
    function createBoardList(item){
        var boardNo = item['boardNo'];
        var boardWriter = item['boardWriter'];
        var boardTitle = item['boardTitle'];
        var boardDate = item['boardDate'];
        var boardCateId = item['boardCateId']

        $(".board_list_table > tbody")
            .append(
                '<tr>'
                +'<td>' + boardNo + '</td>'
                +'<th><a href="/boardDetail?boardCateId='+boardCateId +'&boardNo='+ boardNo + '">' + boardTitle + '</a></th>'
                +'<th>' + boardWriter + '</th>'
                +'<td>' + boardDate + '</td>'
                +'</tr>'
            );
    };
</script>

<script>
    $(function () {
        $(".sub_menu ul li").mouseenter(function () {
            $(this).addClass("active");
        });

        $(".sub_menu ul li").mouseleave(function () {
            $(this).removeClass("active");
        });
    });
</script>

<body>

<!-- 좌측 메뉴 -->
<section class="board_menu_section">
<div id="board_index_wrapper">
    <div class="topbar" style="position: absolute; top:0;">
        <div class="left_sub_menu">
            <div class="sub_menu">
                <h2>게시판 목록</h2>
                <!-- 좌측 메뉴 중 카테고리 생성 부분 -->
                <div class="menu_depth_wrapper">
                </div>
            </div>
        </div>
    </div>
</div>
</section>

<!-- 게시글 목록 -->
<section class="board_list_section">
    <div class="board_list_title">
        <!-- 게시글 목록에 타이틀 생성 부분 -->
        <div class="title_container">
        </div>
    </div>
    <div class="board_list_wrapper">
        <div class="board_list_container">
            <table class="board_list_table">
                <thead>
                <tr>
                    <th scope="col" class="th_num">번호</th>
                    <th scope="col" class="th_title">제목</th>
                    <th scope="col" class="th_writer">작성자</th>
                    <th scope="col" class="th_date">작성일자</th>
                </tr>
                </thead>
                <!-- 게시글 목록 생성 부분 -->
                <tbody>
                </tbody>
            </table>
        </div>
    </div>
</section>
</body>
</html>