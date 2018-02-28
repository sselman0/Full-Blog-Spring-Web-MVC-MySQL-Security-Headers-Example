package com.blog.model;

import java.util.Map;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class ContactJsonResponse {
	
	public boolean validated;
	public Map<String, String> errors;
	
	public boolean isValidated() {
		return validated;
	}
	public Map<String, String> getErrors() {
		return errors;
	}
	
	public void setValidated(boolean validated) {
		this.validated = validated;
	}
	public void setErrors(Map<String, String> errors) {
		this.errors = errors;
	}
	

}
