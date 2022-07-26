<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
 crossorigin="anonymous">
 
<link rel="stylesheet" href="css/updateUser.css"/>
 
<title>Update User</title>

<% String userId = (String)(session.getAttribute("user")); %>

<!-- Navbar Start -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark bg-gradient">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Game Site</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link "  href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Games</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="bundle.jsp">Bundles</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="#" tabindex="-1" href="#">Reviews</a>
        </li>
        <%if (userId == null){ %>
			<li>
				<a class="nav-link" href="login.jsp">Login</a>
			</li>
		<%}else { %>
			<li>
				<a class="nav-link" href="./LogoutServlet">Logout</a>
			</li>
		<%} %>
      </ul>
      <form class="d-flex">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>
<!-- Navbar end -->

</head>
<body>

	<%
		String id = request.getParameter("id");
		String firstName = request.getParameter("fName");
		String lastName = request.getParameter("lName");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String gender = request.getParameter("gender");
		String dateOfBirth = request.getParameter("dob");
		String userName = request.getParameter("userName");
		String password = request.getParameter("pass");
		
	%>
	
	
	
	<div class="container-fluid"><br>
	    <div class="row flex-nowrap">
	        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark rounded"><br>
	            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
	                <a href="#" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
	                    <span class="fs-5 d-none d-sm-inline">Admin Dashboard</span>
	                </a>
	                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
	                    <li>
                        <a href="adminaccount.jsp" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Dashboard</span> </a>
                    	</li>
	                    <li>
	                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
	                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Bundles</span></a>
	                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
	                            <li class="w-100">
	                                <a href="createbundle.jsp" class="nav-link px-0 " > <span class="d-none d-sm-inline">Create a new Bundle</span></a>
	                            </li>
	                            <li>
	                                <a href="manageBundles.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">Manage Bundles</span></a>
	                            </li>
	                        </ul>
	                    </li>
	                    <br>
	                    <%if (userId == null){ %>
	                    	<li>
	                        <a href="login.jsp" class="btn btn-success ">
	                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Login</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
	                    	</li>
                    	<%}else { %>
	                    	<li>
	                        <a href="./LogoutServlet" class="btn btn-success">
	                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Logout</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </a>
	                    	</li>
	                    <%} %>
	                </ul>
	                <hr>
	      
	            </div>
	        </div>
	        <div class="col py-3">
	        <div class="container"></div>
				<div class="container w-50 " id="ctn1">
				<br>
				
					<h4 class="mb-3">Update Details</h4>
					
					<form action="update" method="post">
					  	
					  	<div class="row g-3">
						  	<div class="col-12">
						 	<label class="form-label">User ID</label>
						 	<input type="text" name="usid" value="<%= id%>" class="form-control" readonly>
						 	</div>
						 	
					 	
						 	<div class="col-sm-6">
						 		<label class="form-label">First Name </label>
							 	<input type="text" name="fName" value="<%= firstName%>" class="form-control" required>
							</div>	
							<div class="col-sm-6">
								<label class="form-label">Last Name </label>
							 	<input type="text" name="lName" value="<%= lastName%>" class="form-control" required>
						 	</div>
					 	
						 	<div class="col-12">
							 	<label class="form-label">Email </label>
							 	<input type="text" name="email" value="<%= email%>" class="form-control" required>
						 	</div>
						 	
						 	<div class="col-12">
							 	<label class="form-label">Mobile</label>
							 	<input type="text" name="mobile" value="<%= mobile%>" class="form-control" required>
						 	</div>
						 	
						 	<div class="col-12">
							 	<label class="form-label">Gender </label>
							 	<input type="text" name="gender" value="<%= gender%>" class="form-control" required>
						 	</div>
						 	
						 	<div class="col-12">
							 	<label class="form-label">Date of birth </label>
							 	<input type="text" name="dob" value="<%= dateOfBirth%>" class="form-control" required>
						 	</div>
						 	
						 	<div class="col-12">
							 	<label class="form-label">User Name </label>
							 	<input type="text" name="uname" value="<%= userName%>" class="form-control" required>
						 	</div>
						 	
						 	<div class="col-12">
							 	<label class="form-label">Password </label>
							 	<input type="text" name="pass" value="<%= password%>" class="form-control" required>
						 	</div>
						 	
						 	<div class="col-12">
						 		<input type="submit" value="Update my Data" class="btn btn-primary w-50" id="btn1" required>
						 	</div>
					 	</div>
					 </form>
					 <br>
				 </div>
				 <br>
	        	
	        
	   </div>
	  </div>
	</div>
	 
	
	
	
	
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
crossorigin="anonymous"></script>
</body>
</html>