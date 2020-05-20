package edu.ms.uncc.alumni.model;

public class EventModel {

	private int eventId;
	
	private String eventName;
	
	private String eventDescription;
	
	private boolean isEnrolledByTheUser;

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public String getEventName() {
		return eventName;
	}

	public void setEventName(String eventName) {
		this.eventName = eventName;
	}

	public String getEventDescription() {
		return eventDescription;
	}

	public void setEventDescription(String eventDescription) {
		this.eventDescription = eventDescription;
	}

	public boolean isEnrolledByTheUser() {
		return isEnrolledByTheUser;
	}

	public void setEnrolledByTheUser(boolean isEnrolledByTheUser) {
		this.isEnrolledByTheUser = isEnrolledByTheUser;
	}

	public EventModel(Event event) {
		this.eventId = event.getEventId();
		this.eventName = event.getEventName();
		this.eventDescription = event.getEventDescription();
	}
	
	
	
}
