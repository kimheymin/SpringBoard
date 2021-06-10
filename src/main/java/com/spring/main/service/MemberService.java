package com.spring.main.service;

import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.spring.main.dao.MemberDAO;

@Service
public class MemberService {

	private Logger logger = LoggerFactory.getLogger(this.getClass());
	@Autowired private MemberDAO dao;
	String page="";
	String msg="";
	
	public int join(HashMap<String, String> params) {
		String plain = params.get("pw");
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String encrypt = encoder.encode(plain);
		params.put("pw", encrypt);	
		return dao.join(params);
	}

}
