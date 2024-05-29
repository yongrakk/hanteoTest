package com.example.hanteo.mapper;

import com.example.hanteo.dto.BoardCateDto;
import com.example.hanteo.dto.BoardDetailDto;
import com.example.hanteo.dto.BoardListDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardMapper {
    public List<BoardCateDto> selectAll();

    public List<BoardListDto> selectBoardListById(String boardCateId);

    public String selectBoardListName(String boardCateId);

    public BoardDetailDto selectBoardDetailById(Map<String,String> searchMap);
}
