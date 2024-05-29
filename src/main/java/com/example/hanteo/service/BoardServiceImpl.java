package com.example.hanteo.service;

import com.example.hanteo.dto.BoardCateDto;
import com.example.hanteo.dto.BoardDetailDto;
import com.example.hanteo.dto.BoardListDto;
import com.example.hanteo.mapper.BoardMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {

    @Autowired
    BoardMapper boardMapper;

    @Override
    public List<BoardCateDto> selectAll() {
        return boardMapper.selectAll();
    }

    @Override
    public List<BoardListDto> selectBoardListById(String boardCateID) {
        return boardMapper.selectBoardListById(boardCateID);
    }

    @Override
    public String selectBoardListName(String boardCateId) {
        return boardMapper.selectBoardListName(boardCateId);
    }

    @Override
    public BoardDetailDto selectBoardDetailById(Map<String, String> searchMap) {
        return boardMapper.selectBoardDetailById(searchMap);
    }
}