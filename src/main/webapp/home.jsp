<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    

    <title>MyStore</title>
    <style>
	  .nav-link {
  		padding: 15px 20px; /* Adjust padding values as needed */
		}
	  body {
    font-family: Arial, sans-serif;
    text-align: center;
}

.pixel-container {
	background-color:#f5f3ef;
    margin: 0;
}

.pixel-container h1 {
	color: #3385ff;
    font-size: 36px;
    padding-top:40px;
    margin-bottom: 10px;
}

.pixel-container p {
    font-size: 18px;
    margin-bottom: 20px;
}

.pixel-container button {
    padding: 5px 20px;
    font-size: 18px;
    color: black;
    border: 2px solid black;
    cursor: pointer;
    border-radius: 10px;
}

.pixel-container .image-container {
    margin-top: 20px;
}

.pixel-container img {
    max-width: 100%;
    height: auto;
}
.reco {
    font-family: Arial, sans-serif;
    background-color: #f9f9f9;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.card-container {
    text-align: center;
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

h1 {
    margin-bottom: 30px;
}

.recommendations {
    display: flex;
    gap: 20px;
    justify-content: center;
    flex-wrap: wrap;
}

.card {
    background-color: white;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    padding: 15px;
    text-align: center;
    width: 210px;
    transition: transform 0.3s ease;
}

.card:hover {
    transform: scale(1.05);
}

.card img {
    width: 100%;
    border-radius: 10px;
}

.new-badge {
    background-color: #f0f0f5;
    border-radius: 20px;
    font-size: 12px;
    color: #0070f3;
    display: inline-block;
    padding: 5px 10px;
    margin: 10px 0;
    width:40%;
}

p {
    font-size: 16px;
    color: #333;
}

.bigcard {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            margin: 0;
            padding: 0;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
.bigcard-container {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 20px;
        }
        .bigcard-container h1 {
            width: 100%;
            font-size: 2.5rem;
            font-weight: bold;
            color: #333;
        }

        .product-card {
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            flex-direction: column;
            background-color: #fafafa;
            border-radius: 10px;
            width: 500px;
            margin: 0 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .product-card img {
             width: 100%;
            margin-top: 20px;
            transform: translateY(5%);
        }

        .product-card h2 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .product-card p {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }

        .product-card a {
            border:2px solid black;
            color: #000;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .product-card a:hover {
            background-color: #555;
        }

/* Media Query for smaller screens */
@media (max-width: 768px) {
    .recommendations {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 15px;
    }
    .bigcard-container {
                flex-direction: column;
            }

    .card {
        width: 100%;
    }
}

@media (max-width: 480px) {
    .recommendations {
        grid-template-columns: 1fr;
    }
}
	  
    </style>
  </head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">
    <img src="https://banner2.cleanpng.com/20180423/gkw/avesbl6oq.webp" width="30" height="30" alt="Logo">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="shop.jsp">Shop Products</a>
      </li>
    </ul>

    <!-- Push remaining items to the right -->
    <ul class="navbar-nav ml-auto">
      <!-- Search bar with icon -->
      <form class="form-inline my-2 my-lg-0">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-light" type="submit"><i class="fa fa-search"></i></button>
      </form>

      <!-- Icons for Cart and User Profile -->
      <li class="nav-item mx-3">
        <a class="nav-link" href="cart">
          <i class="fa fa-shopping-cart" style="font-size: 1.5rem;"></i>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="profile.jsp">
          <img src="https://via.placeholder.com/30" class="rounded-circle" alt="User Profile">
        </a>
      </li>
    </ul>
  </div>
</nav>


<section>
<div class="pixel-container">
    <h1>Oh hi, This is Dinesh. </h1>
    <p>Meet the new Pixel 9 Pro XL, Pixel 9 Pro, Pixel 9, and Pixel 9 Pro Fold with Gemini.</p>
    <p>Stock subject to availability with the retailer.</p>
    <button>Browse Phones</button>
    <div class="image-container">
      <img src="https://lh3.googleusercontent.com/bA0wByW6n_bfDApwv_b3o8TRTT_ZiXuqg1qanoNfDvr6v1Za8zgR5wnoeseiXci69VqhXWnRLRa138lEq8MENa6b-9C-McxMLi8=rw-e365-nu-w2300" alt="Pixel 9 Series">
    </div>
  </div>
</section>

<section class="reco">
<div class="card-container">
        <h1>Our Top Recommendations.</h1>
        <div class="recommendations">
            <div class="card">
                <img src="https://lh3.googleusercontent.com/Pn6gWhoGgOWaR5vHJ0v0gN4Ag2s42wwHhFyKfvYCyaR3cavQ4sTSQknSnUhooc_aMbp_1JHFI_P8fpND3n4Jyu53aXLiFzR3GZo=rw-e365-w1200" alt="Pixel 9 Pro and Pro XL">
                <p class="new-badge">New</p>
                <p>Pixel 9 Pro and Pro XL</p>
            </div>
            <div class="card">
                <img src="https://lh3.googleusercontent.com/qdVzknB7ZFrwcDS1ch2d8GbJLzQtcglQiLeBFfoptCWfUggG_WNVASwpdOp8CXJvsJgYmq4Hf6y1VPnxIhpgsU3bS_w1RdZgDg=rw-e365-w1200" alt="Pixel 9">
                <p class="new-badge">New</p>
                <p>Pixel 9</p>
            </div>
            <div class="card">
                <img src="https://lh3.googleusercontent.com/2QyyUaIGWLVjIFGtmDbN50p99uxfsS-Wdy6KNPwc3H6aSTE0gYpoPhxp6NigRq5lb-jIvXS7PNXP4rWuQec_88wm6MiWLULZ1wEz=rw-e365-w1200" alt="Pixel 9 Pro Fold">
                <p class="new-badge">New</p>
                <p>Pixel 9 Pro Fold</p>
            </div>
            <div class="card">
                <img src="https://lh3.googleusercontent.com/lr7n7GAwPgruwHmsM6zNwGs5DiOaj8udTXdP9A-GCEzeQdTtix1j_Wx41tXGHvGT-d4VgaAN_DmZWKniZTWRKmhSvlqtli5UePdY=rw-e365-w1200" alt="Pixel Watch 3">
                <p class="new-badge">New</p>
                <p>Pixel Watch 3</p>
            </div>
            <div class="card">
                <img src="https://lh3.googleusercontent.com/Q9qx3cQq7CqhFrEx_hFrXGpDOwexVFu2hsaN28lszpZ3l4thqlL6af5Spz4lm9fQpPGcw3AyqLafKtLhKPz8PmUuQlZ_vdigXNw=rw-e365-w1200" alt="Pixel Buds Pro 2">
                <p class="new-badge">New</p>
                <p>Pixel Buds Pro 2</p>
            </div>
        </div>
    </div>
</section>

<section class="bigcard">
<h1>Upcoming Products</h1>
<div class="bigcard-container">
        <div class="product-card">
            <h2>Nest Mini (2nd gen)</h2>
            <p>Still mini. Even more mighty.</p>
            <a href="#">Learn more</a><div>
            <img src="https://lh3.googleusercontent.com/yK16pL9N_I5uCale7m5dxPnnfd0fHI--uJHGIWMmU-KXW1Omvw3vCqDvr3r-nyX9Xn2W1Q4XvA4YshYytgyM9jLuJ6jxAtytoyc=rw-e365-w1200" alt="Nest Mini">
        </div></div>
        <div class="product-card">
            <h2>Nest Audio</h2>
            <p>Amazing sound. At your command.</p>
            <a href="#">Learn more</a><div>
            <img src="https://lh3.googleusercontent.com/yK16pL9N_I5uCale7m5dxPnnfd0fHI--uJHGIWMmU-KXW1Omvw3vCqDvr3r-nyX9Xn2W1Q4XvA4YshYytgyM9jLuJ6jxAtytoyc=rw-e365-w1200" alt="Nest Audio">
        </div></div>
    </div>
</section>
		    

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>