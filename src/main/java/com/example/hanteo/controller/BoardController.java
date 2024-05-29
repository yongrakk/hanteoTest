package com.example.hanteo.controller;

import com.example.hanteo.dto.BoardCateDto;
import com.example.hanteo.dto.BoardDetailDto;
import com.example.hanteo.dto.BoardListDto;
import com.example.hanteo.service.BoardService;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class BoardController {

    @Autowired
    BoardService boardService;

    /**
     *
     * 게시판 Index
     * @return
     */
    @GetMapping("/")
    public ModelAndView boardIndexTest(){
        ModelAndView mv = new ModelAndView();

        //첫 화면 접근시 모든 카테고리 정보를 출력
        List<BoardCateDto> boardAllList = boardService.selectAll();
        JSONArray boardMenuArray = new JSONArray(boardAllList);

        mv.addObject("data",boardMenuArray);
        mv.setViewName("boardIndex");

        return mv;
    }

    /**
     * 게시판 구분 코드로 리스트 출력
     *
     * @param boardCateId
     * @return
     */
    @GetMapping("/boardList")
    public Map<String,Object> getBoardList(@RequestParam("boardCateId") String boardCateId){
        Map<String,Object> map = new HashMap<>();

        //게시판 카테고리 이름을 검색
        String boardCateNm = boardService.selectBoardListName(boardCateId);

        //게시판 카테고리 별 게시글 리스트 검색
        List<BoardListDto> boardListDtoList = boardService.selectBoardListById(boardCateId);

        map.put("boardTitleName",boardCateNm);
        map.put("boardList",boardListDtoList);

        return map;
    }

    /**
     * 게시글 상세보기
     *
     * @param boardCateId
     * @param boardNo
     * @return
     */
    @GetMapping("/boardDetail")
    public ModelAndView boardDetail(@RequestParam(required = true) String boardCateId ,@RequestParam(required = true)String boardNo){

        ModelAndView mv = new ModelAndView();

        //게시판 카테고리 번호와 게시글 번호로 게시글 상세정보 검색
        Map<String,String> searchMap = new HashMap<>();
        searchMap.put("boardCateId",boardCateId);
        searchMap.put("boardNo",boardNo);

        BoardDetailDto boardDetailDto = boardService.selectBoardDetailById(searchMap);

        JSONObject jsonObject = new JSONObject();
        jsonObject.put("boardTitle",boardDetailDto.getBoardTitle());
        jsonObject.put("boardWriter",boardDetailDto.getBoardWriter());
        jsonObject.put("boardContent",boardDetailDto.getBoardContent());
        jsonObject.put("boardDate",boardDetailDto.getBoardDate());

        mv.addObject("data",jsonObject);
        mv.setViewName("boardDetail");

        return mv;
    }
}