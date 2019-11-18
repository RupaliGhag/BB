<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<title>Hello, world!</title>
<style type="text/css">
* {
	font-family: 'Raleway', sans-serif;
}

body {
	background: rgb(162, 45, 238);
	background: linear-gradient(174deg, rgba(162, 45, 238, 1) 0%,
		rgba(91, 112, 191, 1) 100%);
	color: #786fa4;
	overflow-x: hidden;
	font-size: 14px;
}

.h-100vh {
	height: 100vh !important;
}

.card {
	margin: 0 auto;
	max-width: 400px;
	border: none;
	-webkit-box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px
		rgba(0, 0, 0, 0.12), 0 1px 5px 0 rgba(0, 0, 0, 0.2);
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14), 0 3px 1px -2px
		rgba(0, 0, 0, 0.12), 0 1px 5px 0 rgba(0, 0, 0, 0.2);
}

@media only screen and (max-width: 767px) {
	body {
		padding-top: 20px;
	}
	.card {
		max-width: 70%;
	}
}

input[type="checkbox"] {
	display: none;
}

.custom-control-input:checked ~.custom-control-label::before {
	color: #FDFFFC !important;
	border-color: #26A598 !important;
	background-color: #26A598 !important;
}

.text-center {
	color: #FDFFFC !important;
	background-color: #52177A !important;
}

.btn-primary {
	color: #FDFFFC;
	background-color: #8D27D1;
	border-color: #8D27D1;
}

.btn-primary:hover {
	background-color: #a22dee;
	border-color: #a22dee;
}

.card-header.display-4 {
	font-weight: bold;
}
</style>
</head>
<body>

	<div class="container h-100vh">
		<div class="row row h-100 align-items-center justify-content-centerr">
			<div class="col align-self-cente ">
				<div class="card">
					<div class="card-header text-center display-4">Log-In</div>
					<div class="card-body">
						<form action="loginServlet" method="post">
							<div class="form-group">
								<label for="email">Email address</label> <input type="email"
									class="form-control" id="email"  name="name"placeholder="Enter email">
							</div>
							<div class="form-group">
								<label for="password">Password</label> <input type="password"
									class="form-control" id="password" name="pass" placeholder="Password">
								<small><a
									href="https://codepen.io/MKAbuMattar/pen/xxxWmwq?"
									class="form-text text-muted">I do not have an account!</a></small>
							</div>
							<div class="form-group form-check custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="remember-me"> <label class="custom-control-label"
									for="remember-me">Remember me</label>
							</div>
							<button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>