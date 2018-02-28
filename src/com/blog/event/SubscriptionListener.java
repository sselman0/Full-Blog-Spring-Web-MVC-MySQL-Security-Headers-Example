package com.blog.event;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;

import com.blog.dao.SubscriberDAO;
import com.blog.model.Subscriber;

import freemarker.template.Configuration;
import freemarker.template.Template;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
@Component
public class SubscriptionListener implements
ApplicationListener<OnSubscriptionCompleteEvent> {
	
		@Autowired
		SubscriberDAO subDAO;
	
	    @Autowired
	    private JavaMailSender mailSender;
	    
		
	    @Autowired
	    Configuration freemarkerConfiguration; 
		
	    @Override
	    public void onApplicationEvent(OnSubscriptionCompleteEvent event) {
	        this.confirmSubscription(event);
	    }
	    
	    public String geFreeMarkerTemplateContent(Map<String, Object> model){
	        String html = "";
	        try {
	        	Template t = freemarkerConfiguration.getTemplate("welcome-template.ftl");
	        	html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
	        } catch(Exception e) {
	        	System.out.println("FAILED to load template");
	        }
	         return html;
	    }
	    
	    private void confirmSubscription(OnSubscriptionCompleteEvent event) {
	        Subscriber subscriber = event.getSubscriber();	         
	        Map<String, Object> model = new HashMap<String,Object>();
	      
	        String recipientAddress = subscriber.getEmail();
	        String subject = "Subscribed!";
	        String confirmationUrl 
	          = event.getAppUrl() + "/usubscribe?user=" + subscriber.getEmail();
	        model.put("message", "Thanks for subscribing :)");
	        model.put("content", "You got this email because you subscribed to sselman.ca. If this was not you, please click the link below to unsubscribe!");
	        model.put("action", "UNSUBSCRIBE");
	        model.put("unsubscribe_link", "http://localhost:8080" + confirmationUrl);
	        String body =  geFreeMarkerTemplateContent(model);
	        MimeMessage message = mailSender.createMimeMessage();// SimpleMailMessage email = new SimpleMailMessage();
	        MimeMessageHelper helper;
			try {
				helper = new MimeMessageHelper(message,
				        MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
				        StandardCharsets.UTF_8.name());
				 helper.setTo(recipientAddress);
			        helper.setSubject(subject);
			        helper.setText(body, true);
			} catch (MessagingException e) {
				e.printStackTrace();
			}
	       
	        mailSender.send(message);
	    }
}
