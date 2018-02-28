package com.blog.event;

import java.util.Locale;

import org.springframework.context.ApplicationEvent;

import com.blog.model.Contact;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class OnContactEvent extends ApplicationEvent  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 2633158449409187007L;
	private final String appUrl;
    private final Locale locale;
    private final Contact contact;
    
    public OnContactEvent(final Contact contact, final Locale locale, final String appUrl) {
        super(contact);
        this.contact = contact;
        this.locale = locale;
        this.appUrl = appUrl;
    }

    public String getAppUrl() {
        return appUrl;
    }

    public Locale getLocale() {
        return locale;
    }

    public Contact getContact() {
        return contact;
}

}
