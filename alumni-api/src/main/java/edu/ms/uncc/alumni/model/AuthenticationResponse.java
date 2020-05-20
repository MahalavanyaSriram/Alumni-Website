package edu.ms.uncc.alumni.model;

public class AuthenticationResponse {
	
	private String userId;
	private String message;

	public String getUserId() {
		return userId;
	}

	public String getMessage() {
		return message;
	}


	public void setMessage(String message) {
		this.message = message;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public AuthenticationResponse(String userId) {
		this.userId = userId;
	}

	public AuthenticationResponse() {
		super();
	}
	
	
	
}
