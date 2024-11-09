<%@page import="com.jsp.App.entity.Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Spartan", sans-serif;
}

body {
	width: 100%;
	background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
}

.logo {
	padding-left: 0px;
	width: 100px;
	height: 60px;
}

#header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 20px 70px;
	background-color: #E3E6F3;
	box-shadow: 0 5px 15px rgba(0red, 0 green, 0 blue, 0.06);
	z-index: 999;
	position: sticky;
	top: 0;
	left: 0;
	background-image: linear-gradient(120deg, #a1c4fd 0%, #c2e9fb 100%);
}

#navbar {
	display: flex;
	align-items: center;
	justify-content: center;
}

#navbar li {
	list-style: none;
	padding: 0px 20px;
	position: relative;
}

#cart {
	width: 30px;
	height: 30px;
}

#profile {
	width: 27px;
	height: 27px
}

#search {
	height: 25px;
	width: 27px;
}

#navbar li a {
	text-decoration: none;
	font-size: 16px;
	font-weight: 600;
	color: black;
	transition: 0.3s ease;
}

#navbar li a:hover, #navbar li a:active {
	color: blue;
}

#navbar li a:active::after, #navbar li a:hover::after {
	content: "";
	width: 50%;
	height: 2px;
	background: blue;
	position: absolute;
	bottom: -4px;
	left: 20px;
}

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

#body h1 {
	margin: 10px 10px ;
	color: blue;
	text-shadow: 5px;
	font-weight: 900;
	font-size: 50px
}

.mainbody {
	display: flex;
	flex-direction: column;
	justify-content: space-around;
	align-items: center;
	position: relative;
	gap:30px;
	
}
#cartContainer{
display: flex;
flex-direction: row;
gap:40px;
}
#left {
	background-image: linear-gradient(to top, #a18cd1 0%, #fbc2eb 100%);
	width: 300px;
	height: 350px;
	border-style: double;
	border-radius: 3px;
		
}
#right {
	color:black;
	background-image: linear-gradient(to top, #a18cd1 0%, #fbc2eb 100%);
	width: 650px;
	height: 350px;
	border-style: double;
	border-radius: 3px;	
	position: relative;
}
.img{
width: 100%;
height: 100%;
}
#right label{
	font-size: xx-large;
	font-weight:900;
	padding: 40px 20px;
}
#right span{
	font-size: larger;
	font-family:cursive;
}
.finalbutton{
	width: 100%;
	height: 80px;
	display: flex;
	align-items: center;
	flex-direction: row;
	justify-content: space-around;
	position: absolute;
	bottom: 50px;
}
#finalbutton {
  background-color: initial;
  background-image: linear-gradient(-180deg, #FF7E31, #E62C03);
  border-radius: 6px;
  box-shadow: rgba(0, 0, 0, 0.3) 0 2px 4px;
  color: #FFFFFF;
  cursor: pointer;
  display: inline-block;
  font-family: Inter,-apple-system,system-ui,Roboto,"Helvetica Neue",Arial,sans-serif;
  height: 40px;
  line-height: 40px;
  outline: 0;
  overflow: hidden;
  padding: 0px 60px;
  pointer-events: auto;
  position: relative;
  text-align: center;
  touch-action: manipulation;
  user-select: none;
  -webkit-user-select: none;
  vertical-align: top;
  white-space: nowrap;
  width: 30%;
  z-index: 9;
  border: 0;
  transition: box-shadow .2s;
}

#finalbutton:hover {
  box-shadow: rgba(253, 76, 0, 0.5) 0 3px 8px;
}
#space{
   color:red;
    height: 30px;
}
#cartEmpty{
 
 display: flex;
 flex-direction: column;
 justify-content:center;
 align-items:center;
 gap:5px;
}
#shoping{
text-decoration: none;

}
#but{
 margin-top: 8px;
 width: 200px;
 background-color: orange;
 padding: 5px;
}

</style>
</head>
<body>
	<section id="header">
		<a href="#"><img src="logoimg.png" class="logo"
			onclick="location.href='home'"></a>
		<div>
			<ul id="navbar">
				<li><a href="/">Home</a></li>
				<li><a href="/mens">Men</a></li>
				<li><a href="/womenPage">Women</a></li>
				<li><div id="box">
						<input type="text" placeholder="Search....."><img
							id="search" src="search.png">
					</div></li>
				<li><a href="/loginPage"><img id="profile" src="profile.png"></a></li>
				<li><a href="#"><img id="cart" src="cart-icon.png"></a></li>
			</ul>
		</div>
	</section>
	<section id="body">
		<center>
			<h1>Shopping Cart</h1>
		</center>
	</section>
	
	 <%
		 List<Cart> list = (List)request.getAttribute("carts");		      
		 		 		        if(list.isEmpty() != true)
		 		 		        {
		 		 		        	
		 		 		        	Iterator<Cart> it = list.iterator();
		 		 		        	
		 		 		        	while(it.hasNext())
		 		 		        	{
		 		 		        		Cart c = it.next();
		 %>
		        
	<section class="mainbody">
	  <div id="cartContainer">
	      
		<div id="left">
			<img class="img" src=<%=c.getFilePath()%> >
		</div>
		<div id="right">
			<label>Brand Name:</label><span><%=c.getCompanyName() %></span><br>
			<label>Company Name:</label><span><%=c.getTypeOfCloth() %></span><br>
			<label>Price:</label><span><%=c.getPrice() %></span>
			<div class="finalbutton">
			
			<form action="place">
			<input id="finalbutton" type="hidden" name="id" value="<%=c.getId() %>" >
			<input id="finalbutton" type="submit" value="Place Order">
			</form>
			
			
			<form action="/deleteCart">
			<input type="hidden" name="id" value="<%=c.getId()%>">
			<input id="finalbutton"  type="submit" value="Cancel">
			</form>
			</div>
			    size <select name="" id="">
                    <option value="" ></option>
                    <option value=""><div class="sizes">XS</div></option>
                    <option value=""><div class="sizes">S</div></option>
                    <option value=""><div class="sizes">M</div></option>
                    <option value=""><div class="sizes">L</div></option>
                    <option value=""><div class="sizes">XL</div></option>
                    <option value=""><div class="sizes">XXL</div></option>
                      
                   </select>

                   Qnt <select name="" id="">
                    <option value="" ></option>
                    <option value=""><div class="sizes">1</div></option>
                    <option value=""><div class="sizes">2</div></option>
                    <option value=""><div class="sizes">3</div></option>
                    <option value=""><div class="sizes">4</div></option>
                    <option value=""><div class="sizes">5</div></option>
                    <option value=""><div class="sizes">6</div></option>
                      
                   </select>
			</div>
		</div>
		
		  <%
		          }
		        }
		        else
		        {
		        	%>
		        	<div id="cartEmpty">
		        	<h2>Shopping Cart</h2>
		            <h5>Your cart is empty</h5>
		            <button id="but"><a href="/" id="shoping">Continue tO shopping</a></button>
		            </div>
		            <%
		            } 
		            %>
	</section>
	
	
</body>
</html>