package com.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.blog.model.Post;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class PostDAOImpl implements PostDAO {
	
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	@Override
	public List<Post> getRecentPosts() {
		String sql = "SELECT title,source,summary_one,summary_two,published_at FROM posts ORDER BY published_at desc limit 4;";
		Connection conn=null;
		List<Post> recentPosts = new ArrayList<Post>();
		Post post = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				post = new Post(rs.getString("title"), rs.getString("source"),"", rs.getString("summary_one"), rs.getString("summary_two"), rs.getDate("published_at"));
				recentPosts.add(post);
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
		
		return recentPosts;
	}

	@Override
	public List<Post> getAllPosts() {
		String sql = "SELECT title,source,img_source,summary_one,summary_two,published_at FROM posts ORDER BY published_at desc;";
		Connection conn=null;
		List<Post> posts = new ArrayList<Post>();
		Post post = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				post = new Post(rs.getString("title"), rs.getString("source"),rs.getString("img_source"), rs.getString("summary_one"), rs.getString("summary_two"), rs.getDate("published_at"));
				posts.add(post);
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
		
		return posts;
	}

}
