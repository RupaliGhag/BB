<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

 
  </head>
<body>
<% String msg=(String)request.getAttribute("lmsg"); 
if(msg!=null){%>
<h2 align="center" style="color: red;"><%=msg %></h2>
<%} %>
	<%
		String uname = (String) session.getAttribute("userName");
		String admin = (String) session.getAttribute("adminName");
	%>
<!-- navBar -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">Budge-Buddy </a>
<!--   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button> -->
<%if(uname==null && admin==null) {%>
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="login.jsp">Login</a>
      </li>
             <li class="nav-item">
        <a class="nav-link " href="Registration.jsp">Registration</a>
      </li>
      <%} %>
      <%if(admin!=null) {%>
     
         <li>
        <a class="nav-link" href="userList.jsp">UserList</a>
      </li><%} %>
      
            <%if(uname!=null) {%>

       <li>
        <a class="nav-link " href="addIncome.jsp">AddIncome</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="incomeServlet">IncomeList</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="addExpenses.jsp">AddExpenses</a>
      </li>
       <li class="nav-item">
        <a class="nav-link " href="ExpenseServlet">ExpensesList</a>
      </li>
      <%} %>
      <%if(uname!=null || admin!=null) {%>
      <li >
        <a class="nav-link " href="loginServlet">LogOut</a>
      </li>
      <%} %>
     
    </ul>
    <!-- <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form> -->
  </div>
</nav>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>