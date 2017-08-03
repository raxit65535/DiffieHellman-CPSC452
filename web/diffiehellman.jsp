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
<body style="overflow-y: scroll; overflow-x: hidden;"
	style="margin-top: 5%; margin-left: 5%; margin-right: 5%"
	onload="myFunction1()">
	<nav class="light-blue lighten-1" role="navigation">
		<div class="nav-wrapper container">
			<a id="logo-container" href="index" class="brand-logo">CPSC 452</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="#">Raxitkumar Solanki</a></li>
				<li><a href="#">CWID : 893235432</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<br>
	<br>

	<%
		String n_str = request.getParameter("n");
		String g_str = request.getParameter("g");

		int n = Integer.parseInt(n_str);
		int g = Integer.parseInt(g_str);
	%>

	

		<center>
			<b><label
				style="border-width: 5px; border-style: thick; color: black; font-size: large;">n=<%=n %> &nbsp;&nbsp;&nbsp;g=<%=g %></label></b><br>
			<a  href="maninthemiddle?n=<%=n%>&g=<%=g %>"> click here Execute Man In The Middle Attack</a>
		</center>

		<center>
			<div class="row">
				<div id="s1" class="col offset-s2 s2">
					<b>BOB</b><br> step-1 <br>Select any random number X <input
						type="number" id="x" name="x" class="validate" required=""
						aria-required="true">

					<div align="right">


						<a onclick="myFunction1()"
							class="btn-floating btn-large waves-effect waves-light blue"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction2()"
							class="btn-floating btn-large waves-effect waves-light blue"><i
							class="material-icons">navigate_next</i></a>

					</div>


				</div>


				<div id="s2" class="col offset-s4 s2">
					<b>ALICE</b><br> step-2. <br>Select any random number Y <input
						type="number" id="y" name="y" class="validate" required=""
						aria-required="true">
					<div align="right">
						<a onclick="myFunction2()"
							class="btn-floating btn-large waves-effect waves-light yellow"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction3()"
							class="btn-floating btn-large waves-effect waves-light yellow"><i
							class="material-icons">navigate_next</i></a>

					</div>
				</div>
				<br>

			</div>

			<br> <br>

			<div class="row">
				<div id="s3" class="col offset-s2 s2">
					<b>BOB</b><br> step-3<br> <b>Operation :</b> g <sup>x</sup>
					mod n<br>
					<div style="font-size: large; color: black">
						<b>A = </b><label style="font-size: medium;" id="step3"
							name="step3"></label><br> <b>A = </b><label
							style="font-size: medium;" id="step3_2" name="step3_2"></label><br>
					</div>

					<div align="right">
						<input type="hidden" id="n" name="n" value="<%=n%>"> <input
							type="hidden" id="g" name="g" value="<%=g%>"> <a
							onclick="myFunction3()"
							class="btn-floating btn-large waves-effect waves-light orange"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction4()"
							class="btn-floating btn-large waves-effect waves-light orange"><i
							class="material-icons">navigate_next</i></a>

					</div>
				</div>

				<div id="s4" class="col offset-s4 s2">
					<b>ALICE</b><br> step-4<br> <b>Operation :</b> g <sup>y</sup>
					mod n<br>
					<div style="font-size: large; color: black">
						<b>B= </b><label style="font-size: medium;" id="step4"
							name="step4"></label><br> <b>B = </b><label
							style="font-size: medium;" id="step4_2" name="step4_2"></label><br>
					</div>


					<div align="right">
						<a onclick="myFunction4()"
							class="btn-floating btn-large waves-effect waves-light green"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction5()"
							class="btn-floating btn-large waves-effect waves-light green"><i
							class="material-icons">navigate_next</i></a>

					</div>
				</div>
				<br>

			</div>
			<br> <br> <br> <br>
			<div class="row">
				<div id="s5" class="col offset-s2 s2">
					<b>BOB</b><br> step-5<br> <b>Operation :</b> getting
					variable B from ALICE<br> <br>
					<div style="font-size: large; color: black">
						<b>B= </b><label style="font-size: medium;" id="step5"
							name="step5"></label><br>
					</div>

					<div align="right">

						<a onclick="myFunction5()"
							class="btn-floating btn-large waves-effect waves-light pink"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction6()"
							class="btn-floating btn-large waves-effect waves-light pink"><i
							class="material-icons">navigate_next</i></a>

					</div>
				</div>


				<div id="s6" class="col offset-s4 s2">
					<b>ALICE</b><br> step-6<br> <b>Operation :</b> getting
					variable A from BOB<br> <br>
					<div style="font-size: large; color: black">
						<b>A= </b><label style="font-size: medium;" id="step6"
							name="step6"></label><br>
					</div>
					<div align="right">
						<a onclick="myFunction6()"
							class="btn-floating btn-large waves-effect waves-light amber"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction7()"
							class="btn-floating btn-large waves-effect waves-light amber"><i
							class="material-icons">navigate_next</i></a>

					</div>
				</div>
				<br>

			</div>
			<br> <br> <br> <br>
			<div class="row">
				<div id="s7" class="col offset-s2 s2">
					<b>BOB</b><br> step-7<br> <b>Operation :</b> B <sup>x</sup>
					mod n<br>
					<div style="font-size: large; color: black">
						<b>K1 = </b><label style="font-size: medium;" id="step7"
							name="step7"></label><br> <b>K1 = </b><label
							style="font-size: medium;" id="step7_2" name="step7"></label><br>
					</div>

					<input type="hidden" id="A" name="A"> <input type="hidden"
						id="B" name="B"> <input type="hidden" id="K1" name="K1">
					<input type="hidden" id="K2" name="K2">


					<div align="right">

						<a onclick="myFunction7()"
							class="btn-floating btn-large waves-effect waves-light brown"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction8()"
							class="btn-floating btn-large waves-effect waves-light brown"><i
							class="material-icons">navigate_next</i></a>

					</div>
				</div>


				<div id="s8" class="col offset-s4 s2">
					<b>ALICE</b> step-8<br> <b>Operation :</b> A <sup>y</sup> mod
					n<br>
					<div style="font-size: large; color: black">
						<b>K2 = </b><label style="font-size: medium;" id="step8"
							name="step8"></label><br> <b>K2 = </b><label
							style="font-size: medium;" id="step8_2" name="step8_2"></label><br>
					</div>
					<div align="right">
						<a onclick="myFunction8()"
							class="btn-floating btn-large waves-effect waves-light grey"><i
							class="material-icons">navigate_before</i></a> <a
							onclick="myFunction9()"
							class="btn-floating btn-large waves-effect waves-light grey"><i
							class="material-icons">navigate_next</i></a>

					</div>
				</div>
				<br>

			</div>
			<br> <br>

			<div class="row">
				<div id="s9" class="col offset-s5 s2">
					step-9<br> <b>Operation :</b> K1=K2<br>
					<div style="font-size: large; color: black">
						<b>K1 = </b><label style="font-size: medium;" id="step9"
							name="step7"></label><br> <b>K2 = </b><label
							style="font-size: medium;" id="step9_2" name="step7"></label><br>
					</div>

				</div>
				<br>

			</div>


		</center>

	

	<script>
		function myFunction1() {

			document.getElementById("x").disabled = false;

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s1").style.border = "solid #E74C3C"; //red

			for (var a = 2; a <= 9; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

		}

		function myFunction2() {

			var validation = document.getElementById("x").value;
			if (validation == "") {
				alert("please insert value of x to proceed further");
				return false;
			}

			document.getElementById("x").disabled = true;
			document.getElementById("y").disabled = false;

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";

			document.getElementById("s2").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";

			for (var a = 3; a <= 9; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

		}

		function myFunction3() {

			var validation = document.getElementById("y").value;
			if (validation == "") {
				alert("please insert value of y to proceed further");
				return false;
			}

			document.getElementById("y").disabled = true;

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";

			document.getElementById("s3").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";

			for (var a = 4; a <= 9; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var x = document.getElementById("x").value;

			var temp = Math.pow(g, x)

			var a = temp % n;

			document.getElementById("step3").innerHTML = g + "<sup>" + x
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step3_2").innerHTML = a;

			document.getElementById("A").value = a;

		}

		function myFunction4() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";

			document.getElementById("s4").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";

			for (var a = 5; a <= 9; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var y = document.getElementById("y").value;

			var temp = Math.pow(g, y)

			var b = temp % n;

			document.getElementById("step4").innerHTML = g + "<sup>" + y
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step4_2").innerHTML = b;

			document.getElementById("B").value = b;

		}

		function myFunction5() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";

			document.getElementById("s5").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";

			for (var a = 6; a <= 9; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var b = document.getElementById("B").value;
			document.getElementById("step5").innerHTML = b;

		}

		function myFunction6() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";
			document.getElementById("s6").style.visibility = "visible";

			document.getElementById("s6").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";

			for (var a = 7; a <= 9; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var a = document.getElementById("A").value;
			document.getElementById("step6").innerHTML = a;

		}

		function myFunction7() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";
			document.getElementById("s6").style.visibility = "visible";
			document.getElementById("s7").style.visibility = "visible";

			document.getElementById("s7").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";
			document.getElementById("s6").style.border = "solid #FDFEFE";

			for (var a = 8; a <= 9; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var x = document.getElementById("x").value;
			var b = document.getElementById("B").value;

			var temp = Math.pow(b, x);

			var k1 = temp % n;

			document.getElementById("step7").innerHTML = b + "<sup>" + x
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step7_2").innerHTML = k1;

			document.getElementById("K1").value = k1;

		}

		function myFunction8() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";
			document.getElementById("s6").style.visibility = "visible";
			document.getElementById("s7").style.visibility = "visible";
			document.getElementById("s8").style.visibility = "visible";

			document.getElementById("s9").style.visibility = "hidden";

			document.getElementById("s8").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";
			document.getElementById("s6").style.border = "solid #FDFEFE";
			document.getElementById("s7").style.border = "solid #FDFEFE";

			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var y = document.getElementById("y").value;
			var a = document.getElementById("A").value;

			var temp = Math.pow(a, y);

			var k2 = temp % n;

			document.getElementById("step8").innerHTML = a + "<sup>" + y
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step8_2").innerHTML = k2;

			document.getElementById("K2").value = k2;

		}

		function myFunction9() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";
			document.getElementById("s6").style.visibility = "visible";
			document.getElementById("s7").style.visibility = "visible";
			document.getElementById("s8").style.visibility = "visible";
			document.getElementById("s9").style.visibility = "visible";

			document.getElementById("s9").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";
			document.getElementById("s6").style.border = "solid #FDFEFE";
			document.getElementById("s7").style.border = "solid #FDFEFE";
			document.getElementById("s8").style.border = "solid #FDFEFE";

			var k1 = document.getElementById("K1").value;
			var k2 = document.getElementById("K2").value;

			document.getElementById("step9").innerHTML = k1;
			document.getElementById("step9_2").innerHTML = k2;

		}
	</script>





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
