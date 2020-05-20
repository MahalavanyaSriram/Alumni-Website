package edu.ms.uncc.alumni.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Async;
import org.springframework.stereotype.Component;

import edu.ms.uncc.alumni.model.Alumni;
import edu.ms.uncc.alumni.model.Event;
import edu.ms.uncc.alumni.model.Follow;
import edu.ms.uncc.alumni.model.JobPosting;
import edu.ms.uncc.alumni.model.Participant;
import edu.ms.uncc.alumni.repository.AlumniRepository;
import edu.ms.uncc.alumni.repository.EventRepository;
import edu.ms.uncc.alumni.repository.FollowRepository;
import edu.ms.uncc.alumni.repository.JobPostingRepository;
import edu.ms.uncc.alumni.repository.ParticipantRepository;

@Component
public class AlumniDao {

	private static final Logger LOGGER = LoggerFactory.getLogger(AlumniDao.class);
	
	@Autowired
	private AlumniRepository alumniRepository;
	
	@Autowired
	private JobPostingRepository jobPostingRepository;
	
	@Autowired
	private EventRepository eventRepository;
	
	@Autowired
	private ParticipantRepository participantRepository;
	
	@Autowired
	private FollowRepository followRepository;
	
	public List<Alumni> getAllAlumniExcludingCurrentUser(int userId){
		LOGGER.info("Retrieving Alumni from View");
		List<Alumni> listOfAlumnus = new ArrayList<>();
		alumniRepository.findByAlumniIdNotQuery(userId).forEach(listOfAlumnus :: add);
		return listOfAlumnus;
	}
	
	public Alumni getSpecificAlumniDetails(int userId){
		LOGGER.info("Retrieving Alumni Details for a specific user");
		return alumniRepository.findOne(userId);
	}
	
	public List<JobPosting> getAllJobPostings(){
		LOGGER.info("Getting all Job postings posted in the system");
		return jobPostingRepository.findAll();
	}
	
	public JobPosting createJobPosting(JobPosting jobPosting) {
		return jobPostingRepository.save(jobPosting);
	}
	
	@Async("asyncExecutor")
	public CompletableFuture<List<Event>> getAllEvents(){
		return CompletableFuture.completedFuture(eventRepository.findAll());
	}
	
	@Async("asyncExecutor")
	public CompletableFuture<List<Participant> >getEventsForAParticipant(int userId){
		return CompletableFuture.completedFuture(participantRepository.findByUserId(userId));
	}
	
	public int createEventEnrollment(Participant participant) {
		return participantRepository.saveParticipant(participant.getEventId(), participant.getUserId());
	}
	
	public List<Follow> getAllFollowersForAUser(int userId){
		return followRepository.findByUserId(userId);
	}
	
	public int createFollower(Follow follow) {
		return followRepository.saveFollower(follow.getFollowerId(), follow.getFollowingId());
	}
}
