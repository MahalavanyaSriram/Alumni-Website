package edu.ms.uncc.alumni.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Job_Postings")
public class JobPosting {
	
	@Id
	@Column(name = "Job_id")
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int jobId;
	
	@Column(name = "Job_name")
	private String jobName;
	
	@Column(name = "Job_description")
	private String jobDescription;
	
	@Column(name = "Company")
	private String company;
	
	@Column(name = "Contact_number")
	private String contactNumber;
	
	@Column(name = "website")
	private String website;
	
	@Column(name = "Publisher")
	private int publisher;

	public int getJobId() {
		return jobId;
	}

	public void setJobId(int jobId) {
		this.jobId = jobId;
	}

	public String getJobName() {
		return jobName;
	}

	public void setJobName(String jobName) {
		this.jobName = jobName;
	}

	public String getJobDescription() {
		return jobDescription;
	}

	public void setJobDescription(String jobDescription) {
		this.jobDescription = jobDescription;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getContactNumber() {
		return contactNumber;
	}

	public void setContactNumber(String contactNumber) {
		this.contactNumber = contactNumber;
	}

	public String getWebsite() {
		return website;
	}

	public void setWebsite(String website) {
		this.website = website;
	}

	public int getPublisher() {
		return publisher;
	}

	public void setPublisher(int publisher) {
		this.publisher = publisher;
	}
	
}
