<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
 crossorigin="anonymous">
 
 <link rel="stylesheet" href="css/editBundle.css"/>
 
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
	
	
	<jsp:declaration>
		String bId = "";
		String name = "";
		String detail = "";
		String game1 = ""; 
		String game2 = ""; 
		String game3 = ""; 
		String game4 = ""; 
		String price = ""; 
		String image = "";	
	</jsp:declaration>
	
	<jsp:scriptlet>
		bId = request.getParameter("bId");
		name = request.getParameter("bName");
		detail = request.getParameter("bDetails");
		game1 = request.getParameter("game1");
		game2 = request.getParameter("game2");
		game3 = request.getParameter("game3");
		game4 = request.getParameter("game4");
		price = request.getParameter("bPrice");
		image = request.getParameter("bImg");	
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
			<div class="container">
					<div class="row">
						<div class="col-lg-10 col-xl-9 mx-auto">
							<div class="card flex-row my-5 border-0 overflow-hidden">
								<div class="card-img-left d-none d-md-flex">
									
								</div>
								<div class="card-body p-4 p-sm-5 " id="ctn1">
									<h4 class="card-title text-center text-white mb-5 fs-8">Update Bundle</h4>
									<form action="manage" method="post" class="needs-validation" >
												
										<div class="form mb-3">
											<label class="form-label text-white">Bundle Id</label>
											<input type="text" name="bId" class="form-control" value="<jsp:expression>bId</jsp:expression>" readonly>
										</div>
											
										<div class="form mb-3">
											<label class="form-label text-white" for="validationTooltip05">Bundle Name</label>
											<input type="text" name="bName"  id="validationTooltip05" class="form-control" value="<jsp:expression>name</jsp:expression>" required>		  
										</div>
											
										<div class="form mb-3">
											<label class="form-label text-white">Bundle Description </label><br>
											<input type="text" name="bDetails" class="form-control" value="<jsp:expression>detail</jsp:expression>"required>
										</div>
											
										<div class=" form mb-3">
											<label class="form-label text-white">Game 1:</label>
											<select id="game" name="game1" class="form-select" required>
												<option value="" disabled selected hidden>Select a game </option>
											</select>
											<div class="invalid-feedback">Example invalid select feedback</div>
										</div>
											
										<div class="form mb-3">
											<label class="form-label text-white">Game 2:</label>
											<select id="game2" name="game2" class="form-select" required>
												<option value="" disabled selected hidden>Select a game </option>
											</select>
										</div>
											
										<div class="form mb-3">
											<label class="form-label text-white">Game 3:</label>
											<select id="game3" name="game3" class="form-select" required>
												<option value="" disabled selected hidden>Select a game </option>
											</select>
										</div>
											
										<div class="form mb-3">
											<label class="form-label text-white">Game 4:</label>
											<select id="game4" name="game4" class="form-select" required>
												<option value="" disabled selected hidden>Select a game </option>
											</select>
										</div>
											
										<div class="form mb-3">
											<label class="form-label text-white">Bundle price </label>
											<input type="text" name="price" class="form-control" value="<jsp:expression>price</jsp:expression>" required>
										</div>
											
										<div class="form mb-3">
											<label class="form-label text-white">Image Name </label>
											<input type="text" name="bImg" class="form-control" value="<jsp:expression>image</jsp:expression>" required><br>
										</div>
										
											
										<div class="form mb-3 red">
											<input type="submit" name="Action" value="Edit" class="btn btn-primary w-50" id="btn1">
										</div>
											
										
									</form>
									<br>
								</div>
							</div>
						</div>
					</div>
				</div>
				<br>	        	
	        	
	        	
	        </div>
		</div>
	</div>
				        
	        
	        

	
	
	
	
	
	
	
	
	
	
	
	
	
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.js"><</script>
<script src="js/editBundle.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>	

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
crossorigin="anonymous"></script>

</body>
</html>