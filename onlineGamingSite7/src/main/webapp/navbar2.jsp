<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
 rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
 crossorigin="anonymous">
 
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
 <link rel="stylesheet" href="css/navBar.css"/>
 
 <title>Insert title here</title>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
	    <a class="navbar-brand" href="#">
	    	 <img
	            class="d-inline-block align-top"
	            src="images/logo.png"
	            width="40" height="40" />
	    	Spectacular
	    </a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <form class="d-flex">
	        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" id="searchBar">
	        <button class="btn btn-outline-success" type="submit">Search</button>
	      </form>
	    </div>
	     <div class="collapse navbar-collapse" id="navbarSupportedContent">
	     	<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
		     	<li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">
		          	<button type="button" class="btn btn-warning"><i class="fa fa-shopping-cart"></i> Cart</button>
		          </a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">
		          	<button type="button" class="btn btn-warning"><i class="fa fa-user"></i> My Account</button>
		          </a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link active" aria-current="page" href="#">
		          	<button type="button" class="btn btn-success">Log out</button>
		          </a>
		        </li>
		        
	     	</ul>
	     
	     </div>
	  </div>
	</nav>
	
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
	  <div class="container-fluid">
	    <div class="collapse navbar-collapse" id="navbarSupportedContent">
	      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="#">Home</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Games</a>
	        </li>
	        <li class="nav-item dropdown">
	          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
	            Dropdown
	          </a>
	          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
	            <li><a class="dropdown-item" href="#">Reviews</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="#">About us</a></li>
	            <li><hr class="dropdown-divider"></li>
	            <li><a class="dropdown-item" href="#">Contact Us</a></li>
	          </ul>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="#">Bundles</a>
	        </li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	
	<br>
	<br>
	<br>
	
	
	<footer class="bg-light text-black pt-5 pb-4">
		<div class="container text-center text-md-left">
			
			<div class="row text-center text-md-left">
			
				<div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3 text-start ">
					<h5 class="text-uppercase mb-4 font-weight-bold text-warning">Spectacular</h5>
					<p >Spectacular is the online gaming site which is made for gamers.This online platform provides the users best ever gaming content</p>
				</div>
				
				<div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3 text-start">
					<h5 class="text-uppercase mb-4 font-weight-bold text-warning">Products</h5>
				<p>
					<a href="#" class="text-black " style="text-decoration: none;"> The Providers </a>
				</p>
				
				<p>
					<a href="#" class="text-black" style="text-decoration: none;"> Creativity </a>
				</p>
				
				<p>
					<a href="#" class="text-black" style="text-decoration: none;"> About us</a>
				</p>
				
				<p>
					<a href="#" class="text-black" style="text-decoration: none;"> Locations </a>
				</p>
				
				</div>
				
				<div class ="col-md-3 col-lg-2 col-xl-2 mx-auto mt-3 text-start">
					<h5 class="text-uppercase mb-4 font-weight-bold text-warning">Useful links</h5>
					<p>
						<a href="#" class="text-black" style="text-decoration: none;"> Become an Affiliate </a>
					</p>
					
					<p>
						<a href="#" class="text-black" style="text-decoration: none;"> Shipping Rates </a>
					</p>
					
					<p>
						<a href="#" class="text-black" style="text-decoration: none;"> Help</a>
					</p>
					
					<p>
						<a href="#" class="text-black" style="text-decoration: none;"> Your Account </a>
					</p>
				
				</div>
				
				<div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3 text-start">
					<h5 class="text-uppercase mb-4 font-weight-bold text-warning">Contact Us</h5>
					<p>
						<i class="fa fa-home mr-3"></i> &nbsp; Los Angales , LA 4455, US
					</p>
					<p>
						<i class="fa fa-envelope mr-3"></i> &nbsp; specatacularcontact@gmail.com
					</p> 
					<p>
						<i class="fa fa-phone mr-3"></i> &nbsp; +1 2344 56780
					</p>
					<p>
						<i class="fa fa-print mr-3"></i> &nbsp; +01234456788
					</p>
				
				</div>
				
				<hr class="mb-4">
				<div class="row align-items-left text-start">
					<div class="col-md-7 col-lg-8">
						<p>Copyright 2020 All rights reserved by:
							<a href="#" style="text-decoration: none;">
								<strong class="text-warning">The Spectacular</strong>
							</a>
						</p>
					
					</div>
					
					<div class="col-md-5 col-lg-4">
						<div class="text-center text-md-right">
							
							<ul class="list-unstyled list-inline">
								<li class="list-inline-item">
									<a href="#" class="btn-floating btn-sm text-black" style="font-size: 23px;"><i class="fa fa-facebook-square"></i></a>
								</li>
								<li class="list-inline-item">
									<a href="#" class="btn-floating btn-sm text-black" style="font-size: 23px;"><i class="fa fa-twitter"></i></a>
								</li>
								<li class="list-inline-item">
									<a href="#" class="btn-floating btn-sm text-black" style="font-size: 23px;"><i class="fa fa-instagram"></i></a>
								</li>
								<li class="list-inline-item">
									<a href="#" class="btn-floating btn-sm text-black" style="font-size: 23px;"><i class="fa fa-google"></i></a>
								</li>
							</ul>
						
						</div>
					
					</div>
				</div>
			</div>
			
		</div>
	</footer>



	













<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" 
crossorigin="anonymous"></script>
</body>
</html>