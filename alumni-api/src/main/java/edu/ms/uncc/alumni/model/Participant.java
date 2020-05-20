package edu.ms.uncc.alumni.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Participants")
public class Participant{
	
	@Id
	@Column(name = "Event_id")
	private int eventId;
	
	
	@Column(name = "User_id")
	private int userId;

	public int getEventId() {
		return eventId;
	}

	public void setEventId(int eventId) {
		this.eventId = eventId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
}
