package edu.ms.uncc.alumni.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.ms.uncc.alumni.model.AuthenticationRequest;
import edu.ms.uncc.alumni.model.AuthenticationResponse;
import edu.ms.uncc.alumni.model.ValidationResponse;
import edu.ms.uncc.alumni.service.AuthenticationService;

@RestController
@RequestMapping("/authenticate")
public class AuthenticationController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AuthenticationController.class);
	
	@Autowired
	private AuthenticationService authenticationService;
	
	@RequestMapping(value= "/login" , method=RequestMethod.POST)
	public ResponseEntity<?> createAuthenticationTokenAndLogin(@RequestBody AuthenticationRequest request){
		HttpHeaders headers = new HttpHeaders();
		headers.add("ContentType", MediaType.APPLICATION_JSON_VALUE);
		if(null!=request.getEmail() && null!=request.getPassword()) {
			String authenticatedUserId = authenticationService.doLogin(request.getEmail(), request.getPassword());
			if(null!=authenticatedUserId) {
				LOGGER.info("User is authenticated!!");
				AuthenticationResponse authenticationResponse = new AuthenticationResponse();
				authenticationResponse.setMessage("User authentication success");
				authenticationResponse.setUserId(authenticatedUserId);
				return ResponseEntity.ok().headers(headers).body(authenticationResponse);
			}else {
				LOGGER.error("User Authentication failed for " + request.getEmail());
				AuthenticationResponse authenticationResponse = new AuthenticationResponse();
				authenticationResponse.setMessage("User authentication failed");
				return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).headers(headers).body(authenticationResponse);
			}
		}else {
			LOGGER.error("Request is empty. Throwing validation error");
			ValidationResponse validationResponse = new ValidationResponse();
			validationResponse.setMessage("Request is invalid");
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).headers(headers).body(validationResponse);
		}
		
		
	}

}
