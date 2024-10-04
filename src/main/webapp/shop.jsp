<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String status=(String)request.getAttribute("status"); %>    
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
    <title>Shop</title>
    <style>
    .nav-link {
  		padding: 15px 20px; /* Adjust padding values as needed */
		}
	
	* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background-color: #f8f9fa;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.container {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 100%;
    height: 80%;
}

.form-box {
    background-color: #fff;
    padding: 40px;
    border-radius: 10px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    text-align: center;
    width: 450px;
}

.form-box h1 {
    font-size: 24px;
    margin-bottom: 20px;
}

.form-box p {
    padding: 1%;
    font-size: 16px;
    margin-bottom: 30px;
    color: #ffffff;
    background-color: red;
}
.extra {
    background-color: #000000;
    padding: 1%;
}

.form-box .input-row {
    margin-bottom: 20px;
    text-align: left;
}

.form-box .input-row-inline {
    text-align: left;
    display: flex;
    justify-content: space-between;
    margin-bottom: 20px;
}

.form-box .input-col {
    width: 48%;
}

.form-box .input-row label,
.form-box .input-col label {
    display: block;
    font-size: 14px;
    margin-bottom: 8px;
    color: #555;
}

.form-box select,
.form-box input {
    width: 100%;
    padding: 10px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 5px;
}

.form-box button {
    background-color: #ffffff;
    color: rgb(0, 0, 0);
    padding: 12px 20px;
    font-size: 16px;
    border: 2px solid black;
    border-radius: 5px;
    cursor: pointer;
    width: 100%;
    margin-top: 20px;
}

.form-box button:hover {
    background-color: #ececec;
}

.form-box a {
    display: block;
    margin-top: 20px;
    color: #1a73e8;
    font-size: 14px;
    text-decoration: none;
}

.form-box a:hover {
    text-decoration: underline;
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

<%if(status != null){ %>
		<div class="alert alert-warning alert-dismissible fade show" role="alert">
  <strong> <%= status %> </strong> Checkout other Products.
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
</div>
		<%} %>

<div class="container">
        <div class="form-box">
            <h1>Add a Product !!</h1>
            <form action='saveproduct'>
                <div class="input-row">
                    <label for="prodtype">Select Product Type</label>
                    <select id="prodtype" name="prodtype">
                        <option value="">Choose Type</option>
                            <option value="Phones">Phones</option>
                            <option value="Watches">Watches & Trackers</option>
                            <option value="TVs">TVs</option>
                            <option value="Laptops">Laptops</option>
                            <option value="Speakers">Speakers</option>
                        </select>
                </div>

                <div class="input-row-inline">
                    <div class="input-col">
                        <label for="location">Manufacturing Location</label>
                        <input type="text" id="location" name="location" placeholder="Enter Location">    
                    </div>

                    <div class="input-col">
                        <label for="mdate">Manufacturing Date</label>
                        <input type="date" id="mdate" name="mdate" placeholder="Select date">
                    </div>
                </div>

                <div class="input-row-inline">
                    <div class="input-col">
                        <label for="prodname">Enter Product Name</label>
                        <input type="text" id="prodname" name="prodname" placeholder="Enter product name">
                    </div>

                    <div class="input-col">
                        <label for="prodprice">Enter Price</label>
                        <input type="text" id="prodprice" name="prodprice" placeholder="Enter price">
                    </div>
                </div>

          <button type="submit">Add Products</button>
            </form>
            <a href="#">Know More</a>
        </div>
    </div>
   
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>