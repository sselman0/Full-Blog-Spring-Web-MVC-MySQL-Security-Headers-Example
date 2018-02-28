<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<footer class="footer">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="col-md-4">
					<h3>about me</h3>
					<p>I'm a software engineer with lots of experience in Cyber Security &amp; Product Verification. I
						try to give the best services.</p>
					<a href="about">Read full about me</a>
					<address>
						E-mail: sselman0@icloud.com <br> Phone: +1 (613) 714-5258
						<br> Ottawa, ON, Canada
					</address>
				</div>
				<div class="col-md-4">
					<h3>Subscribe &amp; Follow</h3>
					<p>Enter your email address to subscribe to this blog and
						receive notifications.</p>
					<form:form name="subscribeForm" action="subscribe"
						htmlEscape="true" method="post" id="subscribeForm"
						modelAttribute="subscribeForm">
						<form:errors cssClass="error" path="email" />
						<form:input type="hidden" path="id"/>
						<form:input path="email" type="email"
							placeholder="Enter your email" maxlength="50"></form:input>
							<form:input type="hidden" path="subscribed"/>
						<input type="submit" value="SUBSCRIBE NOW" >
					</form:form>
					<div class="socials text-center">
						<a href="https://www.facebook.com/sselman0"><i class="fa fa-facebook"></i></a> <a href="https://twitter.com/sselman0"><i
							class="fa fa-twitter"></i></a> <a href="https://www.instagram.com/0sselman/"><i
							class="fa fa-instagram"></i></a> <a href="https://www.linkedin.com/in/selman-selman-94968370/"><i
							class="fa fa-linkedin"></i></a> <a href="https://plus.google.com/u/0/117184307283425724040"><i
							class="fa fa-google-plus"></i></a>
					</div>
				</div>
				<div class="col-md-4 instagram-photos">
					<h3>Follow @ Instagram</h3>
					<!-- place your instagram widget below -->
					
					<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
					<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
					<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
					<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
					<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
					<a href="#"><img src="http://placehold.it/100x100" alt=""></a>
				</div> 
			</div>
		</div>
	</div>
	<div class="text-right">
		<a href="#home"><i class="fa fa-arrow-up"></i></a>
	</div>
	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<p>
						&copy; 2018  Developed by <a href="https://www.linkedin.com/in/selman-selman-94968370/">Selman Selman</a>
					</p>
				</div>
				<div class="col-md-6 footer-menu text-right">
					<ul class="list-inline">
						<li><a href="/webapp/welcome">home</a></li>
						<li><a href="/webapp/about">about</a></li>
						<li><a href="/webapp/videos">videos</a></li>
						<li><a href="/webapp/contact">contact</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>