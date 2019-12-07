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
	max-width: 700px;
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
		width: 100%;
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
<form action="userServlet" method="post">
<body>

<jsp:include page="NavBar.jsp"></jsp:include>

	<div class="container h-100vh">
		<div class="row row h-100 align-items-center justify-content-centerr">
			<div class="col align-self-cente ">
				<div class="card">
					<div class="card-header text-center display-4">Register</div>
					<div class="card-body">
						<form>
							<div class="form-row">
								<div class="form-group col-md-4">
									<label for="firstName">Name</label> <input type="text"
										class="form-control" id="firstName" placeholder="Name" name="Name">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input
										type="email" class="form-control"  name="email"
										>
								</div>
							</div>
							<div class="form-row">	
								<div class="form-group col-md-4">
									<label for="phonenumber">Phone Number</label> <input
										type="number" class="form-control" id="phonenumber" name="phonenum"
										placeholder="Phone Number">
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Password</label> <input
										type="password" class="form-control" id="inputPassword4" name="pass"
										placeholder="Password">
								</div>
							</div>
							<div class="form-group">
								<small><a
									href="login.jsp"
									class="form-text text-muted">I have an account!</a></small>
							</div>
							<button type="submit" class="btn btn-primary btn-lg btn-block">Registration
								</button>
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

	<script type="text/javascript">
		var months = [ 'January', 'February', 'March', 'April', 'May', 'June',
				'July', 'August', 'September', 'October', 'November',
				'December' ];

		function daysInMonth(month, year) {
			return new Date(year, month, 0).getDate();
		}

		function populateDates() {
			var today = new Date(), day = today.getUTCDate(), month = today
					.getUTCMonth(), year = today.getUTCFullYear(), daysInCurrMonth = daysInMonth(
					month, year);

			// Year
			for (var i = 0; i < 100; i++) {
				var opt = document.createElement('option');
				opt.value = year - i;
				opt.text = year - i;
				yeardropdown.appendChild(opt);
			}

			// Month
			for (var i = 0; i < 12; i++) {
				var opt = document.createElement('option');
				opt.value = months[i];
				opt.text = months[i];
				monthdropdown.appendChild(opt);
			}

			// Day
			for (var i = 0; i < daysInCurrMonth; i++) {
				var opt = document.createElement('option');
				opt.value = i + 1;
				opt.text = i + 1;
				daydropdown.appendChild(opt);
			}
		}

		var daydropdown = document.getElementById("daydropdown"), monthdropdown = document
				.getElementById("monthdropdown"), yeardropdown = document
				.getElementById("yeardropdown");

		// Change handler for months
		monthdropdown.onchange = function() {
			var newMonth = months.indexOf(monthdropdown.value) + 1, newYear = yeardropdown.value;

			daysInCurrMonth = daysInMonth(newMonth, newYear);

			daydropdown.innerHTML = "";
			for (var i = 0; i < daysInCurrMonth; i++) {
				var opt = document.createElement('option');
				opt.value = i + 1;
				opt.text = i + 1;
				daydropdown.appendChild(opt);
			}
		}
		populateDates()

		


		function populateStates(countryElementId, stateElementId) {

			var selectedCountryIndex = document
					.getElementById(countryElementId).selectedIndex;
			var stateElement = document.getElementById(stateElementId);
			stateElement.length = 0; // Fixed by Julian Woods
			stateElement.options[0] = new Option('Select State', '');
			stateElement.selectedIndex = 0;

			var state_arr = s_a[selectedCountryIndex].split("|");

			for (var i = 0; i < state_arr.length; i++) {
				stateElement.options[stateElement.length] = new Option(
						state_arr[i], state_arr[i]);
			}
		}

		function populateCountries(countryElementId, stateElementId) {
			// given the id of the <select> tag as function argument, it inserts <option> tags
			var countryElement = document.getElementById(countryElementId);
			countryElement.length = 0;
			countryElement.options[0] = new Option('Select Country', '-1');
			countryElement.selectedIndex = 0;
			for (var i = 0; i < country_arr.length; i++) {
				countryElement.options[countryElement.length] = new Option(
						country_arr[i], country_arr[i]);
			}

			// Assigned all countries. Now assign event listener for the states.

			if (stateElementId) {
				countryElement.onchange = function() {
					populateStates(countryElementId, stateElementId);
				};
			}
		}
		populateCountries("country", "state");
	</script>

</body>
</form>
</html>