package com.spring.main.controller;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.main.service.BoardService;

@Controller
public class BoardController {
	
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired private BoardService service;
	
	String page = "";
	String msg = "";
	
	@RequestMapping(value = "/writeForm", method = RequestMethod.GET)
	public String writeForm() {
		logger.info("글쓰기 페이지 요청");
		return "writeForm";
	}
	
	@RequestMapping(value = "/boardList", method = RequestMethod.GET)
	public ModelAndView boardList() {
		logger.info("게시판 목록 요청");
		return service.boardList();
	}
	
	@RequestMapping(value = "/boardWrite", method = RequestMethod.POST)
	public ModelAndView boardWrite(@RequestParam HashMap<String, String> params) {
		logger.info("params: "+params);
		return service.boardWrite(params);
	}
	
	@RequestMapping(value = "/boardDelete", method = RequestMethod.GET)
	public ModelAndView boardDelete(@RequestParam String boardIdx) {
		logger.info("삭제할 게시글 번호: "+boardIdx);
		return service.boardDelete(boardIdx);
	}
	
	@RequestMapping(value = "/boardDetail", method = RequestMethod.GET)
	public ModelAndView boardDetail(@RequestParam String boardIdx) {
		logger.info("상세보기할 게시글 번호: "+boardIdx);
		return service.boardDetail(boardIdx);
	}
	
	

}
