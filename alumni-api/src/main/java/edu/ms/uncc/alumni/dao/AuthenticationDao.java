package edu.ms.uncc.alumni.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import edu.ms.uncc.alumni.model.Account;
import edu.ms.uncc.alumni.repository.AuthenticationRepository;

@Component
public class AuthenticationDao {
	
	@Autowired
	private AuthenticationRepository authenticationRepository;
	
	public Account getAccountByEmail(String email){
		 return authenticationRepository.findOne(email);
	}

}
