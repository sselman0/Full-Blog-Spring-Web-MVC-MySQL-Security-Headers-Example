package com.blog.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.blog.model.Subscriber;
import com.blog.model.VerificationToken;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class SubscriberDAOImpl implements SubscriberDAO {
	
	private DataSource dataSource;
	private static final int SUBSCRIBED =1;
	private static final int UNSUBSCRIBED =0;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public void add(Subscriber subscriber) {
		String sql = "INSERT INTO subscribe_list(email,subscribed) VALUE(?,?)";
		Connection conn=null;
	     if(subscriber.getEmail() == null || "".equals(subscriber.getEmail())) {
	        	return;
	      }
		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, subscriber.getEmail());
			ps.setInt(2, SUBSCRIBED);
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}

	@Override
	public Subscriber findByEmail(String email) {
		String sql = "SELECT id, email, subscribed FROM subscribe_list WHERE email=?";
		Connection conn=null;
		Subscriber sub = null;
	     if(email == null || "".equals(email)) {
	        	return null;
	       }
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,email);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				sub = new Subscriber(rs.getInt("id"), rs.getString("email"), rs.getInt("subscribed"));
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return sub;
	}

	@Override
	public void saveToken(VerificationToken token) {
		String sql = "INSERT INTO tokens(token,subscriber,expiry) VALUES(?,?,?)";
		Connection conn=null;
		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, token.getToken());
			ps.setString(2, token.getSubscriber());
			ps.setDate(3, new java.sql.Date(token.getExpiryDate().getTime()));
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}

	@Override
	public VerificationToken getSubscriberTokenByToken(String token) {
		String sql = "SELECT token,subscriber,expiry FROM tokens WHERE token=?";
		Connection conn=null;
		VerificationToken verToken = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,token);
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				verToken = new VerificationToken(rs.getString("token"),rs.getString("subscriber"),rs.getDate("expiry"));
			}
			rs.close();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		return verToken;
	}

	@Override
	public void unsubscribeUser(Subscriber subscriber) {
		String sql = "UPDATE subscribe_list set subscribed = ? where email =?";
		Connection conn=null;
	     if(subscriber.getEmail() == null || "".equals(subscriber.getEmail())) {
	        	return;
	        }
		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, UNSUBSCRIBED);
			ps.setString(2, subscriber.getEmail());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}

	@Override
	public void deleteUsedToken(VerificationToken token) {
		String sql = "delete from tokens where token =? AND subscriber=?";
		Connection conn=null;
		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, token.getToken());
			ps.setString(2, token.getSubscriber());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}

	@Override
	public void reSubscribeUser(Subscriber sub) {
		String sql = "UPDATE subscribe_list SET subscribed=? where email=?";
		Connection conn=null;
	     if(sub.getEmail() == null || "".equals(sub.getEmail())) {
	        	return;
	        }
		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, SUBSCRIBED);
			ps.setString(2, sub.getEmail());
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}

	@Override
	public void updateToken(VerificationToken token) {
		String sql = "UPDATE tokens SET token=?,expiry=? WHERE subscriber=?";
		Connection conn=null;
		
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, token.getToken());
			ps.setString(3, token.getSubscriber());
			ps.setDate(2, new java.sql.Date(token.getExpiryDate().getTime()));
			ps.executeUpdate();
			ps.close();
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		} finally {
			if (conn != null) {
				try {
					conn.close();
				} catch (SQLException e) {}
			}
		}
		
	}

}
