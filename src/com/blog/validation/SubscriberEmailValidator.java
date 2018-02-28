package com.blog.validation;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.blog.controller.SubscriptionController;
import com.blog.model.Subscriber;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
@Controller
public class SubscriberEmailValidator implements Validator{
	
	private String emailRegex = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
	
	private static final Logger logger = Logger.getLogger(SubscriptionController.class);

	@Override
	public boolean supports(Class<?> arg0) {
		// TODO Auto-generated method stub
		return Subscriber.class.isAssignableFrom(arg0);
	}

	@Override
	public void validate(Object obj, Errors e) {
		ValidationUtils.rejectIfEmptyOrWhitespace(e, "email", "com.blog.white.space");
		Pattern pattern = Pattern.compile(emailRegex);
		Subscriber sub = (Subscriber) obj;
		Matcher matcher = pattern.matcher(sub.getEmail());
		if(!matcher.matches()) {
			e.rejectValue("email", "com.blog.contact.email.valid");
		}
		InternetAddress internetAddress  = null;
		boolean isValid = false;
		try {
			internetAddress = new InternetAddress(sub.getEmail());
			if(internetAddress != null) {
				internetAddress.validate();
				isValid = true;
			}
		} catch (AddressException e1) {
			logger.info("Failed to connect to email: " + sub.getEmail() +"\n", e1);
		}
		if(!isValid) {
			e.rejectValue("email", "com.blog.contact.email.valid");
		}
		
	}

}
