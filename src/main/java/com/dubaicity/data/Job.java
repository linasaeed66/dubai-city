package com.dubaicity.data;

public class Job {
	private String title;
	private String description;
	private int id;
	private String datetime;
	public Job(String title, String description, int id, String datetime) {
		super();
		this.title = title;
		this.description = description;
		this.id = id;
		this.datetime = datetime;
	}
	public String getTitle() {
		return title;
	}
	public String getDescription() {
		return description;
	}
	public int getId() {
		return id;
	}
	public String getDatetime() {
		return datetime;
	}
	
	
}
