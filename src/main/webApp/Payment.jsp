<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Roboto', sans-serif;
	color: #444;
}

body {
	height: 100vh;
	display: flex;
	align-items: center;
	justify-content: center;
	background-color: #44b09e;
background-image: linear-gradient(315deg, #44b09e 0%, #e0d2c7 74%);
	
}

.container {
	display: flex;
	width: 67%;
	border: 1px solid black;
	border-radius: 7px;
}

.left {
	width: 25%;
	font-weight: bold;
}

.left p {
	padding: 30px 20px;
	color: black;
	text-decoration:inherit;
	text-shadow:5px 5px 9px deeppink;
	letter-spacing: 2px;
}

.methods {
	padding: 10px 0;
}

.methods div {
	padding: 7px 20px;
	cursor: pointer;
	font-size: 15px;
	color: darkviolet;
}

.methods div:hover {
	box-shadow: 0 0 10px rgba(172, 255, 47, 0.196);
	color: midnightblue;
}

.methods div::after {
	content: '';
	display: inline-block;
	color: #aaa;
	width: 0;
	height: 0;
	border-color: transparent;
	border-style: solid;
	border-width: 4px 0 4px 4px;
	border-left-color: var(--fondy-success);
	margin-left: 10px;
}


.center {
	width: 50%;
	border-right: 1px solid black;
	border-left: 1px solid black;
	height: 70vh;
}

.center a {
	width: 100%;
	padding: 15px;
	display: flex;
	justify-content: center;
	align-items: center;
}

.details {
	padding: 20px 20px;
}

.card-details {
	padding: 20px 80px;
}
.card-details p {
	color: black;
}

.card-details .c-number {
	width: 100%;
	border: 1px solid black;
	border-radius: 3px;
	padding: 0 12px;
	margin-top: 10px;
	height: 50px;
	display: flex;
	align-items: center;
	justify-content: space-between;
}

input {
	border: none;
	border-radius: 3px;
	outline: none;
}

.c-details {
	display: flex;
	width: 100%;
	justify-content: space-between;
	margin: 20px 0;
}

.cc-exp {
	border: 1px solid black;
	border-radius: 3px;
	height: 50px;
	margin-top: 10px;
	padding: 12px;
	width: 150px;
	background-color: transparent;
}
.cc-number{
	background-color: transparent;
}
.c-details .cvv-box {
	border: 1px solid black;
	margin-top: 10px;
	padding: 12px;
	height: 50px;
	border-radius: 3px;
	display: flex;
	justify-content: space-between;
	width: 108px;
}

.cc-cvv {
	width: 60px;
	background-color: transparent;
}

button {
	width: 100%;
	border: none;
	height: 50px;
	border-radius: 3px;
	margin-top: 30px;
	font-size: 18px;
	color: pink;
	background-color: navy;
}

button:hover {
	background-color: #444;
	color: white;
	cursor: pointer;
}

.right {
	width: 25%;
}

.right a img {
	width: 50%;
	height: auto;
	padding-top: 40px;
	padding-bottom: 20px;
	padding-left: 10px;
}

.right img {
	padding-top: 40px;
	padding-bottom: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="left">
			<p>Payment methods</p>
			<hr style="border: 1px solid black; margin: 0 15px;">
			<div class="methods">
				<div>Payment by card</div>
				<div>UPI</div>
				<div>Phone Pay/Gpay</div>
			</div>
			<hr style="border: 1px solid black; margin: 0 15px;">
		</div>
		<div class="center">
			<a href=""><img src="Products\pay.png"
				width="250" height="auto" /></a>
			<hr style="border: 1px solid black; margin: 0 15px;">

			<div class="card-details">
				<form>
					<p>Card number</p>
					<div class="c-number" id="c-number">
						<input id="number" class="cc-number" placeholder="Card number"
							maxlength="19">
					</div>

					<div class="c-details">
						<div>
							<p>Expiry date</p>
							<input id="e-date" class="cc-exp" placeholder="MM/YY"
								maxlength="5">
						</div>
						<div>
							<p>CVV</p>
							<div class="cvv-box" id="cvv-box">
								<input id="cvv" class="cc-cvv" placeholder="CVV" maxlength="3">
							</div>
						</div>
					</div>
					<button>PAY NOW</button>
				</form>
			</div>
		</div>
		<div class="right">
			<a href="https://www.phonepe.com/"><img src="/Products/phonepay.png" width="100%"
				height="auto"></a>
			<hr style="border: 1px solid black; margin: 0 15px;">
			<a href="https://pay.google.com/about/"><img src="/Products/Gpay.png" width="100%"
				height="auto"></a>
			<hr style="border: 1px solid black; margin: 0 15px;">
			<img src="Products\pay.png" width="100%" height="auto">
		</div>
	</div>
</body>
</html>