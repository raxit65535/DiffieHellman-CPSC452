<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1.0" />
<title>Diffie Hellman Key Exchange Algo</title>

<!-- CSS  -->
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link href="css/materialize.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="css/style.css" type="text/css" rel="stylesheet"
	media="screen,projection" />

<style type="text/css">
#wrapper {
	min-height: 100%;
	position: relative;
}

#footer {
	background: #ffab62;
	width: 100%;
	height: 100px;
	position: absolute;
	bottom: 0;
	left: 0;
}
</style>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {

		$('.r2').hide();
		$('.r2').delay(1000).fadeIn(2500);

		$('.r3').hide();
		$('.r3').delay(1000).fadeIn(3500);

		$('.r4').hide();
		$('.r4').delay(1000).fadeIn(4500);

		$('.r5').hide();
		$('.r5').delay(1000).fadeIn(5500);

		$('.r6').hide();
		$('.r6').delay(1000).fadeIn(6500);

	});
</script>

</head>
<body style="overflow-y: scroll; overflow-x: hidden;">
	<nav class="light-blue lighten-1" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="index" class="brand-logo">CPSC 452</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="#">Raxitkumar Solanki</a></li>
				<li><a href="#">CWID : 893235432</a></li>
			</ul>
		</div>
	</nav>





	<div class="section no-pad-bot" id="index-banner">
		<div class="container">
			<br> <br>
			<h1 class="header center orange-text">Extra Graduate Project</h1>
			<div class="row center">
				<h5 class="header col s12 light">Diffie Hellman Key Exchange
					Algorithm</h5>

				<div class="chip">
					<a
						href="https://en.wikipedia.org/wiki/Diffie%E2%80%93Hellman_key_exchange"
						target="blank">wikipedia defination</a>
				</div>
			</div>
			<br>
			<div align="center" class="raxit">

				<h5 style="text-decoration: underline">BOB and ALICE</h5>

			</div>

			<br>

		</div>
	</div>



	<div class="container" align="center">


		<div class="row r2">
			<div class="col s12 m4 l8">
				<div class="chip">

					<img alt="" src="img/b.png" class="img-circle" height="10%"
						width="5%"> hello Alice, let's, communicate !!
				</div>

			</div>
		</div>

		<div class="row r3">
			<div class="col s12 m4 l8" align="right">
				<div class="chip">

					<img alt="" src="img/a.png" class="img-circle" height="10%"
						width="5%"> Hi Bob ! sure, but how we will share the key ?!
				</div>

			</div>

		</div>

		<div class="row r4">
			<div class="col s12 m4 l8">
				<div class="chip">

					<img alt="" src="img/b.png" class="img-circle" height="10%"
						width="5%"> That's a point. What would you suggest ? !!
				</div>

			</div>
		</div>

		<div class="row r5">
			<div class="col s12 m4 l8" align="right">
				<div class="chip">

					<img alt="" src="img/a.png" class="img-circle" height="10%"
						width="5%"> Let's use Diffie Hellman key exchange algorithm
					!
				</div>

			</div>

		</div>

	</div>


	<br>
	<br>
	<br>


	<div align="center">
		<h5>Enter the elements</h5>
	</div>

	<div class="row r6">
		<form class="col offset-s2 s8 "
			action="${pageContext.request.contextPath}/PrimeCheck" method="post">


			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">security</i> <input id="n"
						name="n" type="number" class="validate"> <label
						for="prime n">Prime n</label>
				</div>
				<div class="input-field col s6">
					<i class="material-icons prefix">security</i> <input id="g"
						name="g" type="number" class="validate"> <label
						for="prime g">Prime g</label>
				</div>
			</div>



			<div align="center">
				<button class="btn waves-effect waves-light btn-floting green"
					type="submit" name="action">
					Submit <i class="material-icons right">send</i>
				</button>
			</div>
		</form>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>




	<footer class="page-footer orange footer wrapper">
		<div class="container">
			<div class="row">
				<div class="col l6 s12">
					<h5 class="white-text">Student Information</h5>
					<p class="grey-text text-lighten-4">
					<h6>Raxitkumar Solanki : CWID 893235432</h6>
					Currently Graduate Student at California State University.</br> Masters
					in Computer Science



				</div>
				<div class="col l3 s12">
					<h5 class="white-text">Contact</h5>
					<ul>
						<li><a class="white-text" href="#!">raxit65535@csu.fullerton.edu</a></li>
						<li><a class="white-text" href="#!">+1714-726-0682</a></li>

					</ul>
				</div>

			</div>
		</div>
		<div class="footer-copyright">
			<div class="container">
				Made by <a class="orange-text text-lighten-3"
					href="http://materializecss.com">Raxitkumar Solanki</a>
			</div>
		</div>
	</footer>


	<!--  Scripts-->
	<script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
	<script src="js/materialize.js"></script>
	<script src="js/init.js"></script>
</body>
</html>
