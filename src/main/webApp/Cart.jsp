<%@page import="com.jsp.App.entity.Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: "Spartan", sans-serif;
}

h1 {
	font-size: 50px;
	line-height: 64px;
	color: #222;
}

h2 {
	font-size: 46px;
	line-height: 54px;
	color: #222;
}

h4 {
	font-size: 20px;
	color: #222;
}

h6 {
	font-weight: 700;
	font-size: 12px;
}

p {
	font-size: 16px;
	color: #465b52;
	margin: 15px 0 20px 0;
}

.section-p1 {
	padding: 40px 80px;
}

.section-m1 {
	margin: 40px 0;
}

body {
	width: 100%;
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

#body {
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 150px 150px;
	flex-direction: column;
}

#body h2, #body h5 {
	margin: 10px 10px;
}

#but {
  border: none;
  background: #ff7a59;
  color: #fff;
  padding: 10px;
  font-size: 16px;
  border-radius: 5px;
  position: relative;
  box-sizing: border-box;
  transition: all 500ms ease; 
}

#but:hover {
  color: #ff7a59;
  border: #ff7a59 solid 1px;
  background:#fff;
}
#body #but a{
text-decoration: none;
}
</style>
</head>
<body>
	<section id="header">
		<a href="#"><img src="logoimg.png" class="logo"></a>
		<div>
			<ul id="navbar">
				<li><a href="MEN.jsp">Men</a></li>
				<li><a href="Women.jsp">Women</a></li>
				<li><a href="Home.jsp">Home</a></li>
				<li><img id="search" src="search.png"></li>
				<li><a href="Profile.jsp"><img id="profile"
						src="profile.png"></a></li>
				<li><a href="#"><img id="cart" src="cart-icon.png"></a></li>
			</ul>
		</div>
	</section>
	<section id="body">
		
		     
		        <%
				     		        List<Cart> list = (List)request.getAttribute("carts");
				     		        		     		        		      
				     		        		     		        		        if(list.isEmpty() != true)
				     		        		     		        		        {
				     		        		     		        		        	
				     		        		     		        		        	Iterator<Cart> it = list.iterator();
				     		        		     		        		        	while(it.hasNext())
				     		        		     		        		        	{
				     		        		     		        		        		Cart c = it.next();
				     		        %>
		        <div class="pro">
		          <img alt="" src="<%=c.getFilePath() %>" name="path">
		          <div id="des">
		            <span><%=c.getCompanyName() %></span>
		            <h5><%=c.getTypeOfCloth() %></h5>
		            <h4>Rs<%=c.getPrice() %>/-</h4>
		           
		          </div>
		        </div>
		          <%
		          }
		        }
		        else
		        {
		        	%>
		        	<h2>Shopping Cart</h2>
		            <h5>Your cart is empty</h5>
		            <button id="but"><a href="/">Continue tO shopping</a></button>
		            <%
		            } 
		            %>
		      
		      
	</section>
</body>
</html>