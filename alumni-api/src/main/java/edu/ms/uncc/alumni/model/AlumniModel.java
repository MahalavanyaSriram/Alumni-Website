package edu.ms.uncc.alumni.model;

public class AlumniModel implements Cloneable {

	private int alumniId;
	
	private String alumniName;
	
	private String alumniEmail;
	
	private String alumniWorkPlace;
	
	private String address;
	
	private String contactPhoneNumber;
	
	private String priorWorkPlace;
	
	private String industry;
	
	private String experience;
	
	private int graduationYear;
	
	private boolean isFollowedByUser;

	public AlumniModel(Alumni alumnus) {
		this.alumniId = alumnus.getAlumniId();
		this.alumniName = alumnus.getAlumniName();
		this.alumniEmail = alumnus.getAlumniEmail();
		this.alumniWorkPlace = alumnus.getAlumniWorkPlace();
		this.address = alumnus.getAddress();
		this.contactPhoneNumber = alumnus.getContactPhoneNumber();
		this.priorWorkPlace = alumnus.getPriorWorkPlace();
		this.industry = alumnus.getIndustry();
		this.experience = alumnus.getExperience();
		this.graduationYear = alumnus.getGraduationYear();
		
	}

	public int getAlumniId() {
		return alumniId;
	}

	public void setAlumniId(int alumniId) {
		this.alumniId = alumniId;
	}

	public String getAlumniName() {
		return alumniName;
	}

	public void setAlumniName(String alumniName) {
		this.alumniName = alumniName;
	}

	public String getAlumniEmail() {
		return alumniEmail;
	}

	public void setAlumniEmail(String alumniEmail) {
		this.alumniEmail = alumniEmail;
	}

	public String getAlumniWorkPlace() {
		return alumniWorkPlace;
	}

	public void setAlumniWorkPlace(String alumniWorkPlace) {
		this.alumniWorkPlace = alumniWorkPlace;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getContactPhoneNumber() {
		return contactPhoneNumber;
	}

	public void setContactPhoneNumber(String contactPhoneNumber) {
		this.contactPhoneNumber = contactPhoneNumber;
	}

	public String getPriorWorkPlace() {
		return priorWorkPlace;
	}

	public void setPriorWorkPlace(String priorWorkPlace) {
		this.priorWorkPlace = priorWorkPlace;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public int getGraduationYear() {
		return graduationYear;
	}

	public void setGraduationYear(int graduationYear) {
		this.graduationYear = graduationYear;
	}

	public boolean isFollowedByUser() {
		return isFollowedByUser;
	}

	public void setFollowedByUser(boolean isFollowedByUser) {
		this.isFollowedByUser = isFollowedByUser;
	}
	
	
}
