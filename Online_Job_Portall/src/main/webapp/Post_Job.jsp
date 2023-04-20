<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Job</title>
<%@include file="All_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="All_component/navbar.jsp" %>

<div class="container p-2">
<div class="col-md-10 offset-md-1">
<div class="card">
<div class="card-body">


<div class="text-center text-success">
<i class="fas fa-user-friends fa-3x"></i>

<c:if test ="${not empty msg  }">
<div class="alert alert-sucess" role="alert">${msg}</div>
<c:remove var="msg " />

</c:if>



<h5>Add Jobs</h5>
</div>


<form action="Post_Job" method="post">
<div class="form=group">
<label>Enter Title</label>
<input type="text" class="form-control" required name="title">
</div>


<div class="form-row">
<div class="form-group col-md-4">
<label>Location</label>
<select name="location"  class="custom-select">
<option selected >Choose</option>
<option value="odisha">Odisha</option>
<option value="gujarat">Gujarat</option>
<option value="delhi">Delhi</option>
<option value="banglore">Banglore</option>
<option value="chennai">Chennai</option>
<option value="hydrabad">Hydrabad</option>
</select>
</div>



<div class="form-group col-md-4">
<label>Category</label>
<select class="custom-select" name="category">
<option selected >Choose</option>
<option value="it">IT</option>
<option value="developer">Developer</option>
<option value="Engineer">Engineer</option>
<option value="teacher">Teacher</option>
</select>
</div>



<div class="form-group col-md-4">
<label>Status</label>
<select name="status" class="custom-select">
<option class="Active"  value="active">Active</option>
<option class="Inactive" value="inactive">Inactive</option></select>
</div>
</div>
<div class="form-group">
<label> Enter Description</label>
<textarea class="form-control" required rows="6" cols="" name="description"></textarea>
</div>

<button type="submit"   class="btn btn-success">Publish Job</button>

</form>

</div>
</div>
</div>
</div>

</body>
</html>