	 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- ====================================================
	header section -->
	<div class="top-bar">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="col-md-4">
						<h3>Recent posts</h3>
						<nav>
							<ul class="recent-posts">
							<c:forEach items="${recentPosts}" var="post">
								<li><a href="${post.source}">${post.title}</a></li>
								</c:forEach>
							</ul>
						</nav>
					</div>
					<div class="col-md-4">
						<h3>Hello there :)</h3>
						<p>I see you are exploring my site. Don't forget to leave feedback. If you find any bugs do kindly tell webmaster@sselman.ca. </p>
					</div>
					<div class="col-md-4">
						<h3>Website Technologies</h3>
						<nav>
							<ul class="tags list-inline">
								<li><a href="#">HTML</a></li>
								<li><a href="#">Bootstrap</a></li>
								<li><a href="#">Spring MVC</a></li>
								<li><a href="#">Java</a></li>
								<li><a href="#">CSS</a></li>
								<li><a href="#">Javascript</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="banner" id="home"></div>
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="top-nav"></div>
				<div class="top-click">
					<a href="#"><i class="fa fa-plus"></i></a>
					<a href="#"><i class="fa fa-minus"></i></a>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 no-padding">
					<div class="col-md-12 text-center user">
						<img src="https://localhost:8443/webapp/resources/img/user.jpg" alt="Me" class="avatar img-circle border border-white">
						<h1>Selman Selman</h1>
						<h4>Security\QA Analyst &amp; Developer living in Ottawa</h4>
						<div class="social-icons">
							<a href="https://www.facebook.com/sselman0"><i class="fa fa-facebook"></i></a>
							<a href="https://twitter.com/sselman0"><i class="fa fa-twitter"></i></a>
							<a href="https://www.instagram.com/0sselman/"><i class="fa fa-instagram"></i></a>
							<a href="https://www.linkedin.com/in/selman-selman-94968370/"><i class="fa fa-linkedin"></i></a>
							<a href="https://plus.google.com/u/0/117184307283425724040"><i class="fa fa-google-plus"></i></a>
						</div>
					</div>
					<!-- nav starts here -->
					<div class="col-md-12">	
						<div class="main-nav">
							<nav class="navbar navbar-default">
							  <div class="container-fluid">
							    <!-- Brand and toggle get grouped for better mobile display -->
							    <div class="navbar-header">
							      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
							        <span class="sr-only">Toggle navigation</span>
							        <span class="icon-bar"></span>
							        <span class="icon-bar"></span>
							        <span class="icon-bar"></span>
							      </button>
							    </div>

							    <!-- Collect the nav links, forms, and other content for toggling -->
							    <div class="collapse navbar-collapse text-center" id="bs-example-navbar-collapse-1">
							      <ul class="nav navbar-nav">
							        <li><a  href="/webapp/welcome">home</a></li>
							        <li><a href="/webapp/about">about me</a></li>
							        <li><a href="/webapp/videos">Videos</a></li>
							        <li><a href="/webapp/contact">contact</a></li>
							      </ul>
							    </div><!-- /.navbar-collapse -->
							  </div><!-- /.container-fluid -->
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header><!-- end of header section -->