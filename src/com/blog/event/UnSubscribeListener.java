package com.blog.event;

import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

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
import com.blog.model.VerificationToken;

import freemarker.template.Configuration;
import freemarker.template.Template;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
@Component
public class UnSubscribeListener implements
ApplicationListener<OnUnSubscribeEvent> {
	
		@Autowired
		SubscriberDAO subDAO;
	  
	    @Autowired
	    private JavaMailSender mailSender;
	    
		
	    @Autowired
	    Configuration freemarkerConfiguration; 
		
	    @Override
	    public void onApplicationEvent(OnUnSubscribeEvent event) {
	        this.confirmUSubscription(event);
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
	    
	    private void confirmUSubscription(OnUnSubscribeEvent event) {
	        Subscriber subscriber = event.getSubscriber();
	        if(subscriber.getEmail() == null || "".equals(subscriber.getEmail())) {
	        	return;
	        }
	        String token = UUID.randomUUID().toString();
	        final VerificationToken myToken = new VerificationToken(token, subscriber.getEmail());
	        if(subDAO.getSubscriberTokenByToken(subscriber.getEmail()) != null) {
	        	subDAO.updateToken(myToken);
	        } else {
	        	subDAO.saveToken(myToken);
	        }
	         
	        Map<String, Object> model = new HashMap<String,Object>();
	      
	        String recipientAddress = subscriber.getEmail();
	        String subject = "Confirm Unsubscription";
	        String confirmationUrl 
	          = event.getAppUrl() + "/unsubscribe?token=" + token;
	        model.put("message", "Please confirm your unsubscription.");
	        model.put("content", "You have requested to unsubscribe, if this was not an accident please click the confirm link below");
	        model.put("action", "CONFIRM");
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
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	       
	        mailSender.send(message);
	    }
}

