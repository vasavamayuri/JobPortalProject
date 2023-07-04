package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.conn.DBConnect;
import com.dao.EmpDAO;
@WebServlet("/delete")

public class DeleteServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		EmpDAO dao=new EmpDAO(DBConnect.getConn());
		boolean f=dao.deleteEmployee(id);
		
		HttpSession session=req.getSession();
		//boolean f=dao.addEmployee(emp);
		
		
		
		if(f)
		{
			session.setAttribute("succMsg", "Employee submit Successfull");
			resp.sendRedirect("index.jsp");
			//System.out.println("Employee submit Successfull");
		}
		else {
			
			session.setAttribute("errorMsg", "Something run server");
			resp.sendRedirect("index.jsp");
			
			//System.out.println("somthing wrong on server");
			
		}
		
	}
	
	
	

}
