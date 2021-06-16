package com.spring.main.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.spring.main.dto.BoardDTO;

public interface BoardDAO {

	int boardWrite(HashMap<String, String> params);

	ArrayList<BoardDTO> boardList();

	int boardDelete(String boardIdx);

	BoardDTO boardDetail(String boardIdx);

}
