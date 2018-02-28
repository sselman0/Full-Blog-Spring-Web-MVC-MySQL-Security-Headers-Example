package com.blog.dao;

import com.blog.model.Subscriber;
import com.blog.model.VerificationToken;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public interface SubscriberDAO {
	
	public void add(Subscriber subscriber);
	public Subscriber findByEmail(String email);
	public void saveToken(VerificationToken token);
	public VerificationToken getSubscriberTokenByToken(String token);
	public void unsubscribeUser(Subscriber subscriber);
	public void reSubscribeUser(Subscriber sub);
	public void deleteUsedToken(VerificationToken token);
	public void updateToken(VerificationToken token);
}
