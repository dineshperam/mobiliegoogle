<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet"/>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Profile Card</title>
    <style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;500&display=swap");
    :root {
  /*========== Colors ==========*/
  /*Color mode HSL(hue, saturation, lightness)*/
  --first-color: hsl(29, 80%, 58%);
  --first-color-light: hsl(29, 80%, 70%);
  --black-color: hsl(29, 16%, 10%);
  --text-color: hsl(29, 8%, 65%);
  --body-color: hsl(29, 100%, 99%);

  /*========== Font and typography ==========*/
  /*.5rem = 8px | 1rem = 16px ...*/
  --body-font: "Poppins", sans-serif;
  --h3-font-size: 1.125rem;
  --smaller-font-size: 0.75rem;
}
* {
  box-sizing: border-box;
  padding: 0;
  margin: 0;
}

body {
  font-family: var(--body-font);
  background-color: var(--text-color);
}
a {
  text-decoration: none;
}

ul {
  list-style: none;
}

img {
  max-width: 100%;
  height: auto;
}

/*=============== CARD ===============*/
.container {
  height: 100vh;
  margin-inline: 1.5rem;
  display: grid;
  place-items: center;
}

.card {
  position: relative;
  left:13%;
  width: 300px;
  background-color: var(--black-color);
  padding: 1.25rem 2rem 3rem;
  border-radius: 1.5rem;
  text-align: center;
  box-shadow: 0 4px 16px hsla(29, 75%, 8%, 0.2);
}

.card__img {
  width: 120px;
  border-radius: 50%;
}

.card__border {
  width: 130px;
  height: 130px;
  border: 2px solid var(--first-color);
  border-radius: 50%;
  display: grid;
  place-items: center;
  margin: 0 auto 0.75rem;
}

.card__name {
  color: var(--first-color);
  font-size: var(--h3-font-size);
  font-weight: 500;
}

.card__profession {
  color: var(--text-color);
  font-size: var(--h3-font-size);
  font-weight: 500;
}

.card__social {
  width: 220px;
  background-color: var(--first-color);
  padding: 0.75rem;
  border-radius: 3rem;
  text-align: initial;
  box-shadow: 0 8px 24px hsla(29, 75%, 56%, 0.3);
  position: absolute;
  left: 0;
  right: 0;
  bottom: -1.75rem;
  margin: 0 auto;
  overflow: hidden;
  transform-origin: 18px 17px;
}

.card__social-control {
  position: relative;
  transform-origin: 18px 18px;
  transition: transform 0.45s ease;
  transform: rotate(0);
}

.card__social-toggle {
  display: inline-flex;
  background-color: var(--black-color);
  color: var(--first-color);
  font-size: 1.25rem;
  padding: 0.5rem;
  border-radius: 50%;
  cursor: pointer;
  position: relative;
  z-index: 15;
}

.card__social-text {
  display: block;
  color: var(--black-color);
  font-size: var(--smaller-font-size);
  font-weight: 500;
}

.card__social-list {
  display: inline-flex;
  column-gap: 0.95rem;
  transform: rotate(135deg);
  transform-origin: 18px 17px;
}

.card__social-link {
  display: inline-flex;
  background-color: var(--first-color-light);
  color: var(--black-color);
  font-size: 1.25rem;
  padding: 6px;
  border-radius: 50%;
}

.card__social-text,
.card__social-list {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  padding-left: 3.1rem;
}

.card__social-text {
  top: 0.5rem;
}

/* Rotate social */
.animation .card__social-control {
  transform: rotate(-135deg);
}

/* Up animation */
.card__social.animation {
  animation: up-animation 1s ease-in-out forwards;
}

@keyframes up-animation {
  0%,
  100% {
    transform: rotate(0);
  }
  50%,
  60% {
    transform: rotate(-3deg);
  }
  88% {
    transform: rotate(1deg);
  }
}

/* Down animation */
.card__social.down-animation {
  animation: down-animation 1s ease-in-out forwards;
}

@keyframes down-animation {
  0%,
  100% {
    transform: rotate(0);
  }
  50%,
  60% {
    transform: rotate(6deg);
  }
  0%,
  88% {
    transform: rotate(-1deg);
  }
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

<div class="container">
    <div class="card">
      <div class="card__border">
        <img src="https://media.licdn.com/dms/image/v2/D5635AQGURiaZkaWOPQ/profile-framedphoto-shrink_400_400/profile-framedphoto-shrink_400_400/0/1719986672477?e=1728313200&v=beta&t=QfYFE5gEPE89ckMeonkD7sCx_EIDaT5r7wP23yt4Wtc" alt="card image" class="card__img" />
      </div>

      <h3 class="card__name">Dinesh Peram</h3>
      <span class="card__profession">Developer</span>

      <div class="card__social" id="card-social">
        <div class="card__social-control">
          <!-- Toggle Button -->
          <div class="card__social-toggle" id="card-toggle">
            <i class="ri-add-line"></i>
          </div>

          <span class="card__social-text">social networks</span>

          <!-- Card Social -->
          <ul class="card__social-list">
            <a href="https://www.facebook.com/" target="_blank" class="card__social-link">
              <i class="ri-facebook-line"></i>
            </a>

            <a href="https://www.instagram.com/" target="_blank" class="card__social-link">
              <i class="ri-instagram-line"></i>
            </a>

            <a href="https://www.twitter.com/" target="_blank" class="card__social-link">
              <i class="ri-twitter-line"></i>
            </a>
          </ul>
        </div>
      </div>
    </div>
  </div>

  <!--=============== MAIN JS ===============-->
  

<!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script>const showSocial = (toggleCard, socialCard) => {
    	  const toggle = document.getElementById(toggleCard),
    	    social = document.getElementById(socialCard);

    	  toggle.addEventListener("click", () => {
    	    //If animation class exist = down-animaiton class add
    	    if (social.classList.contains("animation")) {
    	      social.classList.add("down-animation");

    	      setTimeout(() => {
    	        social.classList.remove("down-animation");
    	      }, 1000);
    	    }
    	    //Add the animation to the div tag card__social
    	    social.classList.toggle("animation");
    	  });
    	};

    	showSocial("card-toggle", "card-social");</script>
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
 </body>
</html>