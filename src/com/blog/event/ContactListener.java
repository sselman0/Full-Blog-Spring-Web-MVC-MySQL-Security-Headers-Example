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

import com.blog.dao.ContactDAO;
import com.blog.model.Contact;

import freemarker.template.Configuration;
import freemarker.template.Template;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
@Component
public class ContactListener implements ApplicationListener<OnContactEvent> {

	@Autowired
	ContactDAO contactDAO;

	@Autowired
	private JavaMailSender mailSender;

	@Autowired
	Configuration freemarkerConfiguration;

	@Override
	public void onApplicationEvent(OnContactEvent event) {
		this.automaticReply(event);
		this.sendMessage(event);
	}

	public String geFreeMarkerTemplateContent(Map<String, Object> model) {
		String html = "";
		try {
			Template t = freemarkerConfiguration.getTemplate("contact.ftl");
			html = FreeMarkerTemplateUtils.processTemplateIntoString(t, model);
		} catch (Exception e) {
			System.out.println("FAILED to load template");
		}
		return html;
	}

	private void automaticReply(OnContactEvent event) {
		Contact contact = event.getContact();
		Map<String, Object> model = new HashMap<String, Object>();
		if (contact == null || "".equals(contact.getEmail())) {
			return;
		}
		String recipientAddress = contact.getEmail();
		String subject = "Thanks for your contact!";
		model.put("message", "Thanks for contacting me :)");
		model.put("content",
				"You got this email because you use the contact form on sselman.com. I have received your message and will get back to you as soon as I can :). If this was not you, please let me know.");
		String body = geFreeMarkerTemplateContent(model);
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper;
		try {
			helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
			helper.setTo(recipientAddress);
			helper.setSubject(subject);
			helper.setText(body, true);
		} catch (MessagingException e) {
			e.printStackTrace();
		}

		mailSender.send(message);
	}

	private void sendMessage(OnContactEvent event) {
		Contact contact = event.getContact();
		Map<String, Object> model = new HashMap<String, Object>();
		if (contact == null || "".equals(contact.getEmail())) {
			return;
		}
		String recipientAddress = "<your_email>"; // change
		String subject = "New Blog Message: " + contact.getReason();
		model.put("message", contact.getName() + "sent you a message");
		model.put("content", contact.getMessage());
		String body = geFreeMarkerTemplateContent(model);
		MimeMessage message = mailSender.createMimeMessage();
		MimeMessageHelper helper;
		try {
			helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED_RELATED,
					StandardCharsets.UTF_8.name());
			helper.setTo(recipientAddress);
			helper.setSubject(subject);
			helper.setText(body, true);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
		contactDAO.saveContact(contact);
		mailSender.send(message);
	}

}
