package edu.ms.uncc.alumni.controller;

import java.util.concurrent.ExecutionException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import edu.ms.uncc.alumni.model.Follow;
import edu.ms.uncc.alumni.model.JobPosting;
import edu.ms.uncc.alumni.model.Participant;
import edu.ms.uncc.alumni.model.ValidationResponse;
import edu.ms.uncc.alumni.service.AlumniService;

@RestController
@RequestMapping("/alumni")
public class AlumniController {
	
	private static final Logger LOGGER = LoggerFactory.getLogger(AlumniController.class);
	
	@Autowired
	private AlumniService alumniService;
	
	@RequestMapping("/getAllAlumni/{userId:[\\d]+}")
	public ResponseEntity<?> getAllAlumniExcludingSignedOnUser(@PathVariable("userId") String userId) throws InterruptedException, ExecutionException {
		LOGGER.info("Get all Alumni invoked");
		HttpHeaders headers = new HttpHeaders();
		headers.add("ContentType", MediaType.APPLICATION_JSON_VALUE);
		try {
			int userIdValid = Integer.parseInt(userId);
			return ResponseEntity.ok(alumniService.getAllAlumniExcludingCurrentUser(userIdValid));
		} catch (NumberFormatException e) {
			LOGGER.error("Passed UserId is not valid. Throwing validation error");
			ValidationResponse validationResponse = new ValidationResponse();
			validationResponse.setMessage("UserId is invalid");
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).headers(headers).body(validationResponse);
		}
	}
	
	@RequestMapping("/getAlumniDetail/{userId:[\\d]+}")
	public ResponseEntity<?> getSpecificAlumniDetail(@PathVariable("userId") String userId) {
		LOGGER.info("Get Specific Alumni invoked");
		HttpHeaders headers = new HttpHeaders();
		headers.add("ContentType", MediaType.APPLICATION_JSON_VALUE);
		try {
			int userIdValid = Integer.parseInt(userId);
			return ResponseEntity.ok(alumniService.getSpecificAlumniDetail(userIdValid));
		} catch (NumberFormatException e) {
			LOGGER.error("Passed UserId is not valid. Throwing validation error");
			ValidationResponse validationResponse = new ValidationResponse();
			validationResponse.setMessage("UserId is invalid");
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).headers(headers).body(validationResponse);
		}
	}
	
	@RequestMapping("/getAllJobPostings")
	public ResponseEntity<?> getAllJobPostings() {
		LOGGER.info("Get all JobPostings invoked");
		HttpHeaders headers = new HttpHeaders();
		headers.add("ContentType", MediaType.APPLICATION_JSON_VALUE);
		return ResponseEntity.ok(alumniService.getAllJobPostings());
	}
	
	
	@RequestMapping(value= "/createJobPosting" , method=RequestMethod.POST)
	public ResponseEntity<?> createJobPosting(@RequestBody JobPosting jobPosting) {
		LOGGER.info("Creating a job posting");
		JobPosting createdjobPosting = alumniService.createJobPosting(jobPosting);
		if(createdjobPosting !=null) {
			return ResponseEntity.ok(createdjobPosting);
		}
		ValidationResponse response = new ValidationResponse();
		response.setMessage("Job Posting creation Failure. Please try again");
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
	}
	
	@RequestMapping("/getEventsEnrollmentForAUser/{userId:[\\d]+}")
	public ResponseEntity<?> getEventsAndEnrollmentForAUser(@PathVariable("userId") String userId) throws InterruptedException, ExecutionException{
		LOGGER.info("Get Event enrollments");
		HttpHeaders headers = new HttpHeaders();
		headers.add("ContentType", MediaType.APPLICATION_JSON_VALUE);
		try {
			int userIdValid = Integer.parseInt(userId);
			return ResponseEntity.ok(alumniService.getAllEventsAndEnrollmentForAUser(userIdValid));
		} catch (NumberFormatException e) {
			LOGGER.error("Passed UserId is not valid. Throwing validation error");
			ValidationResponse validationResponse = new ValidationResponse();
			validationResponse.setMessage("UserId is invalid");
			return ResponseEntity.status(HttpStatus.BAD_REQUEST).headers(headers).body(validationResponse);
		}
	}
	
	@RequestMapping(value= "/createEventEnrollmentForAUser" , method=RequestMethod.POST)
	public ResponseEntity<?> createEventEnrollment(@RequestBody Participant participant) {
		LOGGER.info("Enrolling to an event for a user");
		int createdparticipant = alumniService.createEventEnrollment(participant);
		if(createdparticipant !=0) {
			return ResponseEntity.ok(createdparticipant);
		}
		ValidationResponse response = new ValidationResponse();
		response.setMessage("Event enrollment Failure. Please try again");
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
	}
	
	@RequestMapping(value= "/createFollowerForAUser" , method=RequestMethod.POST)
	public ResponseEntity<?> createFollowEnrollment(@RequestBody Follow follow) {
		LOGGER.info("Enrolling to an Followe for a user");
		int createdparticipant = alumniService.createFollowing(follow);
		if(createdparticipant !=0) {
			return ResponseEntity.ok(createdparticipant);
		}
		ValidationResponse response = new ValidationResponse();
		response.setMessage("Follow enrollment Failure. Please try again");
		return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(response);
	}

}
