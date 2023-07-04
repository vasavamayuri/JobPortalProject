package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.Emp;

public class EmpDAO {
	
	
	private Connection conn;

	public EmpDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	
	public boolean addEmployee(Emp emp)
	{
		
		boolean f=false;
		try {
			
		String sql="insert into employee (fullname,dob,address,designation,email,salary) values(?,?,?,?,?,?)";	
		
		
		PreparedStatement ps=conn.prepareStatement(sql);
		
		ps.setString(1, emp.getFullname());
		ps.setString(2, emp.getDob());
		ps.setString(3, emp.getAddress());
		ps.setString(4,emp.getDesignation());
		ps.setString(5, emp.getEmail());
		ps.setString(6, emp.getSalary());
		
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
		
		
			
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
		
		return f;
	}
	
	public List<Emp> getAllEmployee()
	{
	List<Emp> list=new ArrayList<Emp>();
	Emp e=null;
	try {
		
		String sql="select * from employee";
		PreparedStatement ps=conn.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		
		while(rs.next())
		{
			e=new Emp();
			e.setId(rs.getInt(1));
			e.setFullname(rs.getString(2));
			e.setDob(rs.getString(3));
			e.setAddress(rs.getString(4));
			e.setDesignation(rs.getString(5));
			e.setEmail(rs.getString(6));
			e.setSalary(rs.getString(7));
			list.add(e);
		}
		
		
		
		
	}catch(Exception e1){
		
		
		e1.printStackTrace();
	}
	
	
	
	
	
	return list;
		
	}
	
	
	public Emp getEmpById(int id) {
		
		Emp e=null;
		try {
			
			String sql="select * from employee where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				e=new Emp();
				e.setId(rs.getInt(1));
				e.setFullname(rs.getString(2));
				e.setDob(rs.getString(3));
				e.setAddress(rs.getString(4));
				e.setDesignation(rs.getString(5));
				e.setEmail(rs.getString(6));
				e.setSalary(rs.getString(7));
				
				
				return e;
			}
			
			
			
			
		}catch(Exception e1){
			
			
			e1.printStackTrace();
		}
		return e;
		
		
	}
	public boolean updateEmployee(Emp emp)
	{
		
		boolean f=false;
		try {
			
		String sql="update  employee set  fullname=?,dob=?,address=?,designation=?,email=?,salary=? where id=?";	
		
		
		PreparedStatement ps=conn.prepareStatement(sql);
		
		ps.setString(1, emp.getFullname());
		ps.setString(2, emp.getDob());
		ps.setString(3, emp.getAddress());
		ps.setString(4,emp.getDesignation());
		ps.setString(5, emp.getEmail());
		ps.setString(6, emp.getSalary());
		ps.setInt(7, emp.getId());
		
		int i=ps.executeUpdate();
		if(i==1)
		{
			f=true;
		}
		
		
			
		}catch(Exception e)
		{
			
			e.printStackTrace();
		}
		
		return f;
	}
	
	
	public boolean deleteEmployee(int id)
	
	{
		
		boolean f=false;
		try {   
			
			
			String sql="delete from employee where id=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, id);
			int i=ps.executeUpdate();
			if(i==1)
			{
				f=true;
			}
			
			
		}catch(Exception e){
			
			e.printStackTrace();
		}
		
		
		return f;
	}

}
