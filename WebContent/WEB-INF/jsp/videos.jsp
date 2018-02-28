<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta property="og:image"
	content="https://sselman.ca/resources/img/banner.png" />
<meta property="og:type" content="UTF-8" />
<meta property="og:title" content="Videos" />
<meta property="og:url" content="https://sselman.ca/videos" />
<meta property="og:description"
	content="Selman, QA\Security Analyst Blog Youtube Videos" />
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Youtube Videos">
    <meta name="author" content="Selman">
    <meta name="keyswords" content="youtube,videos,security testing,web testing,cybersecurity,security,videos,selman">
	<title>Videos</title>
	<!-- Stylesheets -->
	<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/font-awesome.min.css">
	<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/style.css">
	<!-- Google fonts -->
	<link href="https://fonts.googleapis.com/css?family=PT+Serif:400,700" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
	<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700" rel="stylesheet" type="text/css">
	<!-- modernizr -->
	<script src="https://localhost:8443/webapp/resources/js/modernizr.js"></script>
	<!--[if lt IE 9]>
      <script src="https://localhost:8443/webapp/resources/js/html5shiv.js"></script>
      <script src="https://localhost:8443/webapp/resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<jsp:include page="common/header.jsp"></jsp:include>

	<!-- portfolio section -->
	<section class="works text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h2>My Youtube Videos</h2>
				<!-- 	<ul class="list-inline">
						<li class="filter active" data-filter=".all">All</li>
						<li class="filter" data-filter=".web-development">Web Development</li>
						<li class="filter" data-filter=".web-design">Web Design</li>
						<li class="filter" data-filter=".website-customization">Website Customisation</li> 
					</ul>-->
				</div>
				
				<c:forEach items="${videos}" var="video">
				<!-- single portfolio item -->
				<div class="col-md-4 col-sm-6 mix web-development all" data-myorder="2">
					<div class="single-work">
						<img src="https://localhost:8443/webapp/resources/img/works/1.png" alt="#">
						<div class="overlay">
							<h3>${video.title}</h3>
							<a href="#" type="button" data-toggle="modal" data-target="#myModal1"><i class="fa fa-search-plus"></i></a>
							<!-- Modal -->
						  <div class="modal fade" id="myModal1" role="dialog">
						    <div class="modal-dialog">
						    
						      <!-- Modal content-->
						      <div class="modal-content text-center">
						        <div class="modal-header">
						          <button type="button" class="close" data-dismiss="modal">&times;</button>
						          <h4>${video.title}</h4>
						        </div>
						        <div class="col-md-12">
							        <div class="modal-body col-md-8 col-md-offset-2">
							        <div class="embed-responsive embed-responsive-16by9">		
<iframe class="embed-responsive-item"src="${video.source}" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
</div>
							        	<!-- <ul class="list-inline">
							        		<li>Company: 2KEYS</li>
							        		<i>Industry: Cyber Security</i>
							        		<li>Technology: Java, Linux scripting, Selenium Web Driver, OpenSSL, SAML, OpenDJ, Spring MVC</li>
							        	</ul> -->
							        	
							        	<p> ${video.description}</p>
							        </div>
						        </div>
						        <div class="modal-footer">
						          <button type="button" class="btn btn-default" data-dismiss="modal">Close <i class="fa fa-times"></i></button>
						        </div>
						      </div>
						      
						    </div>
						  </div>
						</div>
					</div>
				</div>
				</c:forEach>
			
	</section><!-- end of portfolios -->

 
	<jsp:include page="common/footer.jsp"></jsp:include>
	<!-- script tags
	============================================================= -->
	<script src="https://localhost:8443/webapp/resources/js/jquery-2.1.1.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/jquery.mixitup.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/smoothscroll.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/bootstrap.min.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/custom.js"></script>
</body>
</html>