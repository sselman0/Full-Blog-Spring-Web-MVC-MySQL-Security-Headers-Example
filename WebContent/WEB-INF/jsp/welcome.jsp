<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta property="og:image"
	content="https://sselman.ca/resources/img/banner.png" />
<meta property="og:type" content="UTF-8" />
<meta property="og:title" content="Selman" />
<meta property="og:url" content="https://sselman.ca/" />
<meta property="og:description"
	content="Selman, QA\Security Analyst Blog" />
	
<meta charset="UTF-8" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Selman, QA\Security Analyst Blog">
<meta name="author" content="Selman">
<meta name="keywords"
	content="Selman, Selman selman, QA Analyst, Security Analyst, web developer, software engineer, carleton, ottawa, developer, cyber security, contractor">
<title>SSELMAN</title>
<!-- Stylesheets -->
<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/style.css">
<!-- Google fonts -->
<link href="https://fonts.googleapis.com/css?family=PT+Serif:400,700"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=PT+Sans:400,700"
	rel="stylesheet" type="text/css">
<!-- modernizr -->
<script src="https://localhost:8443/webapp/resources/js/modernizr.js" type="text/javascript"></script>
<!--[if lt IE 9]>
      <script src="https://localhost:8443/webapp/resources/js/html5shiv.js"></script>
      <script src="https://localhost:8443/webapp/resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<jsp:include page="common/header.jsp"></jsp:include>


	<section class="content">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2 no-padding">
				<div class="col-md-12">
				
				<c:forEach items="${posts}" var="post">
					<article class="single-post">
					<div class="post-header text-center">
						<h2>
							<a href="${post.source}">${post.title}</a>
						</h2>
						<span>Written by <a href="#">Selman Selman</a> 
							on ${post.published_at}
						</span>
					</div>
					<div class="post-content">
						<a href="${post.source}"><img src="${post.img_source}" alt=""
							class="img-responsive"></a>
						<p>${post.summary_one}</p>
						<p>${post.summary_two}</p>
						<div class="read-more text-center">
							<a href="${post.source}">Read the article</a>
						</div>
					</div>
					</article>
					</c:forEach>

				
				</div>
			</div>
		</div>
	</div>
	</section>

	<jsp:include page="common/footer.jsp"></jsp:include>
	<!-- script tags
	============================================================= -->
	<script src="https://localhost:8443/webapp/resources/js/jquery-2.1.1.js" type="text/javascript"></script>
	<script src="https://localhost:8443/webapp/resources/js/smoothscroll.js" type="text/javascript"></script>
	<script src="https://localhost:8443/webapp/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="https://localhost:8443/webapp/resources/js/custom.js" type="text/javascript"></script>
</body>
</html>