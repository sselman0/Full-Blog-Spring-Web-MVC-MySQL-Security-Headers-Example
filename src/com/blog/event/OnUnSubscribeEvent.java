package com.blog.event;

import java.util.Locale;

import org.springframework.context.ApplicationEvent;

import com.blog.model.Subscriber;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class OnUnSubscribeEvent extends ApplicationEvent  {
	/**
	 * 
	 */
	private static final long serialVersionUID = 5329920334131853041L;
	private final String appUrl;
    private final Locale locale;
    private final Subscriber subscriber;
    
    public OnUnSubscribeEvent(final Subscriber subscriber, final Locale locale, final String appUrl) {
        super(subscriber);
        this.subscriber = subscriber;
        this.locale = locale;
        this.appUrl = appUrl;
    }

    public String getAppUrl() {
        return appUrl;
    }

    public Locale getLocale() {
        return locale;
    }

    public Subscriber getSubscriber() {
        return subscriber;
}
}
