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
	style="margin-top: 2%; margin-left: 5%; margin-right: 5%"
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

		<h6>Man In the Middle Attack</h6>
		<br> <b><label
			style="border-width: 5px; border-style: thick; color: black; font-size: large;">n=<%=n%>
				&nbsp;&nbsp;&nbsp;g=<%=g%></label></b><br> <br> <br> <br>

	</center>

	<center>

		<input type="hidden" id="n" name="n" value="<%=n%>"> <input
			type="hidden" id="g" name="g" value="<%=g%>"> <input
			type="hidden" id="x1" name="x1"> <input type="hidden" id="w1"
			name="w1"> <input type="hidden" id="z1" name="z1"> <input
			type="hidden" id="y1" name="y1"> <input type="hidden" id="A"
			name="A"> <input type="hidden" id="A1" name="A1"> <input
			type="hidden" id="B1" name="B1"> <input type="hidden" id="B"
			name="B">





		<div class="row">
			<div id="s1" class="col offset-s1 s2">
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


			<div id="s2" class="col offset-s2 s2">
				<b>EVE</b><br> step-2. <br> W = <input type="number"
					id="w" name="w" class="validate" required="" aria-required="true"
					style="width: 30%"> Z = <input type="number" id="z"
					name="z" class="validate" required="" aria-required="true"
					style="width: 30%">
				<div align="right">
					<a onclick="myFunction2()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction3()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>


			<div id="s3" class="col offset-s2 s2">
				<b>ALICE</b><br> step-3. <br>Select any random number Y <input
					type="number" id="y" name="y" class="validate" required=""
					aria-required="true">
				<div align="right">
					<a onclick="myFunction3()"
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction4()"
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>

			<br>

		</div>

		<br> <br>

		<div class="row">
			<div id="s4" class="col offset-s1 s2">
				<b>BOB</b><br> step-4 <br> g <sup>x</sup> &nbsp; mod
				&nbsp; n

				<div style="font-size: large; color: black">
					<b>A = </b><label style="font-size: medium;" id="step4"
						name="step4"></label><br> <b>A = </b><label
						style="font-size: medium;" id="step4_2" name="step4_2"></label><br>
				</div>

				<div align="right">


					<a onclick="myFunction4()"
						class="btn-floating btn-large waves-effect waves-light blue"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction5()"
						class="btn-floating btn-large waves-effect waves-light blue"><i
						class="material-icons">navigate_next</i></a>

				</div>


			</div>


			<div id="s5" class="col offset-s2 s2">
				<b>EVE</b><br> step-5. <br>


				<div style="font-size: large; color: black" align="center">
					<b>A1 = </b><label style="font-size: medium;" id="step5"
						name="step5"></label><br> <b>A1 = </b><label
						style="font-size: medium;" id="step5_2" name="step5_2"></label><br>
				</div>


				<div style="font-size: large; color: black;" align="center">
					<b>B1 = </b><label style="font-size: medium;" id="step5_3"
						name="step5_3"></label><br> <b>B1 = </b><label
						style="font-size: medium;" id="step5_4" name="step5_4"></label><br>
				</div>

				<div align="right">
					<a onclick="myFunction5()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction6()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>


			<div id="s6" class="col offset-s2 s2">
				<b>ALICE</b><br> step-6. <br> g <sup>y</sup> &nbsp; mod
				&nbsp; n

				<div style="font-size: large; color: black">
					<b>B = </b><label style="font-size: medium;" id="step6"
						name="step6"></label><br> <b>B = </b><label
						style="font-size: medium;" id="step6_2" name="step6_2"></label><br>
				</div>

				<div align="right">
					<a onclick="myFunction6()"
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction7()"
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>

		</div>

		<br>
		<div class="row">
			<div id="s7" class="col offset-s1 s2">
				<b>BOB</b><br> step-7 <br> A1 from EVE<br> <br>
				<div style="font-size: large; color: black">
					<b>A1 = </b><label style="font-size: medium;" id="step7"
						name="step7"></label><br>
				</div>
				<div align="right">


					<a onclick="myFunction7()"
						class="btn-floating btn-large waves-effect waves-light blue"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction8()"
						class="btn-floating btn-large waves-effect waves-light blue"><i
						class="material-icons">navigate_next</i></a>

				</div>


			</div>


			<div id="s8" class="col offset-s2 s2">
				<b>EVE</b><br> step-8. <br> A from BOB<br> <br>
				<div style="font-size: large; color: black">
					<b>A = </b><label style="font-size: medium;" id="step8"
						name="step8"></label><br>
				</div>

				B from ALICE<br> <br>
				<div style="font-size: large; color: black">
					<b>B = </b><label style="font-size: medium;" id="step8_2"
						name="step8_2"></label><br>
				</div>
				<div align="right">
					<a onclick="myFunction8()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction9()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>


			<div id="s9" class="col offset-s2 s2">
				<b>ALICE</b><br> step-9. <br> B1 from EVE<br> <br>
				<div style="font-size: large; color: black">
					<b>B1 = </b><label style="font-size: medium;" id="step9"
						name="step9"></label><br>
				</div>
				<div align="right">
					<a onclick="myFunction9()"
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction10()"
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>
		</div>
		<br>
		<br>

		<div class="row">
			<div id="s10" class="col offset-s1 s2">
				<b>BOB</b><br> step-10 <br> g <sup>A1</sup> &nbsp; mod
				&nbsp; n

				<div style="font-size: large; color: black">
					<b>K1 = </b><label style="font-size: medium;" id="step10"
						name="step10"></label><br> <b>K1 = </b><label
						style="font-size: medium;" id="step10_2" name="step10_2"></label><br>
				</div>

				<div align="right">


					<a onclick="myFunction10()"
						class="btn-floating btn-large waves-effect waves-light blue"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction11()"
						class="btn-floating btn-large waves-effect waves-light blue"><i
						class="material-icons">navigate_next</i></a>

				</div>


			</div>


			<div id="s11" class="col offset-s2 s2">
				<b>EVE</b><br> step-11. <br>


				<div style="font-size: large; color: black" align="center">
					<b>K1 = </b><label style="font-size: medium;" id="step11"
						name="step11"></label><br> <b>K1 = </b><label
						style="font-size: medium;" id="step11_2" name="step11_2"></label><br>
				</div>


				<div style="font-size: large; color: black;" align="center">
					<b>K2 = </b><label style="font-size: medium;" id="step11_3"
						name="step11_3"></label><br> <b>K2 = </b><label
						style="font-size: medium;" id="step11_4" name="step11_4"></label><br>
				</div>

				<div align="right">
					<a onclick="myFunction11()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_before</i></a> <a
						onclick="myFunction12()"
						class="btn-floating btn-large waves-effect waves-light yellow"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>


			<div id="s12" class="col offset-s2 s2">
				<b>ALICE</b><br> step-12. <br> B <sup>y</sup> &nbsp; mod
				&nbsp; n

				<div style="font-size: large; color: black">
					<b>K2 = </b><label style="font-size: medium;" id="step12"
						name="step12"></label><br> <b>K2 = </b><label
						style="font-size: medium;" id="step12_2" name="step12_2"></label><br>
				</div>

				<div align="right">
					<a onclick="myFunction12()"
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_before</i></a> <a
						onclick=""
						class="btn-floating btn-large waves-effect waves-light orange"><i
						class="material-icons">navigate_next</i></a>

				</div>
			</div>

		</div>

		<br>
	</center>


	<script>
		function myFunction1() {

			document.getElementById("x").disabled = false;

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s1").style.border = "solid #E74C3C"; //red

			for (var a = 2; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

		}

		function myFunction2() {

			var validation = document.getElementById("x").value;
			if (validation == "") {
				alert("please insert value of x to proceed further");
				return false;
			} else {
				document.getElementById("x1").value = validation;

			}

			document.getElementById("x").disabled = true;
			document.getElementById("w").disabled = false;
			document.getElementById("z").disabled = false;

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";

			document.getElementById("s2").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";

			for (var a = 3; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

		}

		function myFunction3() {

			var validation = document.getElementById("w").value;
			var validation1 = document.getElementById("z").value;
			if (validation == "" || validation1 == "") {
				alert("please insert value of w and z to proceed further");
				return false;
			}

			else {
				document.getElementById("w1").value = validation;
				document.getElementById("z1").value = validation1;

			}

			document.getElementById("x").disabled = true;
			document.getElementById("w").disabled = true;
			document.getElementById("z").disabled = true;

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";

			document.getElementById("s3").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";

			for (var a = 4; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

		}

		function myFunction4() {

			var validation = document.getElementById("y").value;
			if (validation == "") {
				alert("please insert value of y to proceed further");
				return false;
			} else {
				document.getElementById("y1").value = validation;

			}
			document.getElementById("x").disabled = true;
			document.getElementById("w").disabled = true;
			document.getElementById("z").disabled = true;
			document.getElementById("y").disabled = true;

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";

			document.getElementById("s4").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";

			for (var a = 5; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var x = document.getElementById("x1").value;

			var temp = Math.pow(g, x)

			var a = temp % n;

			document.getElementById("step4").innerHTML = g + "<sup>" + x
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step4_2").innerHTML = a;

			document.getElementById("A").value = a;

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

			for (var a = 6; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var w = document.getElementById("w1").value;
			var z = document.getElementById("z1").value;

			var temp = Math.pow(g, w)

			var temp2 = Math.pow(g, z);

			var a1 = temp % n;

			var b1 = temp2 % n;

			document.getElementById("step5").innerHTML = g + "<sup>" + w
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step5_2").innerHTML = a1;

			document.getElementById("step5_3").innerHTML = g + "<sup>" + z
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step5_4").innerHTML = b1;

			document.getElementById("A1").value = a1;
			document.getElementById("B1").value = b1;

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

			for (var a = 7; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var y = document.getElementById("y1").value;

			var temp = Math.pow(g, y)

			var b = temp % n;

			document.getElementById("step6").innerHTML = g + "<sup>" + y
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step6_2").innerHTML = b;

			document.getElementById("B").value = b;
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

			for (var a = 8; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var a1 = document.getElementById("A1").value;

			document.getElementById("step7").innerHTML = a1;

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

			document.getElementById("s8").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";
			document.getElementById("s6").style.border = "solid #FDFEFE";
			document.getElementById("s7").style.border = "solid #FDFEFE";

			for (var a = 9; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var a = document.getElementById("A").value;
			var b = document.getElementById("B").value;

			document.getElementById("step8").innerHTML = a;
			document.getElementById("step8_2").innerHTML = b;
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

			for (var a = 10; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}

			var b1 = document.getElementById("B1").value;

			document.getElementById("step9").innerHTML = b1;
		}

		function myFunction10() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";
			document.getElementById("s6").style.visibility = "visible";
			document.getElementById("s7").style.visibility = "visible";
			document.getElementById("s8").style.visibility = "visible";
			document.getElementById("s9").style.visibility = "visible";
			document.getElementById("s10").style.visibility = "visible";

			document.getElementById("s10").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";
			document.getElementById("s6").style.border = "solid #FDFEFE";
			document.getElementById("s7").style.border = "solid #FDFEFE";
			document.getElementById("s8").style.border = "solid #FDFEFE";
			document.getElementById("s9").style.border = "solid #FDFEFE";

			for (var a = 11; a <= 12; a++) {
				document.getElementById("s" + a).style.visibility = "hidden";
			}
			
			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var A1 = document.getElementById("A1").value;

			var x = document.getElementById("x1").value;
			var temp = Math.pow(A1, x)

			var a = temp % n;

			document.getElementById("step10").innerHTML = A1 + "<sup>" + x
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step10_2").innerHTML = a;

			

		}

		function myFunction11() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";
			document.getElementById("s6").style.visibility = "visible";
			document.getElementById("s7").style.visibility = "visible";
			document.getElementById("s8").style.visibility = "visible";
			document.getElementById("s9").style.visibility = "visible";
			document.getElementById("s10").style.visibility = "visible";
			document.getElementById("s11").style.visibility = "visible";

			document.getElementById("s11").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";
			document.getElementById("s6").style.border = "solid #FDFEFE";
			document.getElementById("s7").style.border = "solid #FDFEFE";
			document.getElementById("s8").style.border = "solid #FDFEFE";
			document.getElementById("s9").style.border = "solid #FDFEFE";
			document.getElementById("s10").style.border = "solid #FDFEFE";

			document.getElementById("s12").style.visibility = "hidden";
			
			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var w = document.getElementById("w1").value;
			var z = document.getElementById("z1").value;
			var A = document.getElementById("A").value;
			var B = document.getElementById("B").value;

			var temp = Math.pow(A, w)

			var temp2 = Math.pow(B, z);

			var a1 = temp % n;

			var b1 = temp2 % n;

			document.getElementById("step11").innerHTML = A + "<sup>" + w
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step11_2").innerHTML = a1;

			document.getElementById("step11_3").innerHTML = B + "<sup>" + z
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step11_4").innerHTML = b1;


		}

		function myFunction12() {

			document.getElementById("s1").style.visibility = "visible";
			document.getElementById("s2").style.visibility = "visible";
			document.getElementById("s3").style.visibility = "visible";
			document.getElementById("s4").style.visibility = "visible";
			document.getElementById("s5").style.visibility = "visible";
			document.getElementById("s6").style.visibility = "visible";
			document.getElementById("s7").style.visibility = "visible";
			document.getElementById("s8").style.visibility = "visible";
			document.getElementById("s9").style.visibility = "visible";
			document.getElementById("s10").style.visibility = "visible";
			document.getElementById("s11").style.visibility = "visible";
			document.getElementById("s12").style.visibility = "visible";

			document.getElementById("s12").style.border = "solid #E74C3C"; //red
			document.getElementById("s1").style.border = "solid #FDFEFE";
			document.getElementById("s2").style.border = "solid #FDFEFE";
			document.getElementById("s3").style.border = "solid #FDFEFE";
			document.getElementById("s4").style.border = "solid #FDFEFE";
			document.getElementById("s5").style.border = "solid #FDFEFE";
			document.getElementById("s6").style.border = "solid #FDFEFE";
			document.getElementById("s7").style.border = "solid #FDFEFE";
			document.getElementById("s8").style.border = "solid #FDFEFE";
			document.getElementById("s9").style.border = "solid #FDFEFE";
			document.getElementById("s10").style.border = "solid #FDFEFE";
			document.getElementById("s11").style.border = "solid #FDFEFE";
			
			var n = document.getElementById("n").value;
			var g = document.getElementById("g").value;
			var y = document.getElementById("y1").value;
			var B1 = document.getElementById("B1").value;

			var temp = Math.pow(B1, y)

			var b = temp % n;

			document.getElementById("step12").innerHTML = B1 + "<sup>" + y
					+ "</sup> &nbsp; mod &nbsp;" + n;
			document.getElementById("step12_2").innerHTML = b;
			

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
