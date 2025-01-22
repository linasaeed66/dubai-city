package com.dubaicity.data;

public class JobApplication {
	private int id;
	private int jobId;
	private String name;
	private String email;
	private String datetime;
	public JobApplication(int id, int jobId, String name, String email, String datetime) {
		super();
		this.id = id;
		this.jobId = jobId;
		this.name = name;
		this.email = email;
		this.datetime = datetime;
	}
	public int getId() {
		return id;
	}
	public int getJobId() {
		return jobId;
	}
	public String getName() {
		return name;
	}
	public String getEmail() {
		return email;
	}
	public String getDatetime() {
		return datetime;
	}
	
	
}
