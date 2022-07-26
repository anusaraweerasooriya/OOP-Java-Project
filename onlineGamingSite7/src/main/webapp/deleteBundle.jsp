<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
 crossorigin="anonymous">
 
  <link rel="stylesheet" href="css/deleteBundle.css"/>
 
<title>Delete Bundle</title>

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


	<jsp:declaration>
		String bId = "";	
	</jsp:declaration>
	
	<jsp:scriptlet>
		bId = request.getParameter("bId");	
	</jsp:scriptlet>
	

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
	                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Manage Bundles</span></a>
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
				<div class="text-center">
			    	<h1><a href="manageBundles.jsp"><button class="btn btn-primary w-20">Manage Bundles</button></a></h1>
			  	</div>
			  
			  	<div class="container w-50">
			  		<div class="col d-flex justify-content-center ">
							<div class="card-body justify-content-center " id="ctn1"><br>
								<h4 class="card-title text-center text-white mb-5 fs-8">Delete this Bundle</h4>
								<form action="manage" method="post">
									  <div class="form">
									  	<label class="form-label text-white">Bundle Id</label> <input type="text" name="bId" class="form-control" value="<jsp:expression>bId</jsp:expression>" readonly><br> 
									   	<div class="row">
									   		<div class="col">
										   		<input type="submit" value="Delete"  class="btn btn-primary w-50" name="Action">
										   	</div>
										   	<div class="col">
										   		<a href="manageBundles.jsp"><input value="Cancel" class="btn btn-primary w-50"></a>
										   	</div>
									   	</div>
									  </div>
								</form>
								<br>
							</div>
					</div>
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