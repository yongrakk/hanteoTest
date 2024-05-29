package com.example.hanteo.dto;

import lombok.Data;

@Data
public class BoardCateDto {

    private String boardCateId;
    private String boardParentId;
    private String boardCateNm;
    private int boardCateDepth;

}
