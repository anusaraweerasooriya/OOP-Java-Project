<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.games.*"%>
<%@page import="com.user.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
 crossorigin="anonymous">
 
 <link rel="stylesheet" href="css/useraccount.css"/>

<title>UserAccount</title>

<% String userId = (String)(session.getAttribute("user")); %>
<% String password = (String)(session.getAttribute("user2")); %>

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

	<div class="container-fluid"><br>
	    <div class="row flex-nowrap">
	        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark rounded"><br>
	            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
	                <a href="#" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
	                    <span class="fs-5 d-none d-sm-inline">User Dashboard</span>
	                </a>
	                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
	                    <li>
                        <a href="#" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Dashboard</span> </a>
                    	</li>
	                    <li>
	                        <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
	                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Games</span></a>
	                        <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
	                            <li class="w-100">
	                                <a href="#" class="nav-link px-0 " > <span class="d-none d-sm-inline">Create a new Game</span></a>
	                            </li>
	                            <li>
	                                <a href="#" class="nav-link px-0"> <span class="d-none d-sm-inline">Manage Games</span></a>
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
				<div class="container" >
					<div class="container bg-light" id="outer"><br>
						<div class="row">
							<div class="col">
							<table class="table table-hover border">
							<tr>
								<th class="table-danger">Account Details</th>
								<th class="table-danger"></th>
							</tr>
							
							
							<% 
								
								List<User> usDetails = UserDBUtil.validate(userId,password);
								request.setAttribute("usDetails", usDetails);
							
							%>
							 	<c:forEach var="us" items="${usDetails}">
							 		
							 		<c:set var="id" value="${us.id}"/>
							 		<c:set var="fName" value="${us.firstName}"/>
							 		<c:set var="lName" value="${us.lastName}"/>
							 		<c:set var="email" value="${us.email}"/>
							 		<c:set var="mobile" value="${us.mobile}"/>
							 		<c:set var="gender" value="${us.gender}"/>
							 		<c:set var="dob" value="${us.dateOfBirth}"/>
							 		<c:set var="userName" value="${us.userName}"/>
							 		<c:set var="password" value="${us.password}"/>
							 		
							 		
							 		
							 		
							 		
							 		<tr>
							 			<td class="table-warning">User ID</td>
							 			<td id="td1">${us.id}</td>
							 		</tr>
							 		<tr>
							 			<td class="table-warning">First Name</td>
							 			<td>${us.firstName}</td>
							 		</tr>
							 		<tr>
							 			<td class="table-warning" >Last Name</td>
							 			<td>${us.lastName}</td>
							 		</tr>
							 		<tr>
							 			<td class="table-warning">Email</td>
							 			<td>${us.email}</td>
							 		</tr>
							 		<tr>
							 			<td class="table-warning">Mobile</td>
							 			<td>${us.mobile}</td>
							 		</tr>
							 		<tr>
							 			<td class="table-warning">Gender</td>
							 			<td>${us.gender}</td>
							 		</tr>
							 		<tr>
							 			<td class="table-warning">Date of Birth</td>
							 			<td>${us.dateOfBirth}</td>
							 		</tr>	
							 		<tr>
							 			<td class="table-warning">User Name</td>
							 			<td>${us.userName}</td>
							 		</tr>
							 		<tr>
							 			<td class="table-warning">Password</td>
							 			<td>${us.password}</td>
							 		</tr>
							 	
							 	
							 	</c:forEach>
						 	</table>
						 	</div>
						 	
						 	<div class="col">
						 	
							 	<div class="text-center">
		  							<img src="images/user.png" class="img-thumbnail h-50 w-50 rounded" >
								</div>
								<br>
							 	
							 	<c:url value="updateUser.jsp" var="usupdate">
							 	
							 		<c:param name="id" value="${id}"/>
							 		<c:param name="fName" value="${fName}"/>
							 		<c:param name="lName" value="${lName}"/>
							 		<c:param name="email" value="${email}"/>
							 		<c:param name="mobile" value="${mobile}"/>
							 		<c:param name="gender" value="${gender}"/>
							 		<c:param name="dob" value="${dob}"/>
							 		<c:param name="userName" value="${userName}"/>
							 		<c:param name="pass" value="${password}"/>
							 	
							 	</c:url>
							 	<c:url value="deleteuser.jsp" var="usdelete">
									<c:param name="id" value="${id}"/>
							 		<c:param name="fName" value="${fName}"/>
							 		<c:param name="lName" value="${lName}"/>
							 		<c:param name="email" value="${email}"/>
							 		<c:param name="mobile" value="${mobile}"/>
							 		<c:param name="gender" value="${gender}"/>
							 		<c:param name="dob" value="${dob}"/>
							 		<c:param name="userName" value="${userName}"/>
							 		<c:param name="pass" value="${password}"/>
								
								</c:url>
								
								<div class="row text-center">
								 	<div class="col">
									 	<a href="${usupdate}"> 
									 		<input class="btn btn-success w-50" type ="button" name="update" value="Update Data">
										</a>
									</div>
									
									<div class="col">
										<a href="${usdelete}">
											<input class="btn btn-success w-50" type="button" name="delete" value="Delete Account">
										</a>
									</div>
								</div>
								
						</div>
							
						</div><br>
					</div>
					<br><br>
					<div class="row">
						<div class="container">
									<table class="table table-bordered">
								          <thead>
										    <tr class="table-dark">
										      <th>Game ID</th>
										      <th>Creator ID</th>
										      <th>Game Name</th>
										      <th>Game Details</th>
										      <th>Game Price</th>
										    </tr>
										  </thead>
										  
										  <tbody class="tbody">
											  <%
											  		  List<Game> bundleList = GameDBUtil.getAllGames();
											          Iterator it=bundleList.iterator();
											          while(it.hasNext()){
											          Game game =(Game)it.next();
											  %>
													<tr>
														<td><%=game.getgId()%></td>
													    <td><%=game.getDevId()%></td>
													    <td><%=game.getgName()%></td>
													    <td class="ellipsis"><span><%=game.getgDetails()%></span></td>
													    <td><%=game.getPrice()%></td>
								                   	</tr>          
								                <!-- } -->
								               <%} %>
								            </tbody>
					    			</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
crossorigin="anonymous"></script>
</body>
</html>