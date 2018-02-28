package com.blog.model;

import java.util.Calendar;
import java.util.Date;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class VerificationToken {
	
	private static final int EXPIRATION = 60 * 24;
	
	private String token;
	
	private String subscriber;
	
	private Date expiryDate;
	
	public VerificationToken() {
        super();
    }

    public VerificationToken(final String token) {
        super();

        this.token = token;
        this.expiryDate = calculateExpiryDate(EXPIRATION);
    }

    public VerificationToken(final String token, final String subscriber) {
        super();

        this.token = token;
        this.subscriber = subscriber;
        this.expiryDate = calculateExpiryDate(EXPIRATION);
}
    
    public VerificationToken(final String token, final String subscriber, Date expiryDate) {
        super();

        this.token = token;
        this.subscriber = subscriber;
        this.expiryDate = expiryDate;
}

	public static int getExpiration() {
		return EXPIRATION;
	}

	public String getToken() {
		return token;
	}
	 private Date calculateExpiryDate(final int expiryTimeInMinutes) {
	        final Calendar cal = Calendar.getInstance();
	        cal.setTimeInMillis(new Date().getTime());
	        cal.add(Calendar.MINUTE, expiryTimeInMinutes);
	        return new Date(cal.getTime().getTime());
	    }

	    public void updateToken(final String token) {
	        this.token = token;
	        this.expiryDate = calculateExpiryDate(EXPIRATION);
	    }

	    //

	    @Override
	    public int hashCode() {
	        final int prime = 31;
	        int result = 1;
	        result = prime * result + ((expiryDate == null) ? 0 : expiryDate.hashCode());
	        result = prime * result + ((token == null) ? 0 : token.hashCode());
	        result = prime * result + ((subscriber == null) ? 0 : subscriber.hashCode());
	        return result;
	    }

	    @Override
	    public boolean equals(final Object obj) {
	        if (this == obj) {
	            return true;
	        }
	        if (obj == null) {
	            return false;
	        }
	        if (getClass() != obj.getClass()) {
	            return false;
	        }
	        final VerificationToken other = (VerificationToken) obj;
	        if (expiryDate == null) {
	            if (other.expiryDate != null) {
	                return false;
	            }
	        } else if (!expiryDate.equals(other.expiryDate)) {
	            return false;
	        }
	        if (token == null) {
	            if (other.token != null) {
	                return false;
	            }
	        } else if (!token.equals(other.token)) {
	            return false;
	        }
	        if (subscriber == null) {
	            if (other.subscriber != null) {
	                return false;
	            }
	        } else if (!subscriber.equals(other.subscriber)) {
	            return false;
	        }
	        return true;
	    }

	    @Override
	    public String toString() {
	        final StringBuilder builder = new StringBuilder();
	        builder.append("Token [String=").append(token).append("]").append("[Expires").append(expiryDate).append("]");
	        return builder.toString();
	}

	public String getSubscriber() {
		return subscriber;
	}

	public Date getExpiryDate() {
		return expiryDate;
	}

	public void setToken(String token) {
		this.token = token;
	}

	public void setSubscriber(String subscriber) {
		this.subscriber = subscriber;
	}

	public void setExpiryDate(Date expiryDate) {
		this.expiryDate = expiryDate;
	}

}
