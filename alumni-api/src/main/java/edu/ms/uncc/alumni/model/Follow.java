package edu.ms.uncc.alumni.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Follow")
public class Follow {
	
	@Id
	@Column(name = "Follower_id")
	private int followerId;
	
	@Column(name = "Following_id")
	private int followingId;

	public int getFollowerId() {
		return followerId;
	}

	public void setFollowerId(int followerId) {
		this.followerId = followerId;
	}

	public int getFollowingId() {
		return followingId;
	}

	public void setFollowingId(int followingId) {
		this.followingId = followingId;
	}

}
