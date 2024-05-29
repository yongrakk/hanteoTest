package com.example.hanteo.dto;

import lombok.Data;

import java.util.Date;

@Data
public class BoardListDto {

    private String boardCateId;
    private String boardCateNm;
    private int boardNo;
    private String boardWriter;
    private String boardTitle;
    private String boardDate;

}
