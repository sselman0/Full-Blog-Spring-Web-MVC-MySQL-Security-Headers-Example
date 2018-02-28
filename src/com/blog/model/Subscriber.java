package com.blog.model;



import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class Subscriber {
	


	public Subscriber(int id, @NotNull @Email @NotEmpty @Size(max = 50) String email, int subscribed) {
		super();
		this.id = id;
		this.subscribed = subscribed;
		this.email = email;
	}

	private int id;
	
	private int subscribed; 

	public int getSubscribed() {
		return subscribed;
	}


	public void setSubscribed(int subscribed) {
		this.subscribed = subscribed;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}

	@NotNull
	@Email
	@NotEmpty
	@Size(max=50)
	private String email;

	public Subscriber(@NotNull @Email @Size(min = 10, max = 255) String email) {
		super();
		this.email = email;
	}


	public Subscriber() {
		super();
		// TODO Auto-generated constructor stub
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
}
