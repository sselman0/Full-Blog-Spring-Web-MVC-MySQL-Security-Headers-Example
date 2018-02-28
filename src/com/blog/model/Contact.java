package com.blog.model;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import javax.validation.constraints.Size;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class Contact {
	
	@NotNull
	@NotEmpty(message="${com.blog.contact.name.empty}")
	@Size(min=3,max=50, message="${com.blog.contact.name.real}")
	private String name;
	
	@NotNull
	@NotEmpty(message="${com.blog.contact.email.empty}")
	@Size(min=3,max=50)
	@Email(message="${com.blog.contact.email.valid}")
	private String email;
	
	@NotNull
	@Digits(fraction = 0, integer = 20, message="${com.blog.contact.number.valid}")
	@Positive
	private int phone;
	
	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	@NotNull
	@NotEmpty(message="${com.blog.contact.message.empty}")
	private String message; 
	
	@NotNull
	@NotEmpty
	private String reason;
	
	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}


	
	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
