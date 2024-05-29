package com.example.hanteo.service;

import com.example.hanteo.dto.BoardCateDto;
import com.example.hanteo.dto.BoardDetailDto;
import com.example.hanteo.dto.BoardListDto;

import java.util.List;
import java.util.Map;

public interface BoardService {

    public List<BoardCateDto> selectAll();

    public List<BoardListDto> selectBoardListById(String boardCateID);

    public String selectBoardListName(String boardCateId);

    public BoardDetailDto selectBoardDetailById(Map<String,String> searchMap);
}
