<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta property="og:image"
	content="https://sselman.ca/resources/img/post2.jpg" />
<meta property="og:type" content="UTF-8" />
<meta property="og:title" content="Google Search Advanced Tricks" />
<meta property="og:url"
	content="https://sselman.ca/posts/google-search-advanced-tricks" />
<meta property="og:description"
	content="Learn about Google Search Advanced Operators to master your Google Search skills" />

<meta charset="UTF-8" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Selman">
<meta name="description"
	content="Google Advanced Search Tricks &amp; Tips">
<meta name="keywords"
	content="posts,google search,google,google advanced search,google advanced search operators,advanced operators,google search tricks,google search tips,google tricks">

<title>OWASP ZAP Tutorial</title>
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
      <script src="resources/js/html5shiv.js"></script>
      <script src="resources/js/respond.min.js"></script>
    <![endif]-->

</head>
<body>

	<!-- Facebook comment init div -->
	<div id="fb-root"></div>
	<script type="text/javascript">
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.12&appId=167828083997143&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>

	<!--  end -->

	<jsp:include page="../common/header.jsp"></jsp:include>
	<section class="about text-center">
	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<h2>OWASP ZAP Vulnerability Scanner</h2>
				<span>How to use OWASP ZAP tool to scan your website for
					vulnerabilities</span> <img src="https://localhost:8443/webapp/resources/img/post2.jpg" alt=""
					class="img-responsive img-fluid"> <br>
				<hr width="80%" align="center" noshade>
				<div class="btn-toolbar">
					<a
						href="https://www.facebook.com/sharer/sharer.php?u=https%3A//localhost:8443/owasp-zap-tutorial"
						class="btn btn-social-icon btn-facebook"> <span
						class="fa fa-facebook"></span>
					</a> <a href="https://twitter.com/home?status=https%3A//localhost:8443/posts/owasp-zap-tutorial" class="btn btn-social-icon btn-twitter"> <span
						class="fa fa-twitter"></span>
					</a> <a href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A//plus.google.com/share?url=https%253A//localhost:8443/posts/owasp-zap-tutorial&title=OWASP%20ZAP%20Tutorial%20For%20Begginers&summary=&source=" class="btn btn-social-icon btn-linkedin"> <span
						class="fa fa-linkedin"></span>
					</a><a href="https://plus.google.com/share?url=https%3A//localhost:8443/posts/owasp-zap-tutorial" class="btn btn-social-icon btn-google"> <span
						class="fa fa-google"></span>
					</a><a href="https://pinterest.com/pin/create/button/?url=https%3A//localhost:8443/resources/img/post2.jpg&media=https%3A//localhost:8443/posts/owasp-zap-tutorial&description=" class="btn btn-social-icon btn-pinterest"> <span
						class="fa fa-pinterest"></span>
					</a>
				</div>

				<p>
					<b>OWASP ZAP</b> stands for Zed Attack Proxy, which is one of the
					world's most popular free tools that is actively maintained. The
					community behind ZAP tool is international and fall under the
					non-for-profit initiative known as <b>Open Web Application
						Security Protocol <a href="https://owasp.org/">(OWASP)</a>
					</b>.
				</p>
				<p>
					<b>OWASP ZAP</b> is the swiss army knife of web assessment tools.
					It can provide great assistant in automating some of the security
					testing or payload injection.
				</p>
				<p>
					In this tutorial I am going to show how to setup &amp; get started
					with basic website security testing using the <b>OWASP ZAP</b>
					Tool. Do not use this tool on web applications that are not yours.
					If you want to use it for testing, it is advised to do so on your
					own localhost.
				</p>

				<p class="quoted-text">
					<i>
						<p>This tutorial covers basic features of the ZAP tool. Alot
							more things can be done and plugins added. However if you are new
							to this, this should be good to get you started.</p>
						<p>Note that some vulnerabilities detected by the tool can
							sometimes be false positive, meaning they are not actually a
							vulnerability. So do not freak out. Each of those results I am
							about to show you need to be carefully analyzed and verified
							before decisions can be made.
					</i>
				</p>

				<h2 class="section-heading">Installing ZAP</h2>
				<p>
					To download ZAP go the OWASP website <a
						href="https://github.com/zaproxy/zaproxy/wiki/Downloads">HERE</a>.
					Then pick the file appropriate to your operating system.
				</p>
				<p>Then go through the install instructions and you are ready to
					go :)</p>
				<br> <img src="https://localhost:8443/webapp/resources/img/zapinstall.png"
					alt="Installing ZAP"
					class="img-responsive rounded center-block placeholder"> <br>
				<h2 class="section-heading">Running ZAP Initial Scan</h2>
				<img src="https://localhost:8443/webapp/resources/img/getting-started.png" alt="ZAP Home Page"
					class="img-responsive rounded mx-auto center-block"> <br>
				<p>Once you run the OWASP ZAP tool, a similar window opens up.
					No extra configuration needed to use the tool. Configuration and
					tweaking is applicable but are not discussed in this tutorial. This
					tool has many features &amp; maybe I will discuss some in another
					post. Leave me your questions in the comments.</p>
				<p>The box hilighted in red is the placeholder for the web app
					URL that you want to attack. Once you
					click the attack button, all pages being visited by the tool will be
					displayed in the window on the top-left side. If you expand the
					Sites folder you can see the web application page hierarchy
					structure.</p>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/sites.png" alt="ZAP Home Page"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>
				<p>At the bottom you can see bunch of tabs, we are going to
					focus on 4 of them.
				<p>
				<hr width="50%" align="center" noshade>
				<h4>Alerts</h4>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/alerts.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>
				<p>
					The <i style="color: blue"> blue</i> highlighted area on the left
					shows a list of warnings/possible vulnerabilities that resulted
					from the scan. The color of the flags are a representation of the
					severity of the vulnerability detected. It goes from <i
						style="color: yellow"> low </i> to <i style="color: orange">
						medium </i> and <i style="color: red"> high </i>.
				<p>
					if you expand one of the Alerts and click on the request URL, the
					right side will be populated with more information regarding the
					vulnerability. The Top of the<i style="color: green"> green </i>
					highlighted box is the name of the vulnerability, the URL, the Risk
					sevirity, a description and a very general solution on how to go
					about mitigating this issue.
				</p>
				<hr width="50%" align="center" noshade>
				<h4>Spider</h4>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/spider.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>
				<p>The Spider tab shows all the links that the ZAP tool has
					crawled/discovered. Red sign means the URL was out of scope and the
					green are all URL's within your domain scope.</p>
				<p>The spider is more of a discovery tool but it can be useful
					analyzing domain links and checking that pages that require
					authentication do not show up in the spider unless you gave it
					login information. Further more those URLs can be further scanned
					separately.</p>
				<p>If you click on one of the rows under URLS, you will be
					able to see the Request &amp; Response from the server</p>

				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/spiderRes.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/spiderLink.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<hr width="50%" align="center" noshade>
				<h4>Active Scan</h4>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/active-scan.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>
				<p>The Active Scanner Tab, shows you all the payloads that have
					been submitted to the URL pamameter, i.e domain.com/?query=payload.
					This form of security testing checks if your application is
					vulnerable to code injection attacks such as SQL Inject.</p>
				<p>The results in the Alert tab are based on this scan and
					header information extracted from server response. However there is
					more you can do in OWASP ZAP tool such as Fuzzing attacks.</p>
				<hr width="50%" align="center" noshade>
				<h4>Fuzzer</h4>
				<br>
				<p>Fuzzing is the technique of discovering code errors and
					security loopholes in software, operating systems or networks. It
					involves inputting a large variety of random &amp; non-random data
					and see how the system responds.</p>
				<p>Having gone through the steps above to scan my website, if
					you go back to the Sites hierarchy, under webapp I have a form
					for users to subscribe by submitting their email. Now this input
					box has to be guarded so melicious users cannot inject code into my
					application that will allow them to take control or affect
					visitors. To test that in OWASP ZAP, I would right-click on the
					subscribe form, then choose Attacks -> Fuzzer.</p>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/fuzz-form.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>
				<p>
					A window like the following will open. On the left bottom box, you
					see <i>id=0&amp;email=&amp;subscribed=0</i>. In this case I want to
					test the email because that input is coming from the user. So
					set the cursor just after the <i>equal (=)</i> sign after the
					email. And click ADD on the top-right side.
				</p>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/fuzzer.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>

				<p>Click add again and a Window like the following will show up.
					You want to expand the drop-down menu and select File Fuzzers so
					you can use the pre-built in keywords that come with OWASP ZAP.</p>
				<p>
					Then from the menu expand <i>fuzzdb</i> then expand <i>attacks</i>
					and select <i>email</i>. Now ofcourse anyother type of attack or
					keyword might be applicable as well.
				</p>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/fuzzer-payload.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>
				<p>Then manual digging is needed to analyze the result and build
					conclusions. For example if we click on one of the requests as
					shown in the figure below, we can see the email that was submited
					and how it reflected back into the screen. Yes this is not a valid
					email according to the RFC 5322, but imagine this code was actually
					a script, then it would have been executed. Luckily for me the
					input that had html tags was not pushed back to the browser. And
					that is basically how you can analyze the results.</p>
				<br>
				<div class="text-center">
					<img src="https://localhost:8443/webapp/resources/img/fuzzer-result.png" alt="alerts tab"
						class="img-responsive rounded mx-auto center-block">
				</div>
				<br>
				<p>Even though that was a very little preview on how things are
					done, there is not much more to it than just having the experience
					to be able to properly use the right payloads and also analyze the
					result from a security perspective.</p>
					<br>
					<p> I hope this tutorial was helpful enough to get you started in the right direction. If you have any questions don't hesitate to leave it in the comments below.
					Otherwise share it with like minded people :) </p>
				
				<hr width="80%" align="center" noshade>
				<div class="btn-toolbar">
					<a
						href="https://www.facebook.com/sharer/sharer.php?u=https%3A//sselman.ca/owasp-zap-tutorial"
						class="btn btn-social-icon btn-facebook"> <span
						class="fa fa-facebook"></span>
					</a> <a href="https://twitter.com/home?status=https%3A//sselman.ca/posts/owasp-zap-tutorial" class="btn btn-social-icon btn-twitter"> <span
						class="fa fa-twitter"></span>
					</a> <a href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A//plus.google.com/share?url=https%253A//sselman.ca/posts/owasp-zap-tutorial&title=OWASP%20ZAP%20Tutorial%20For%20Begginers&summary=&source=" class="btn btn-social-icon btn-linkedin"> <span
						class="fa fa-linkedin"></span>
					</a><a href="https://plus.google.com/share?url=https%3A//sselman.ca/posts/owasp-zap-tutorial" class="btn btn-social-icon btn-google"> <span
						class="fa fa-google"></span>
					</a><a href="https://pinterest.com/pin/create/button/?url=https%3A//sselman.ca/resources/img/post2.jpg&media=https%3A//sselman.ca/posts/owasp-zap-tutorial&description=" class="btn btn-social-icon btn-pinterest"> <span
						class="fa fa-pinterest"></span>
					</a>
				</div>
				<hr>
	<div class="fb-comments"
		data-href="https://sselman.ca/owasp-zap-tutorial"
		data-numposts="5"></div>

			</div>
		</div>
	</div>
	</section>


	<jsp:include page="../common/footer.jsp"></jsp:include>
	<!-- script tags
	============================================================= -->
	<script src="https://localhost:8443/webapp/resources/js/jquery-2.1.1.js" type="text/javascript"></script>
	<script src="https://localhost:8443/webapp/resources/js/smoothscroll.js" type="text/javascript"></script>
	<script src="https://localhost:8443/webapp/resources/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="https://localhost:8443/webapp/resources/js/custom.js" type="text/javascript"></script>
</body>
</html>
