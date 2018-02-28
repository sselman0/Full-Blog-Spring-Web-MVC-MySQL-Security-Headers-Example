package com.blog.model;

import javax.validation.constraints.NotNull;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class Video {
	
	
	@NotNull
	private String title;
	
	@NotNull
	private String source;
	
	@NotNull
	private String description;


	public String getTitle() {
		return title;
	}

	public String getSource() {
		return source;
	}

	public String getDescription() {
		return description;
	}


	public void setTitle(String title) {
		this.title = title;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Video(String title, String source, String description) {
		super();
		this.title = title;
		this.source = source;
		this.description = description;
	}
	
	

}
