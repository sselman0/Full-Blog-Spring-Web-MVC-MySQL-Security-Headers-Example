<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>

<meta property="og:image"
	content="https://localhost:8443/resources/img/post1.jpg" />
<meta property="og:type" content="UTF-8" />
<meta property="og:title" content="Google Search Advanced Tricks" />
<meta property="og:url" content="https://localhost:8443/posts/google-search-advanced-tricks" />
<meta property="og:description"
	content="Learn about Google Search Advanced Operators to master your Google Search skills" />
	
<meta charset="UTF-8" content="">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Selman">
<meta name="description"
	content="Google Advanced Search Tricks &amp; Tips">
<meta name="keywords"
	content="posts,google search,google,google advanced search,google advanced search operators,advanced operators,google search tricks,google search tips,google tricks">

<title>Google Search Advanced Tricks</title>
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
<script src="https://localhost:8443/webapp/resources/js/modernizr.js" type="text/javascript"></script>
<!--[if lt IE 9]>
      <script src="https://localhost:8443/webapp/resources/js/html5shiv.js"></script>
      <script src="https://localhost:8443/webapp/resources/js/respond.min.js"></script>
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
				<h2>Google Search</h2>
				<span>Google Advanced Search</span> <img
					src="https://localhost:8443/webapp/resources/img/post1.jpg" alt="" class="img-responsive">
				<br>
				<div class="btn-toolbar">
					<a
						href="https://www.facebook.com/sharer/sharer.php?u=https%3A//localhost:8443/posts/google-search-advanced-tricks"
						class="btn btn-social-icon btn-facebook"> <span
						class="fa fa-facebook"></span>
					</a> <a href="https://twitter.com/home?status=https%3A//localhost:8443/posts/google-search-advanced-tricks" class="btn btn-social-icon btn-twitter"> <span
						class="fa fa-twitter"></span>
					</a> <a href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A//localhost:8443/posts/google-search-advanced-tricks&title=&summary=&source=" class="btn btn-social-icon btn-linkedin"> <span
						class="fa fa-linkedin"></span>
					</a><a href="https://plus.google.com/share?url=https%3A//localhost:8443/posts/google-search-advanced-tricks" class="btn btn-social-icon btn-google"> <span
						class="fa fa-google"></span>
					</a><a href="https://pinterest.com/pin/create/button/?url=&media=https%3A//localhost:8443/posts/google-search-advanced-tricks&description=" class="btn btn-social-icon btn-pinterest"> <span
						class="fa fa-pinterest"></span>
					</a>
				</div>
					<p>If you are the type of person that uses Google often without
					knowing any search techniques, it can get frustrating filtering
					through the enourmous list of results.</p>
				<p>You can be searching for whichever purpose, school essay,
					online tutorials, restaurants, etc. This can be very handy!!</p>
				<p>Luckily for you Google Search engine accepts advanced
					operators that can focus search results based on your needs.
					Advanced operators are commands passed into the Search box that
					allow you to focus the search.</p>

				<p>Below you can find a list of Google Advanced Operators &amp;
					examples on how you can use them. With the right ammount of
					knowledge &amp; experience, Advanced Operators can be a powerfull
					tool.</p>

				<h2 class="section-heading">Google Advanced Operators List</h2>
				<div clas="table-responsive">
					<table
						class="table table-striped table-sm table-bordered table-hover">
						<thead>
							<tr>
								<th>#</th>
								<th>Operator</th>
								<th>Purpose</th>
								<th>Example</th>
								<th>Live Demo</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">1</th>
								<td>intitle</td>
								<td>Search page titles</td>
								<td>Google Search intitle:tutorial</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=Google Search intitle:tutorial"
									target="_blank"
									class="btn btn-primary  btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">2</th>
								<td>allintitle</td>
								<td>Seach for page titles containing all keywords</td>
								<td>allintitle:google search tutorial</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=allintitle:google search tutorial"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">3</th>
								<td>intext</td>
								<td>Search pages containing the a keyword in the page body
								</td>
								<td>intext:tesla</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=power intext:tesla"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">4</th>
								<td>allintext</td>
								<td>Search pages containing the a whole phrase in the page
									body</td>
								<td>allintext:tesla power grid</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=allintext: tesla power grid"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">5</th>
								<td>inurl</td>
								<td>Search for websites containing a keyword in the URL</td>
								<td>inurl:posts</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=inurl:posts"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">6</th>
								<td>allinurl</td>
								<td>Search for websites containing all keywords in the URL
								</td>
								<td>allinurl:twitter sselman0</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=allinurl: twitter sselman0"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">7</th>
								<td>site</td>
								<td>Search for something in a specific site</td>
								<td>sselman site:facebook.com</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=sselman site:facebook.com"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">8</th>
								<td>inanchor</td>
								<td>Search for pages with links containing a keyword</td>
								<td>inanchor:sselman</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=inanchor:sselman"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">9</th>
								<td>daterange</td>
								<td>Search for pages published specific dates (trick dates
									have to be in Julian's Format)</td>
								<td>bbc dateramge:098185-117001</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=bbc dateramge:098185-117001"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">10</th>
								<td>author</td>
								<td>Google will restrict your Google Groups results to
									include newsgroup articles by the author you specify</td>
								<td>google hacks author:selman</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=google hacks author:selman"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">11</th>
								<td>related</td>
								<td>Search sites that are related to given domain</td>
								<td>related:facebook.com</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=related:facebook.com"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">12</th>
								<td>loc</td>
								<td>Search for someting in a specific location</td>
								<td>loc:Ottawa sushi</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=loc:Ottawa sushi"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">13</th>
								<td>source</td>
								<td>Search for someting from specific source</td>
								<td>cybersecurity source:the_gardian</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=cybersecurity source:the_gardian"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">14</th>
								<td>filetype</td>
								<td>Search for certain filetypes</td>
								<td>filetype:mp3</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=filetype:mp3"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">15</th>
								<td>movie</td>
								<td>Search for certain movie</td>
								<td>movie:iron man location:Ottawa</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=movie:iron man location:Ottawa"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
							<tr>
								<th scope="row">16</th>
								<td>weather</td>
								<td>Show weather results in specific location</td>
								<td>weather:Ottawa</td>
								<td valign="center" align="center"><a
									href="https://www.google.com/search?q=weather:ottawa"
									target="_blank"
									class="btn btn-primary btn-sm active btn-round-sm"
									role="button" aria-pressed="true">TRY IT</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<p>Note that all operators mentioned above can be combined
					together to form a strong unique search query</p>
				<h2 class="section-heading">Other Google Tricks</h2>

				<p>So far we have discussed keyword search operators. However
					there is another list of Google Advanced Operators that help narrow
					the search down even more.</p>
				<hr width="50%" align="center" noshade>
				<h2 class="section-heading">-</h2>
				<hr width="50%" align="center" noshade>
				<p>The (-) sign is used to exclude terms from the search query
					that is known to commonly go along with the word you are searching
					for.</p>
				<p class="text-muted text-quoted">Example: united -states</p>
				<hr width="50%" align="center" noshade>
				<h2 class="section-heading">+</h2>
				<hr width="50%" align="center" noshade>
				<p>The (+) sign is used to force google to search for terms
					instead of ignoring one part.</p>
				<p class="text-muted text-quoted">Example: Peanut + butter</p>
				<hr width="50%" align="center" noshade>
				<h2 class="section-heading">*</h2>
				<hr width="50%" align="center" noshade>
				<p>The (*) sign is used as a wild card to indicate to google to
					search for keywords starting/ending/including certain characters.</p>
				<p class="text-muted text-quoted">Example: I've got a new*</p>
				<hr width="50%" align="center" noshade>
				<h2 class="section-heading">""</h2>
				<hr width="50%" align="center" noshade>
				<p>The quotation marks are used to enforce search results to
					include pages containing specified keywords</p>
				<p class="text-muted text-quoted">Example: software "university"</p>
				<hr width="50%" align="center" noshade>
				<h2 class="section-heading">~</h2>
				<hr width="50%" align="center" noshade>
				<p>Adding a tilde to a search word tells Google that you want it
					to bring back synonyms for the term as well.</p>
				<p class="text-muted text-quoted">Example: ~software analysis</p>
				<hr width="50%" align="center" noshade>
				<h2 class="section-heading">OR</h2>
				<hr width="50%" align="center" noshade>
				<p>Self explanatory; searches for a certain term or the other</p>
				<p class="text-muted text-quoted">Example: Computer "HP" or "Dell"</p>
			</div>

		</div>
	</div>
		<div class="btn-toolbar">
					 <a
						href="https://www.facebook.com/sharer/sharer.php?u=https%3A//localhost:8443/posts/google-search-advanced-tricks"
						class="btn btn-social-icon btn-facebook"> <span
						class="fa fa-facebook"></span>
					</a> <a href="https://twitter.com/home?status=https%3A//localhost:8443/posts/google-search-advanced-tricks" class="btn btn-social-icon btn-twitter"> <span
						class="fa fa-twitter"></span>
					</a> <a href="https://www.linkedin.com/shareArticle?mini=true&url=https%3A//localhost:8443/posts/google-search-advanced-tricks&title=&summary=&source=" class="btn btn-social-icon btn-linkedin"> <span
						class="fa fa-linkedin"></span>
					</a><a href="https://plus.google.com/share?url=https%3A//localhost:8443/posts/google-search-advanced-tricks" class="btn btn-social-icon btn-google"> <span
						class="fa fa-google"></span>
					</a><a href="https://pinterest.com/pin/create/button/?url=&media=https%3A//localhost:8443/posts/google-search-advanced-tricks&description=" class="btn btn-social-icon btn-pinterest"> <span
						class="fa fa-pinterest"></span>
					</a>
				</div>
	<hr>
	<div class="fb-comments"
		data-href="https://localhost:8443.ca/google-search-advanced-tricks"
		data-numposts="5"></div>
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
