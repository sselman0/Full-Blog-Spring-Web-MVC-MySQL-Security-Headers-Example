package com.blog.security;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.filter.OncePerRequestFilter;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class XFrameOptionsHeaderFilter extends OncePerRequestFilter {

    @Override
    protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        response.setHeader("X-Frame-Options", "SAMEORIGIN");
        response.setHeader("X-XSS-Protection", "1; mode=block");
        response.setHeader("X-Content-Type-Options", "nosniff");
        response.setHeader("Strict-Transport-Security", "max-age=31536000 ; includeSubDomains");
        response.setHeader("Content-Security-Policy", "default-src https:;\r\n" + 
        		"connect-src https: https://connect.facebook.net/* https://www.instagram.com/*;" + 
        		"font-src https: data:;" + 
        		"frame-src https: https://*facebook.com/* https://*youtube.com/*;" + 
        		"frame-ancestors https:;" + 
        		"img-src https: http://placehold.it/100x100 data: https://www.facebook.com/* https://scontent.fymy1-2.fna.fbcdn.net/*  https://www.instagram.com/*;" + 
        		"media-src https:;" + 
        		"object-src https:;" + 
        		"script-src 'unsafe-inline' 'unsafe-eval' https: https://www.youtube.com/* https://*facebook.com/* https://www.google.com/* https://connect.facebook.net/*" + 
        		"style-src 'unsafe-inline' https: https://fonts.googleapis.com/* fonts.gstatic.com/*;");
        filterChain.doFilter(request, response);
    }


}
