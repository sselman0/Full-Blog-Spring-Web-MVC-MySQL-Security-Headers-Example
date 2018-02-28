<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta property="og:image"
	content="https://sselman.ca/resources/img/banner.jpg" />
<meta property="og:type" content="UTF-8" />
<meta property="og:title" content="Contact" />
<meta property="og:url" content="https://sselman.ca/contact" />
<meta property="og:description"
	content="Selman, QA\Security Analyst Blog Contact Page" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Get in touch with a security analyst.">
<meta name="author" content="Selman">
<title>CONTACT</title>
<!-- Stylesheets -->
<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="https://localhost:8443/webapp/resources/css/style.css">
<!-- Google fonts -->
<link href='https://fonts.googleapis.com/css?family=PT+Serif:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=PT+Sans:400,700'
	rel='stylesheet' type='text/css'>
<!-- modernizr -->
<script src="https://localhost:8443/webapp/resources/js/modernizr.js"></script>

<!--[if lt IE 9]>
      <script src="https://localhost:8443/webapp/resources/js/html5shiv.js"></script>
      <script src="https://localhost:8443/webapp/resources/js/respond.min.js"></script>
    <![endif]-->
</head>
<body>

	<jsp:include page="common/header.jsp"></jsp:include>


	<!-- about section -->
	<section class="contact text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h2>Get In Touch</h2>
				<span>You have questions, I got answers.</span>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/loggob.jpg" alt=""
						class="img-responsive rounded mx-auto center-block">
				</div>
				 <br>
				<form name="sentMessage" class="form-horizontal"
					novalidation id="contactForm" name="contactForm">
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<input type="text" name="name" id="name" class="form-control" maxlength="40"
								htmlEscape="true" placeholder="Full Name" required
								data-validation-required-message="Please enter your name." />
						</div>
					</div>
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<input type="email" name="email" id="email" class="form-control"
								maxlength="60" htmlEscape="true" placeholder="Your Email"
								required
								data-validation-required-message="Please enter an email." />
						</div>
					</div>
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<input type="number" name="phone" id="phone" class="form-control" maxlength="50"
								htmlEscape="true" Placeholder="Phone Number" required
								data-validation-required-message="Please enter a phone number." />
						</div>
					</div>
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<textarea rows="5" class="form-control" id="message"
								maxlength="300" name="message" htmlEscape="true"
								placeholder="Type Your Message" required
								data-validation-required-message="What, got nothing to say? :)"></textarea>
						</div>
					</div>
					<div class="control-group">
						<div class="form-group floating-label-form-group controls">
							<p class="help-block text-danger"></p>
							<select class="form-control" id="reason" name="reason">
								<option>General</option>
								<option>Web application testing</option>
								<option>Security Testing</option>
								<option>Consulting</option>
								<option>Development</option>
								<option>Others</option>

							</select>
						</div>
					</div>
					<div id="success"></div>
					<input type="submit" id="sendMessageButton" class="form-control"
						value="Submit Your Message">
				</form>
			</div>
		</div>
	</div>
	</section>

	<jsp:include page="common/footer.jsp"></jsp:include>
	<!-- script tags
	============================================================= -->
	<script src="https://localhost:8443/webapp/resources/js/jquery-2.1.1.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/smoothscroll.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/bootstrap.min.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/custom.js"></script>
	<script src="https://localhost:8443/webapp/resources/js/contact_me.js"></script> 
	<script src="https://localhost:8443/webapp/resources/js/jqBootstrapValidation.min.js"></script>-
</body>
</html>