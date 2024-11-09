<%@page import="com.jsp.App.entity.MenProduct"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MEN PAGE</title>
<link rel="stylesheet" href="Men.css"></link>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.15.4/css/all.css">
<link>
<style type="text/css">
#box {
	height: 30px;
	display: flex;
	cursor: pointer;
	padding: 10px 10px;
	background-color: #E3E6F3;
	border-radius: 30px;
	align-items: center;
	box-shadow: 0 10px 25px rgb(0, 0, 0, 0.03);
}

#box:hover {
	box-shadow: 2px 2px 15px 4px rgba(0, 0, 0, 0.45), 25px 0px 20px -20px
		rgba(0, 0, 0, 0.45), 0px 25px 20px -20px rgba(0, 0, 0, 0.45), -25px
		0px 20px -20px rgba(0, 0, 0, 0.45);
}

#box:hover input {
	width: 200px;
}

#box input {
	width: 0;
	outline: none;
	border: none;
	font-weight: 500;
	transition: 0.8s;
	background: transparent;
}
button {


    background-color: #E3E6F3;
	border: hidden;
}
#detailes{
position: absolute;

right:10px;
}

</style>
</head>
<body>
	<section id="header">
		<a href="#"><img src="logoimg.png" class="logo"></a>
		<div>
			<ul id="navbar">
				<li><a href="/">Home</a></li>
				<li><a href="/mens">Men</a></li>
				<li><a href="/womenPage">Women</a></li>
				<li><div id="box">
						<input type="text" placeholder="Search....."><img
							id="search" src="search.png">
					</div></li>
					
				<li><a href="/loginPage"><img id="profile"
						src="profile.png"></a></li>
						
				<li><a href="/displayCarts"><img id="cart" src="cart-icon.png"></a></li>
			</ul>
		</div>
	</section>
	<section id="bar">
		<span>MEN</span>
	</section>
	<div class="slideshow-container">

		<div class="mySlides fade">
			<div class="numbertext">1 / 3</div>
			<img src="0.png" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">2 / 3</div>
			<img src="1.png" style="width: 100%">
		</div>

		<div class="mySlides fade">
			<div class="numbertext">3 / 3</div>
			<img src="2.png" style="width: 100%">
		</div>

	</div>
	<br>

	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>

	<section id="product1">
		<h2>Featured Products</h2>
		<p>Different Collecctions Of Different Models</p>
		<div id="pro-container">
			
			
			<!-- <div class="pro">

				<img src="Products\f1.jpg">
				<div id="des">
					<span>Adidas</span>
					<h5>Printed Shirt</h5>
					<h4>Rs999/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f2.jpg">
				<div id="des">
					<span>Adidas</span>
					<h5>Fancy Shirt</h5>
					<h4>Rs1999/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f3.jpg">
				<div id="des">
					<span>Timeless</span>
					<h5>Slimfit Shirt</h5>
					<h4>Rs550/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f7.jpg">
				<div id="des">
					<span>Rowdy</span>
					<h5>Womens Soft Peach Trouser</h5>
					<h4>Rs900/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f4.jpg">
				<div id="des">
					<span>Venom</span>
					<h5>Printed Shirt</h5>
					<h4>Rs1400/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f5.jpg">
				<div id="des">
					<span>Galaxy</span>
					<h5>Gray Shirt Cotton</h5>
					<h4>Rs2400/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f6.jpg">
				<div id="des">
					<span>Fireflies</span>
					<h5>Multi Color</h5>
					<h4>Rs1700/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div>
			<div class="pro">
				<img src="Products\f8.jpg">
				<div id="des">
					<span>Adidas</span>
					<h5>Printed Shirt</h5>
					<h4>Rs400/-</h4>
					<a href="#"><img src="cart-icon.png"></a>
				</div>
			</div> -->
			
			
			<%
									List<MenProduct> li = (List)request.getAttribute("menProducts");
																	  for(MenProduct mp : li)
																	  {
									%>
			<div class="pro">
				<img src="<%=mp.getFilePath() %>" name="path">
				<div id="des">
					<span><%=mp.getCompanyName() %></span>
					<h5><%=mp.getTypeOfCloth()%></h5>
					<h4><%=mp.getPrice() %></h4>	
						
	      			<form action="addMen">
					  <input hidden="true" value=<%=mp.getId() %>  name="id">
					   <div id="detailes"><a href="#"><button><img src="cart-icon.png" id="button-img"></button></a></div> 
					</form>
					
				</div>
			</div>
			  <%
			}
			  %>
		</div>
	</section>
	<section id="banner">
		<h4>Repair Services</h4>
		<h2>
			Up to<span>70% OFF</span>-All t-shirts & Accessories
		</h2>
		<button class="normal">Explore More</button>
	</section>
	<footer class="foot">
		<div class="col">
			<img src="logoimg.png">
			<h4>Contact Us</h4>
			<p>
				<strong>Address:</strong>Plot no 188,JNTU,Hyderabad
			</p>
			<p>
				<strong>Phone:</strong>+91 919133445566
			</p>
			<p>
				<strong>Hours:</strong>10:00 - 18:00, Mon - Sat
			</p>
		</div>
		<div class="follow">
			<h4>Follow Us</h4>
			<a href=""><img src="facebook.png"></a> <a href=""><img
				src="instagram.png"></a> <a href=""><img src="snap.png"></a>
			<a href=""><img src="youtube.png"></a> <a href=""><img
				src="twitter.png"></a>
		</div>
		<div class="col2">
			<h4>My Account</h4>
			<a href="#">Sing In</a> <a href="#">View Cart</a> <a href="#">My
				Wishlist</a> <a href="#">Track My Order</a> <a href="#">Help</a>
		</div>
		<div id="col3">
			<h4>Secured Payment Gateways</h4>
			<img src="pay.png">
		</div>
	</footer>




	<script>
		let slideIndex = 0;
		showSlides();

		function showSlides() {
			let i;
			let slides = document.getElementsByClassName("mySlides");
			let dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
</body>
</html>