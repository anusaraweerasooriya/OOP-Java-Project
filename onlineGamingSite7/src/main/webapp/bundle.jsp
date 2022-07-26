<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.bundles.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
 crossorigin="anonymous">
 
  <link rel="stylesheet" href="css/bundle.css"/>

<title>Bundle Page</title>

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
          <a class="nav-link" href="#">Home</a>
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

<br><br>
<div class="container">
<div class="container">
<div class="row row-cols-1 row-cols-md-3 g-4">
<%
	List<Bundle> bundleList = BundleDBUtil.BundleList();
	Iterator it=bundleList.iterator();
	while(it.hasNext()){
		Bundle bundle =(Bundle)it.next();
%>

			  
			  <div class="col-lg-4 mb-4">
			    <div class="card">
			      <img src="./images/bundleImages/<%=bundle.getbImg()%>.jpg" alt="" class="card-img-top">
			      <div class="card-body">
			        <h5 class="card-title"><%=bundle.getbName()%></h5>
			        <p class="card-text"><%=bundle.getbDetails()%></p>
			       <a href="" class="btn btn-outline-success btn-sm">Review</a>
			        <a href="" class="btn btn-outline-danger btn-sm"><i class="far fa-heart"></i>Add to Cart</a>
			      </div>
			     </div>
    		</div>
			

<%}%>
</div>
</div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
crossorigin="anonymous"></script>
</body>
</html>