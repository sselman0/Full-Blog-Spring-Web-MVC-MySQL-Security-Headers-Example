package com.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.blog.model.Video;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class VideosDAOImpl implements VideosDAO {

	
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public List<Video> getVideos() {
		String sql = "SELECT title,source,description FROM videos;";
		Connection conn=null;
		List<Video> videos = new ArrayList<Video>();
		Video video = null;
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				video = new Video(rs.getString("title"), rs.getString("source"), rs.getString("description"));
				videos.add(video);
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
		
		return videos;
	}

}
