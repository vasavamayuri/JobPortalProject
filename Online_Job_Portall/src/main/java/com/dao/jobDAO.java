package com.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Jobs;

public class jobDAO {

	private Connection conn;
	public jobDAO (Connection conn)
	{
		super();
		this.conn=conn;
		}
	public boolean addJobs(Jobs j)
	{
		boolean f=false;
		
		
		try {
			 String sql="insert into job(title,description,category,status,location) value(?,?,?,?,?)";
			 PreparedStatement ps=conn.prepareStatement(sql);
			 ps.setString(1 , j.getTitle());
			 ps.setString(2 , j.getDescription());
			 ps.setString(3 , j.getCategory());
			 ps.setString(4 , j.getStatus());
			 ps.setString(5 , j.getLocation());
			 int i=ps.executeUpdate();
			 if(i==1)
			 {
				 f=true;
			 }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return f;
	}
	
	public List<Jobs>getAllJobs()
	
	{
		List<Jobs> list=new ArrayList<Jobs>();
		Jobs j=null;
		
		try {
			String sql="select * from job order by id desc";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7)+"");
				
				list.add(j);
			}
			
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return list;
	}
	
	
	
	
public Jobs getJobById(int id)
	
	{
		
		Jobs j=null;
		
		try {
			String sql="select * from job where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				j=new Jobs();
				j.setId(rs.getInt(1));
				j.setTitle(rs.getString(2));
				j.setDescription(rs.getString(3));
				j.setCategory(rs.getString(4));
				j.setStatus(rs.getString(5));
				j.setLocation(rs.getString(6));
				j.setPdate(rs.getTimestamp(7)+"");
				
				
			}
			
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
		return j;
}
}
