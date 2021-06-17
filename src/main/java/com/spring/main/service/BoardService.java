package com.spring.main.service;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;

import com.spring.main.dao.BoardDAO;
import com.spring.main.dto.BoardDTO;

@Service
public class BoardService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired BoardDAO dao;
	String page="";
	String msg="";
	
	public ModelAndView boardList() {
		ArrayList<BoardDTO> list = dao.boardList();
		logger.info("list size: "+list.size());
		ModelAndView mav = new ModelAndView();
		mav.addObject("boardList", list);
		mav.setViewName("boardList");
		return mav;
	}
	
	public ModelAndView boardWrite(HashMap<String, String> params) {
		logger.info("글쓰기 요청");
		ModelAndView mav = new ModelAndView();
		
		int success = dao.boardWrite(params);
		if(success>0) {
			msg = "글 작성 성공";
			page = "redirect:/boardList";
		}
		logger.info("success: "+success);
		mav.addObject("msg", msg);
		mav.setViewName(page);
		return mav;
	}

	public ModelAndView boardDelete(String boardIdx) {
		ModelAndView mav = new ModelAndView();
		int success = dao.boardDelete(boardIdx);
		logger.info("success여부:"+success);
		mav.setViewName("redirect:/boardList");
		return mav;
	}

	@Transactional
	public ModelAndView boardDetail(String boardIdx) {
		ModelAndView mav = new ModelAndView();
		BoardDTO dto = dao.boardDetail(boardIdx);
		
		dao.upHit(boardIdx);
		if(dto!=null) {
			page="boardDetail";
			mav.addObject("info", dto);
		}
		mav.setViewName(page);
		return mav;
	}

//	public ModelAndView boardUpdate(HashMap<String, String> params) {
//		ModelAndView mav = new ModelAndView();
//		logger.info("params:"+params);
//		int success = dao.boardUpdate(params);
//		
//		msg = "글 수정 실패";
//		page = "bbsDetail";
//		
//		if(success>0) {
//			msg = "글 수정 성공";
//			page = "redirect:/boardList";
//		}
//		logger.info("수정 성공여부"+success);
//		mav.addObject("msg", msg);
//		mav.setViewName(page);
//		return mav;
//	}




}
