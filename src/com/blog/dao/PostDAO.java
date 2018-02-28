package com.blog.dao;

import java.util.List;

import com.blog.model.Post;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public interface PostDAO {
	
	public List<Post> getRecentPosts();
	
	public List<Post> getAllPosts();

}
