<!DOCTYPE html>

<%@page import="com.jsp.App.entity.Cart"%>
<%@page import="java.util.List"%>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Order Details</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	background-color: #d7f7ff;
	font-family: Arial, Helvetica, sans-serif;
	display: flex;
	align-items: center;
}

.wrapper {
	background-color: #fff;
	width: 500px;
	padding: 25px;
	margin: 25px auto 0;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
	border-radius: 10px;
}

.wrapper2 {
	background-color: #fff;
	width: 500px;
	padding: 25px;
	margin: 25px auto 0;
	box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.5);
	border-radius: 10px;
	height: 540px;
}

.wrapper h2, .wrapper2 h2 {
	background-color: #fcfcfc;
	color: #21cdd3;
	font-size: 24px;
	padding: 10px;
	margin-bottom: 8px;
	text-align: center;
	border: 1px dashed #21cdd3;
}

.wrapper h4 {
	padding-bottom: 5px;
	color: #21cdd3;
}

.input_group {
	margin-bottom: 8px;
	width: 100%;
	position: relative;
	display: flex;
	flex-direction: row;
	padding: 5px 0;
}

.input_box {
	width: 100%;
	margin-right: 12px;
	position: relative;
}

.input_box:last-child {
	margin-right: 0;
}

.input_box .name {
	padding: 14px 10px 14px 50px;
	width: 100%;
	background-color: #fcfcfc;
	border: 1px solid #0003;
	outline: none;
	letter-spacing: 1px;
	transition: 0.3s;
	border-radius: 3px;
	color: #333;
}

.input_box .name:focus, .dob:focus {
	-webkit-box-shadow: 0 0 2px 1px #21cdd3;
	-moz-box-shadow: 0 0 2px 1px #21cdd3;
	box-shadow: 0 0 2px 1px #21cdd3;
	border: 1px solid #21cdd3;
}

.input_box .icon {
	width: 48px;
	display: flex;
	justify-content: center;
	align-items: center;
	position: absolute;
	top: 0px;
	left: 0px;
	bottom: 0px;
	color: #333;
	background-color: #f1f1f1;
	border-radius: 2px 0 0 2px;
	transition: 0.3s;
	font-size: 20px;
	pointer-events: none;
	border: 1px solid #00000003;
	border-right: none;
}

.name:focus+.icon {
	background-color: #21cdd3;
	color: #fff;
	border-right: 1px solid #21cdd3;
	border: none;
	transition: 1s;
}

.dob {
	width: 30%;
	padding: 14px;
	text-align: center;
	background-color: #fcfcfc;
	transition: 0.3s;
	outline: none;
	border: 1px solid #c0bfbf;
	border-radius: 3px;
}

.radio {
	display: none;
}

.input_box label {
	width: 50%;
	padding: 13px;
	background-color: #fcfcfc;
	display: inline-block;
	float: left;
	text-align: center;
	border: 1px solid #c0bfbf;
}

.input_box label:first-of-type {
	border-top-left-radius: 3px;
	border-bottom-right-radius: 3px;
	border-right: none;
}

.input_box label:last-of-type {
	border-top-right-radius: 3px;
	border-bottom-right-radius: 3px;
}

.radio:checked+label {
	background-color: #21cdd3;
	color: #fff;
	transition: 0.5s;
}

.input_box button {
	width: 100%;
	background-color: #21cdd3;
	border: none;
	color: #fff;
	padding: 15px;
	border-right: 4px;
	font-size: 16px;
	transition: all 0.3s ease;
	border-radius: 8px;
}

.input_box button:hover {
	cursor: pointer;
	background-color: #05b1a3;
}

#product1 {
	text-align: center;
	padding: 40px 50px;
}

.wrapper2 h2 {
	text-align: center;
	margin-top: 0px;
}

#product1 #pro-container {
	display: flex;
	justify-content: space-between;
	padding-top:0px;
	flex-wrap: wrap;
	padding-left: 50px;
	padding-bottom: 30px;
}

#product1 .pro {
	width: 23%;
	min-width: 250px;
	padding: 10px 12px;
	border: 1px solid #cce7d0;
	border-radius: 5px;
	cursor: pointer;
	box-shadow: 20px 20px 30px rgb(0, 0, 0, 0.02);
	margin: 15px 0;
	transition: 0.2s ease;
}

#product1 .pro:hover {
	box-shadow: 20px 20px 30px rgb(0, 0, 0, 0.06);
}

#product1 .pro img {
	width: 100%;
	border-radius: 10px;
}

#product1 #des a img {
	width: 50px;
	height: 50px;
	position: absolute;
	bottom: 20px;
	right: 10px;
}

#product1 .details {
	width: 100%;
	height: 100px;
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding-bottom: 40px;
}
#detailsleft{
display: flex;
flex-direction:column;
align-items: flex-start;
}
#detailsleft h4{
  color: darkslategray;
  
}
#detailsright{
display: flex;
flex-direction:column;
align-items: flex-end;
}
#detailsright h6{
	padding: 2px;
	color: cornflower
	blue;
}
</style>
</head>

<body>
	<div class="wrapper">
		<h2>Delivery Address</h2>
		<form action="pay" method="post">
			<h4>Account</h4>
			<div class="input_group">
				<div class="input_box">
					<input type="text" placeholder="Full Name" name="name" required class="name">
				</div>
				<div class="input_box">
					<input type="number" placeholder="Mobile Number" name="mobile" required
						class="name">
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="email" placeholder="Email Address" name="mail" required
						class="name">
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="text" placeholder="Address" name="address" required class="name">
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<input type="text" placeholder="City" name="city" required class="name">
				</div>
			</div>

			<div class="input_group">
				<div class="input_box">
					<h4>Date Of Birth</h4>
					<input type="text" placeholder="DD" name="dob" required class="dob"> 
					<input type="text" placeholder="MM" required class="dob"> 
					<input type="text" placeholder="YYYY" required class="dob">
				</div>
				<div class="input_box">
					<h4>Gender</h4>
					<input type="radio" name="gender" class="radio" id="b1" checked>
					<label for="b1">Male</label> <input type="radio" name="gender"
						class="radio" id="b2"> <label for="b2">Female</label>
				</div>
			</div>
			<div class="input_group">
				<div class="input_box">
					<button type="submit">Proceed To Checkout</button>
				</div>
			</div>
		</form>
	</div>
	<div class="wrapper2">
		<h2>Order Details</h2>
		<section id="product1">
			
			<%
						Cart cart = (Cart)request.getAttribute("orderCart");
						%>
			
			<div id="pro-container">
				<div class="pro">
					<img src="<%=cart.getFilePath() %>" name="path">
				</div>
			</div>
			<div class="details">
				<div id="detailsleft">
					<h4>Brand Name</h4>
					<h4>Price</h4>
					<h4>Delivery Charges</h4>
					<br>
					<h4 style="color: red">Total Amount</h4>
				</div>
				<div id="detailsright">
					<h6><%=cart.getCompanyName() %></h6>
					<h6>RS<%=cart.getPrice() %>/-</h6>
					<h6>Free Delivery</h6>
					<br>
					<h5 style="color: red">RS <%=cart.getPrice() %>/-</h5>
					
				</div>
			</div>
		</section>
	</div>
</body>

</html>