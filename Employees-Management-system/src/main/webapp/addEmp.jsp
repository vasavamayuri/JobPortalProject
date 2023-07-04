<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="allcss.jsp"%>
<meta charset="UTF-8">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<title>Insert title here</title>
</head>
<body class="bg-light">
	<%@include file="navbar.jsp"%>

	<div class="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Employee</p>
						
						<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg}</p>
						<c:remove var="succMsg "></c:remove>
						
						</c:if>
						
						<c:if test="${not empty errorMsg }">
						<p class="text-center text-success">${errorMsg}</p>
						<c:remove var="succMsg "></c:remove>
						
						</c:if>
						
						<form action="register" method="post"> 
  <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Full Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="fullname">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Date Of Birth</label> 
    <input type="date" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="dob">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Address</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="address">
    </div>
    
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Designation</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="designation">
    </div>
    
    
    <div class="mb-3">
    <label for="exampleInputEmail1" class="form-label">Email </label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" name="email">
    </div>
    
  <div class="mb-3">
    <label for="exampleInputPassword1" class="form-label">Salary</label>
    <input type="text" class="form-control" id="exampleInputPassword1" name="salary">
  </div>
 
  <button type="submit" class="btn btn-primary col-md-12">ADD </button>
</form>


					</div>

				</div>

			</div>


		</div>

	</div>
</body>
</html>