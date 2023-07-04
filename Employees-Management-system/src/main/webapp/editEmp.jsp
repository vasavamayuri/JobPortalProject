<%@page import="com.entity.Emp"%>
<%@page import="java.util.List"%>
<%@page import="com.dao.EmpDAO"%>
<%@page import="java.sql.Connection" %>
<%@page import="com.conn.DBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<%@include file="allcss.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="bg-light">
	<%@include file="navbar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Employee</p>
						
						
						
						<%
						int id=Integer.parseInt(request.getParameter("id"));
						EmpDAO dao=new EmpDAO(DBConnect.getConn());
						Emp e=dao.getEmpById(id);
						%>
						
						<form action="update" method="post"> 
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="fullname" value="<%=e.getFullname() %>">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Date Of Birth</label> 
    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="dob" value="<%=e.getDob()%>">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="address" value="<%=e.getAddress() %>">
    </div>
    
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Designation</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="designation" value="<%=e.getDesignation() %>">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email" value="<%=e.getEmail() %>">
    </div>
    
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Salary</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="salary" value="<%=e.getSalary() %>">
  </div>
  
  <input type="hidden" name="id" value="<%=e.getId() %>">
 
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>


					</div>

				</div>

			</div>


		</div>

	</div>
</body>
</html>