package edu.ms.uncc.alumni.model;

public class ValidationResponse {
	
	private String status;
	private String message;
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public ValidationResponse() {
	}

	public ValidationResponse(String message,String status) {
		this.message = message;
		this.status = status;
	}

	public ValidationResponse(String status) {
		this.status = status;
	}
	

}
