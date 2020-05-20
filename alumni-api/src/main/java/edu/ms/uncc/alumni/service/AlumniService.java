package edu.ms.uncc.alumni.service;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.ms.uncc.alumni.dao.AlumniDao;
import edu.ms.uncc.alumni.model.Alumni;
import edu.ms.uncc.alumni.model.AlumniModel;
import edu.ms.uncc.alumni.model.Event;
import edu.ms.uncc.alumni.model.EventModel;
import edu.ms.uncc.alumni.model.Follow;
import edu.ms.uncc.alumni.model.JobPosting;
import edu.ms.uncc.alumni.model.Participant;

@Service
public class AlumniService {

	@Autowired
	private AlumniDao alumniDao;

	public List<AlumniModel> getAllAlumniExcludingCurrentUser(int userId)
			throws InterruptedException, ExecutionException {

		List<Alumni> alumniList = alumniDao.getAllAlumniExcludingCurrentUser(userId);
		List<Follow> followerList = alumniDao.getAllFollowersForAUser(userId);
		List<AlumniModel> list = new ArrayList<>();

		for (Alumni alumnus : alumniList) {
			list.add(new AlumniModel(alumnus));
		}

		for (Follow follow : followerList) {
			for (AlumniModel alumnus : list) {
				if (alumnus.getAlumniId() == follow.getFollowingId()) {
					alumnus.setFollowedByUser(true);
				}
			}
		}

		return list;
	}

	public Alumni getSpecificAlumniDetail(int userId) {
		return alumniDao.getSpecificAlumniDetails(userId);
	}

	public List<JobPosting> getAllJobPostings() {
		return alumniDao.getAllJobPostings();
	}

	public JobPosting createJobPosting(JobPosting jobPosting) {
		return alumniDao.createJobPosting(jobPosting);
	}

	public List<EventModel> getAllEventsAndEnrollmentForAUser(int userId)
			throws InterruptedException, ExecutionException {
		CompletableFuture<List<Event>> events = alumniDao.getAllEvents();
		CompletableFuture<List<Participant>> participantEvents = alumniDao.getEventsForAParticipant(userId);
		CompletableFuture.allOf(events, participantEvents).join();
		List<Event> listOfEvents = events.get();
		List<Participant> listOfParticipants = participantEvents.get();
		List<EventModel> eventModelsList = new ArrayList<>();
		for (Event event : listOfEvents) {
			eventModelsList.add(new EventModel(event));
		}
		for (Participant participant : listOfParticipants) {
			for (EventModel eventModel : eventModelsList) {
				if (participant.getEventId() == eventModel.getEventId()) {
					eventModel.setEnrolledByTheUser(true);
				}
			}
		}
		return eventModelsList;
	}

	public int createEventEnrollment(Participant participant) {
		return alumniDao.createEventEnrollment(participant);
	}

	public int createFollowing(Follow follow) {
		return alumniDao.createFollower(follow);
	}
}
