package com.blog.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import javax.sql.DataSource;

import com.blog.model.Contact;
/**
 * 
 * @author sselman
 * Copyright - 2018 Selman Selman
 * MIT License
 */
public class ContactDAOImpl implements ContactDAO {
	
	private DataSource dataSource;
	
	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
	
	@Override
	public void saveContact(Contact contact) {
		String sql = "INSERT INTO contact_list(name, email, phone, message, date) VALUEs(?,?,?,?,?)";
		Connection conn=null;
		if(contact==null ||"".equals(contact.getName()) || " ".equals(contact.getName()) || !contact.getName().contains(" ")) {
			return;
		}
		try {
			conn = dataSource.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, contact.getName());
			ps.setString(2, contact.getEmail());
			ps.setInt(3, contact.getPhone());
			ps.setString(4, contact.getMessage());
			Date utilDate = new Date();
			java.sql.Date sqlDate =new java.sql.Date(utilDate.getTime());
			ps.setDate(5,  sqlDate);
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
