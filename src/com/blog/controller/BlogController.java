package com.blog.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.blog.dao.PostDAO;
import com.blog.dao.VideosDAO;
import com.blog.event.OnContactEvent;
import com.blog.model.Contact;
import com.blog.model.Post;
import com.blog.model.Subscriber;
import com.blog.model.Video;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
@Controller
public class BlogController {

	
	@Autowired
	private VideosDAO videosDAO;
	
	@Autowired
	private PostDAO postDAO;
	
	@Autowired
	ApplicationEventPublisher eventPublisher;
	

	@RequestMapping(value = "/welcome", method =RequestMethod.GET)
	public String welcome(Model model) {
		model.addAttribute("subscribeForm", new Subscriber());
		List<Post> posts = postDAO.getAllPosts();
		model.addAttribute("posts", posts);
		
		List<Post> recentPosts = postDAO.getRecentPosts();
		model.addAttribute("recentPosts", recentPosts);
		return "welcome";
	}

	@RequestMapping(value = "/about", method =RequestMethod.GET)
	public String about(Model model) {
		model.addAttribute("subscribeForm", new Subscriber());
		List<Post> recentPosts = postDAO.getRecentPosts();
		model.addAttribute("recentPosts", recentPosts);
		return "about";
	}
	
	@RequestMapping(value = "/videos", method =RequestMethod.GET)
	public String works(Model model) {
		model.addAttribute("subscribeForm", new Subscriber());
		List<Video> videos = videosDAO.getVideos();
		model.addAttribute("videos", videos);
		List<Post> recentPosts = postDAO.getRecentPosts();
		model.addAttribute("recentPosts", recentPosts);
		return "videos";
	}
	
	@RequestMapping(value = "/contact", method =RequestMethod.GET)
	public String contact(Model model) {
		model.addAttribute("subscribeForm", new Subscriber());
		List<Post> recentPosts = postDAO.getRecentPosts();
		model.addAttribute("recentPosts", recentPosts);
		return "contact";
	}
	
	@RequestMapping(value="/saveContact", method =RequestMethod.POST)
	public @ResponseBody  String  saveContact(@Valid @ModelAttribute Contact contact, BindingResult result, HttpServletRequest request) {
		System.out.println("****************\n" + contact.getName() +"\nphone:" + contact.getPhone() +"\nEmail:" + contact.getEmail() + "\nmessage:" + contact.getMessage() + "\nreason:" + contact.getReason() + "\n***************");
		if(contact==null ||"".equals(contact.getName()) || " ".equals(contact.getName()) || !contact.getName().contains(" ")) {
			result.rejectValue("name", "Please enter your real name!");
		}
		if(result.hasErrors()) {
				String errors = "";
	         for(FieldError fe : result.getFieldErrors()) {
	        	 errors+="Errors:\n";
	        	 errors+=fe.getCode();
	         }
	         return errors;
	      }else{
	    	  contact.setName(contact.getName().replaceAll("[^\\w\\s]", ""));
	    	  String appUrl = request.getContextPath();
	 		 eventPublisher.publishEvent(new OnContactEvent
	 		          (contact, request.getLocale(), appUrl));
	      }
	      return "OK";
	}
	
	@RequestMapping(value = "/posts/google-search-advanced-tricks", method = RequestMethod.GET)
	public String getPost(Model model) {
		model.addAttribute("subscribeForm", new Subscriber());
		List<Post> recentPosts = postDAO.getRecentPosts();
		model.addAttribute("recentPosts", recentPosts);
		return "/articles/google-search-advanced-tricks";
	}
	
	@RequestMapping(value="/posts/owasp-zap-tutorial", method = RequestMethod.GET)
	public String getPost2(Model model) {
		model.addAttribute("subscribeForm", new Subscriber());
		List<Post> recentPosts = postDAO.getRecentPosts();
		model.addAttribute("recentPosts", recentPosts);
		return "/articles/owasp-zap-tutorial";
	}
	
}
