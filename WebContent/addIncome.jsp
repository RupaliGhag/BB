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
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Budge-Buddy </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
      </li>
       <li class="nav-item">
        <a class="nav-link disabled" href="Registration.jsp">Registration</a>
      </li>
         <li class="nav-item">
        <a class="nav-link" href="userList.jsp">UserList</a>
      </li>
       <li class="nav-item">
        <a class="nav-link disabled" href="addIncome.jsp">AddIncome</a>
      </li>
       <li class="nav-item">
        <a class="nav-link disabled" href="#">IncomeList</a>
      </li>
       <li class="nav-item">
        <a class="nav-link disabled" href="addExpenses.jsp">AddExpenses</a>
      </li>
       <li class="nav-item">
        <a class="nav-link disabled" href="#">ExpensesList</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">LogOut</a>
      </li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>
	<div class="container h-100vh">
		<div class="row row h-100 align-items-center justify-content-centerr">
			<div class="col align-self-cente ">
				<div class="card">
					<div class="card-header text-center display-4">Add Income</div>
					<div class="card-body">
						<form action ="#" method="post">
								<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Email</label> <input
										type="email" class="form-control"  name="email"
										>
								</div>
							</div>
							
								<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Income</label> <input
										type="text" class="form-control"  name="income"
										>
								</div>
							</div>
							
								<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Income Type</label> <input
										type="text" class="form-control"  name="incomeType"
										>
								</div>
							</div>
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputPassword4">Income Date</label> <input
										type="date" class="form-control"  name="incomeDate"
										>
								</div>
							</div>
							
							
					
						
							
							<button type="submit" class="btn btn-primary btn-lg btn-block">SAVE
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

	

</body>
</form>
</html>