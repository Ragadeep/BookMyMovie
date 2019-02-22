<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* style the container */
.container {
	position: relative;
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px 0 30px 0;
}

/* style inputs and link buttons */
input, .btn {
	width: 100%;
	padding: 12px;
	border: none;
	border-radius: 4px;
	margin: 5px 0;
	opacity: 0.85;
	display: inline-block;
	font-size: 17px;
	line-height: 20px;
	text-decoration: none; /* remove underline from anchors */
}

input:hover, .btn:hover {
	opacity: 1;
}

.twitter {
	background-color: #808080;
	color: black;
}

/* style the submit button */
input[type=submit] {
	background-color: #4CAF50;
	color: white;
	cursor: pointer;
}

input[type=submit]:hover {
	background-color: #45a049;
}

/* Two-column layout */
.col {
	float: left;
	width: 50%;
	margin: auto;
	padding: 0 50px;
	margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
	content: "";
	display: table;
	clear: both;
}

/* vertical line */
.vl {
	position: absolute;
	left: 50%;
	transform: translate(-50%);
	border: 2px solid #ddd;
	height: 175px;
}

/* text inside the vertical line */
.vl-innertext {
	position: absolute;
	top: 50%;
	transform: translate(-50%, -50%);
	background-color: #f1f1f1;
	border: 1px solid #ccc;
	border-radius: 50%;
	padding: 8px 10px;
}

/* hide some text on medium and large screens */
.hide-md-lg {
	display: none;
}

/* bottom container */
.bottom-container {
	text-align: center;
	background-color: #666;
	border-radius: 0px 0px 4px 4px;
}

/* Responsive layout - when the screen is less than 650px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 650px) {
	.col {
		width: 100%;
		margin-top: 0;
	}
	/* hide the vertical line */
	.vl {
		display: none;
	}
	/* show the hidden text on small screens */
	.hide-md-lg {
		display: block;
		text-align: center;
	}
}
</style>
</head>
<body>
<h1>${message}</h1>
	<h2>Login Form</h2>
	<div class="container">
		<form action="/validateLogin">
			<div class="row">
				<h2 style="text-align: center">Login with Social Media or
					Manually</h2>
				<div class="vl">
					<span class="vl-innertext">or</span>
				</div>

				<div class="col">

					<a href="#" class="twitter btn"> <i class="fa fa-github fa-fw"></i>
						Login with github
					</a>


				</div>

				<div class="col">
					<div class="hide-md-lg">
						<p>Or sign in manually:</p>
					</div>
					<form>
						<input type="text" name="contactNumber" placeholder="phoneNumber"
							required> <input type="password" name="password"
							placeholder="password" required> <input type="submit"
							value="Login" >
						
					</form>
				</div>
			</div>
		</form>
	</div>

	<div class="bottom-container">
		<div class="row">
			<div class="col">
				<a href="/signup" style="color: white" class="btn">Sign up</a>
			</div>
			<div class="col">
				<a href="Forgotpwd.html" style="color: white" class="btn">Forgot
					password?</a>
			</div>
		</div>
	</div>

</html>