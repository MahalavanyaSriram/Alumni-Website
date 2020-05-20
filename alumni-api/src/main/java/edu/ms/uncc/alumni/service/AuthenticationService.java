package edu.ms.uncc.alumni.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.ms.uncc.alumni.dao.AuthenticationDao;
import edu.ms.uncc.alumni.model.Account;

@Service
public class AuthenticationService {

	@Autowired
	private AuthenticationDao authenticationDao;
	
	public String doLogin(String emailId, String password) {
		Account account = authenticationDao.getAccountByEmail(emailId);
		return account!=null ? account.getPassword().equals(password) ? String.valueOf(account.getUserId()): null : null;
	}
}
