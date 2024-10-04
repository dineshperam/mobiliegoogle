<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


    <title>Cart</title>
    <style>
    	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}
html,
body {
	height: 100%;
}

body {
	margin: 0;
	font-family: sans-serif;
	font-weight: 100;
}

.container {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
}

table {
	width: 800px;
	border-collapse: collapse;
	overflow: hidden;
	box-shadow: 0 0 20px rgba(0,0,0,0.1);
	border-radius:15px;
}

th,
td {
	padding: 15px;
	background-color: rgba(255,255,255,0.2);
	color: #000;
}

th {
	text-align: left;
	color:#fff;
}

thead {
	th {
		background-color: #55608f;
	}
}

tbody {
	tr {
		&:hover {
			background-color: rgba(255,255,255,0.3);
		}
	}
	td {
		position: relative;
		&:hover {
			&:before {
				content: "";
				position: absolute;
				left: 0;
				right: 0;
				top: -9999px;
				bottom: -9999px;
				background-color: rgba(255,255,255,0.2);
				z-index: -1;
			}
		}
	}
}
.nav-link {
  		padding: 15px 20px; /* Adjust padding values as needed */
		}
    </style>
  </head>
  <body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="home.jsp">
    <img src="https://banner2.cleanpng.com/20180423/gkw/avesbl6oq.webp" width="30" height="30" alt="Logo">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="shop.jsp">Add Products</a>
      </li>
    </ul>

    <!-- Push remaining items to the right -->
    <ul class="navbar-nav ml-auto">
      <!-- Search bar with icon -->
      <form class="form-inline my-2 my-lg-0" action='searchprod.jsp'>
        <button class="btn btn-light" type="submit"><i class="fa fa-search"></i></button>
      </form>

      <!-- Icons for Cart and User Profile -->
      <li class="nav-item mx-3">
        <a class="nav-link" href="cart">
			View Products
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile.jsp">
          <img src="https://lh3.googleusercontent.com/a/ACg8ocI9Qjs41nm4kt3_UXPZMMeTsEYUCtApBLrqeottpMMu5XYazP0=s40-c" class="rounded-circle" alt="User Profile">
        </a>
      </li>
    </ul>
  </div>
</nav>

<div class="container">
<table class="table table-bordered">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Product Type</th>
      <th scope="col">Location</th>
      <th scope="col">Manufacturing Date</th>
		<th scope="col">Product Name</th>
		<th scope="col">Product Price</th>
		<th scope="col">Edit</th>
		<th scope="col">Delete</th>
    </tr>
  </thead>
  <tbody>
<c:forEach items="${products}" var="product">
        <tr>
            <td scope="row"><c:out value="${product.id}" /></td>
            <td><c:out value="${product.prodtype}" /></td>
            <td><c:out value="${product.location}" /></td>
            <td><c:out value="${product.mdate}" /></td>
            <td><c:out value="${product.prodname}" /></td>
            <td><c:out value="${product.prodprice}" /></td>
            <td>
                <a href='<c:url value="editprod.jsp">
                            <c:param name="id" value="${product.id}" />
                            <c:param name="prodtype" value="${product.prodtype}" />
                            <c:param name="location" value="${product.location}" />
                            <c:param name="mdate" value="${product.mdate}" />
                            <c:param name="prodname" value="${product.prodname}" />
                            <c:param name="prodprice" value="${product.prodprice}" />
                         </c:url>'>Edit</a>
            </td>
            <td>
                <a href='<c:url value="deleteproduct">
                            <c:param name="id" value="${product.id}" />
                         </c:url>'>Delete</a>
            </td>
        </tr>
    </c:forEach>
  </tbody>

</table>
</div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>