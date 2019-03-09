package com.in28minutes.springboot.web.service;

import org.springframework.stereotype.Component;

@Component
public class LoginService {

	public boolean validateUser(String userId, String password) {
		// Username: matthew 
		// Password: test
		return userId.equals("matthew") && password.equals("test");
	}
}
