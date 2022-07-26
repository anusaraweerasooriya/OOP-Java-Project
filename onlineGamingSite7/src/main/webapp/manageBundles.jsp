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
 
<link rel="stylesheet" href="css/manageBundle.css"/>
 
<title>Insert title here</title>

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
				<div class="container bg-secondary text-white">
					<div class="container">
						<h2 class="card-title text-center mb-5 fs-8" align="center">Manage Bundles</h2>
						<hr>
					</div>
					<div>
					<table class="table table-hover border">
					  <thead>
					    <tr class="table-warning">
					      <th>Bundle ID</th>
					      <th>Creator ID</th>
					      <th>Bundle Name</th>
					      <th>Bundle Details</th>
					      <th>Bundle Price</th>
					      <th>GameID 1</th>
					      <th>GameID 2</th>
					      <th>GameID 3</th>
					      <th>GameID 4</th>
					      <th>Image Name</th>
					      <th>Actions</th>
					    </tr>
					  </thead>
					  
					  <tbody class="tbody">
					  <%
					  		  List<Bundle> bundleList = BundleDBUtil.BundleList();
					          Iterator it=bundleList.iterator();
					          while(it.hasNext()){
					          	Bundle bundle =(Bundle)it.next();
					  %>
							<tr>
							
								<td><%=bundle.getbId()%></td>
							    <td><%=bundle.getCreatorId()%></td>
							    <td><%=bundle.getbName()%></td>
							    <td class="ellipsis"><span><%=bundle.getbDetails()%></span></td>
							    <td><%=bundle.getPrice()%></td>
							    <td><%=bundle.getGame1()%></td>
							    <td><%=bundle.getGame2()%></td>
							    <td><%=bundle.getGame3()%></td>
							    <td><%=bundle.getGame4()%></td>
							    <td><%=bundle.getbImg()%></td>
							      
							    <form action="manage" method="post">
							    
						        	<td>
						        	
							        	<div class="row">
								        	<div class="col">
								        	<a value="Edit" name="Action" class="btn btn-success" href="editBundle.jsp?bId=<%=bundle.getbId()%>&&bName=<%=bundle.getbName()%>&&bDetails=<%=bundle.getbDetails()%>&&bPrice=<%=bundle.getPrice()%>&&bImg=<%=bundle.getbImg()%>&&game1=<%=bundle.getGame1()%>&&game1=<%=bundle.getGame1()%>&&game2=<%=bundle.getGame2()%>&&game3=<%=bundle.getGame3()%>&&game4=<%=bundle.getGame4()%>">Edit</a>
								        	&nbsp;&nbsp;&nbsp;
								        	</div>
								        	<div class="col">
								            <a class="btn btn-success" href="deleteBundle.jsp?bId=<%=bundle.getbId()%>">Delete</a>&nbsp;&nbsp;&nbsp;
								            </div>
							            </div>
				   					</td>
				   					
				      	 		</form>
					    	</tr>
							<%} %>
					  </tbody>
					</table><br>
					
					<a class="btn btn-primary" href="bundle.jsp">View Bundle Page</a>
					
					</div><br>
				</div>
			</div>
		</div>				        
	        
	        
</div>

	
	



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
crossorigin="anonymous"></script>
</body>
</html>