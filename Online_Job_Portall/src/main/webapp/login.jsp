<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@include file="All_component/all_css.jsp" %>
</head>
<body style="background-color:#f0f1f2;">
<%@ include file="All_component/navbar.jsp" %>
<div class="container-fluid ">
<div class="row p-5">
<div class="col-md-4 offset-md-4">
<div class="card">
<div class="card-body">
<div class="text-center">

<i class=" fa fa-user-plus fa-2x" aria-hidden="true">
</i>
<h5> Login Page</h5>
</div>
<form action="login" method="post">
<div class="form-group">
<label>Enter Email</label> 
<input type="email" class="form-control"  required="required"  name="em">

</div>

<div class="form-group">
<label>Password</label> 
<input type="password" class="form-control"  required="required"  name="ps">

</div>

<button type="submit"  class=" btn btn-primary badge-pill btn-block "> Login</button>

</form>

</div>
</div>
</div>
</div>
</div>

</body>
</html>