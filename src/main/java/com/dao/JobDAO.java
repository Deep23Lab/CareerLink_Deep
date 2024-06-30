package com.dao;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.Wrapper;
import java.util.ArrayList;
import java.util.List;

import com.entity.Jobs;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSet;

public class JobDAO {
	private Connection conn;

	public JobDAO(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addJobs(Jobs j) {
		boolean f = false;
		try {
			String sql = "insert into jobs(title,description,category,status,location) values(?,?,?,?,?)";
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	public List<Jobs> getAllJobs() {
		List<Jobs> list = new ArrayList<Jobs>();
		Jobs j = null;

		try {
			String sql = "select * from jobs order by id desc";
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ResultSet rs = (ResultSet) ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7) + "");
				list.add(j);
			}
		} catch (Exception e) {

		}

		return list;
	}

	public Jobs getJobById(int id) {
		Jobs j = null;

		try {
			String sql = "select * from jobs where id=?";
			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs = (ResultSet) ps.executeQuery();
			while (rs.next()) {
				j = new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7) + "");

			}
		} catch (Exception e) {

		}

		return j;
	}

	public boolean updateJob(Jobs j) {
		boolean f = false;
		try {
			String sql = "UPDATE jobs SET title=?, description=?, category=?, status=?, location=? WHERE id=?";

			PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
			ps.setString(1, j.getTitle());
			ps.setString(2, j.getDescription());
			ps.setString(3, j.getCategory());
			ps.setString(4, j.getStatus());
			ps.setString(5, j.getLocation());
			ps.setInt(6, j.getId());

			int i = ps.executeUpdate();

			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}

	
	
	public boolean deleteJobs(int id) {
	    boolean f = false;
	    try {
	        String sql = "DELETE FROM jobs WHERE id=?";
	        PreparedStatement ps = (PreparedStatement) conn.prepareStatement(sql);
	        ps.setInt(1, id);
	        int rowsAffected = ps.executeUpdate();
	        if (rowsAffected == 1) {
	            f = true;
	        }
	        ps.close();
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	    return f;
	}

}