package com.spring.main.dao;

import java.util.HashMap;

public interface MemberDAO {

	int join(HashMap<String, String> params);

	String login(String id);
	
}
