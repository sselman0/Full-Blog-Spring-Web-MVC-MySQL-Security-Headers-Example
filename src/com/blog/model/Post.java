package com.blog.model;

import java.util.Date;

import javax.validation.constraints.NotNull;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class Post {
	
	@NotNull
	private String title;
	
	@NotNull
	private String source;
	
	@NotNull
	private String summary_one;
	
	@NotNull
	private String img_source;
	
	@NotNull
	private String summary_two;
	
	@NotNull
	private Date published_at;

	public String getTitle() {
		return title;
	}

	public String getSource() {
		return source;
	}

	public String getSummary_one() {
		return summary_one;
	}

	public String getSummary_two() {
		return summary_two;
	}

	public Date getPublished_at() {
		return published_at;
	}

	public String getImg_source() {
		return img_source;
	}

	public void setImg_source(String img_source) {
		this.img_source = img_source;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public void setSummary_one(String summary_one) {
		this.summary_one = summary_one;
	}

	public void setSummary_two(String summary_two) {
		this.summary_two = summary_two;
	}

	public void setPublished_at(Date published_at) {
		this.published_at = published_at;
	}

	public Post(@NotNull String title, @NotNull String source, @NotNull String img_source, @NotNull String summary_one, @NotNull String summary_two,
			@NotNull Date published_at) {
		super();
		this.title = title;
		this.source = source;
		this.img_source = img_source;
		this.summary_one = summary_one;
		this.summary_two = summary_two;
		this.published_at = published_at;
	}
	
	
}
