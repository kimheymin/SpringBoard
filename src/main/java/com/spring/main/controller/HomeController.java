package com.spring.main.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.main.dto.MemberDTO;
import com.spring.main.service.MemberService;

@Controller
public class HomeController {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired private MemberService service;
	
	String page = "";
	String msg = "";

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String main() {
		logger.info("메인 페이지 요청");
		return "main";
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public String joinForm() {
		logger.info("회원 가입 페이지로 이동");
		return "joinForm";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String join(Model model,@RequestParam HashMap<String, String> params,
			RedirectAttributes attr) {
		logger.info("회원 가입 정보: "+params);
		
		page = "joinForm";
		msg = "회원가입에 실패하였습니다.";
		int success = service.join(params);
		if(success>0) {
			page = "redirect:/loginForm";
			msg = "회원가입을 축하드립니다.";
		}
		logger.info("회원가입 성공여부: "+success);
		attr.addFlashAttribute("msg",msg);
		model.addAttribute("msg",msg);
		return page;
	}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public String loginForm() {
		logger.info("로그인 페이지로 이동");
		return "loginForm";
	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String login(Model model,@RequestParam String id,@RequestParam String pw,
			RedirectAttributes attr, HttpSession session) {
		logger.info("로그인 정보:"+id+"/"+pw);
		
		page = "loginForm";
		msg = "로그인 실패";
		
		if(service.login(id,pw)) {
			msg = id+" 님 반가워요";
			page = "redirect:/";
			session.setAttribute("loginId", id);
			logger.info("로그인 아이디: "+session.getAttribute("loginId"));
		}
		attr.addFlashAttribute("msg",msg);
		model.addAttribute("msg",msg);
		return page;
	}
	

}
