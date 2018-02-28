package com.blog.controller;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import javax.validation.constraints.Email;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.blog.dao.SubscriberDAO;
import com.blog.event.OnSubscriptionCompleteEvent;
import com.blog.event.OnUnSubscribeEvent;
import com.blog.model.Subscriber;
import com.blog.model.VerificationToken;
import com.blog.validation.SubscriberEmailValidator;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */

@Controller
public class SubscriptionController {
	
	private static final Logger logger = Logger.getLogger(SubscriptionController.class);

	@Autowired
	private SubscriberDAO subscriberDAO;
	
	@Autowired
	ApplicationEventPublisher eventPublisher;
	
	
	    @InitBinder
	    protected void initBinder(WebDataBinder binder) {
	           binder.setValidator(new SubscriberEmailValidator());
	    }
	
	@RequestMapping(value = "/subscribe", method = RequestMethod.POST)
	public String subscribe(@Valid @ModelAttribute("subscribeForm") Subscriber sub, BindingResult result, Model m, HttpServletRequest request) {

		if (!"".equals(sub.getEmail())) {
			
			Subscriber subscriber = subscriberDAO.findByEmail(sub.getEmail()); 
			if (subscriber != null) {
				if(subscriber.getSubscribed() ==0) {
					subscriberDAO.reSubscribeUser(sub);
				} else {
				result.rejectValue("email", "com.blog.subscribed");
				}
			}
		}
		
		if (result.hasErrors()) {
			System.out.println(sub.getEmail());
			m.addAttribute(result.getFieldErrors());
			logger.warn("FAILED SUBSCRIBE ATTEMPT WITH EMAIL: " + sub.getEmail() + "FROM IP:" + request.getRemoteAddr());
			return "welcome";
		}
		
		try {
			
			if(subscriberDAO.findByEmail(sub.getEmail()) == null) {
				
				subscriberDAO.add(sub);
			}
		String appUrl = request.getContextPath();
		 eventPublisher.publishEvent(new OnSubscriptionCompleteEvent
		          (sub, request.getLocale(), appUrl));
		
		}catch(Exception e) {
			logger.error("Failed to add or send email to new subscriber with email: " + sub.getEmail(), e);
		}
		return "redirect:/welcome";
	}
	
	@RequestMapping(value="/unsubscribe", method=RequestMethod.GET)
	public String unsubscribe(@RequestParam("token") String token, HttpServletRequest request) {
		VerificationToken verToken = subscriberDAO.getSubscriberTokenByToken(token);
		if(verToken == null) {
			return "invalid token";
		}
		
		Calendar cal = Calendar.getInstance();
		if((verToken.getExpiryDate().getTime() - cal.getTime().getTime() <= 0 )) {
			return "auth token expired";
		}
		subscriberDAO.unsubscribeUser(new Subscriber(verToken.getSubscriber()));
		subscriberDAO.deleteUsedToken(verToken);
		return "you have been unsubscribed";
		
	}
	
	@RequestMapping(value="/usubscribe", method=RequestMethod.GET)
	public String usubscribe(@Email @RequestParam("user") String user, HttpServletRequest request) {
		
		String appUrl ="";
		if(user != null && !"".equals(user)) {
			if(subscriberDAO.findByEmail(user) == null) {
				return "You are no longer subscribed";
			}
			 appUrl = request.getContextPath();
			 eventPublisher.publishEvent(new OnUnSubscribeEvent
			          (new Subscriber(user), request.getLocale(), appUrl));
		}
		return "an email as been sent to you, please confirm your unsubscription";
	}

}
