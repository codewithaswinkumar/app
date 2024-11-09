<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Blog-Login</title>
<link rel="stylesheet" href="login.css">
</head>
<body>
	<div id="Outercont">
		<img id="logo" src="logoimg.png"> <label id="reg">Not
			have an account:</label> <a href="/Registration.jsp"><p id="register">Register
				Here</p></a>
		<div id="innercont">
			<h1 id="heading">Login</h1>
			<form action="alluser" >
				<div class="inputdiv">
					<input class="inputtags" placeholder="Enter The Mobile" name="mobile">
				</div>
				<div class="inputdiv" id="passdiv">
					<input type="password" class="inputtags"
						placeholder="Enter The Password" name="pass"> <img id="passvis"
						src="openedeye.png" onmousedown="passviss()"
						onmouseup="passhid()">
				</div>
				<p id="status"></p>
				<input type="submit" value="login" id="loginbutton"
					 onmousedown="bigbutton()"
					onmouseup="smallbutton()">
			</form>
		</div>
	</div>
	<%
	  String s = (String)request.getAttribute("status");
	
	  if(s!=null)
	  {
		  boolean b = Boolean.parseBoolean(s);
		  if(b)
		  {
			  HttpSession s2 = request.getSession();
			  s2.setAttribute("login","true");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/");
			dispatcher.forward(request, response);
		  }
		  else
		  {
			%>
			
			
			<h1 style="color:Red ">In-Valid CREDENTIALS.....!!!!</h1>
			
		  <% 
		  }
	  }
	%>

	<script type="text/javascript">
		var emailIDorPhno = localStorage.getItem("email")
		var pass = localStorage.getItem("pass")
		var form = document.forms;
		function passvalid() {
			var inputTags = document.querySelectorAll("input")
			var usergivenEmail = inputTags[0].value
			var usergivenpass = inputTags[1].value
			var borders = document.getElementsByClassName("inputdiv")
			if (emailIDorPhno != usergivenEmail && pass != usergivenpass) {
				document.body.style.backgroundImage = "linear-gradient(75deg,red,red)"
				borders[0].style.borderColor = "red"
				borders[1].style.borderColor = "red"
				document.getElementById("status").innerHTML = "UserID and Password is Wrong"
			} else if (emailIDorPhno == usergivenEmail && pass != usergivenpass) {
				document.body.style.backgroundImage = "linear-gradient(75deg,rgb(193,0,97),red)"
				borders[0].style.borderColor = "royalblue"
				borders[1].style.borderColor = "red"
				document.getElementById("status").innerHTML = "UserID and Password is Wrong"
			} else if (emailIDorPhno != usergivenEmail && pass == usergivenpass) {
				document.body.style.backgroundImage = "linear-gradient(75deg,red,purple)"
				borders[0].style.borderColor = "red"
				borders[1].style.borderColor = "royalblue"
				document.getElementById("status").innerHTML = "EmailId or Phno is Wrong"
			} else {
				form[0].action = "Home.jsp"
				form[0].elements[2].type = "submit"
			}
		}
		function passviss() {
			form[0].elements[1].type = "text"
			document.getElementById("passvis").style.transition = "transform 0.3s"
			document.getElementById("passvis").src = "open.jpeg"
			document.getElementById("passvis").style.transform = "rotateY(180deg)"
		}
		function passhid() {
			form[0].elements[1].type = "password"
			document.getElementById("passvis").style.transition = "transform 0.3s"
			document.getElementById("passvis").src = "openedeye.png"
			document.getElementById("passvis").style.transform = "rotateY(0deg)"
		}
		function bigbutton() {
			form[0].elements[2].style.transform = "scale(1.2)"
			form[0].elements[2].style.backgroundColor = "purple"
		}
		function smallbutton() {
			form[0].elements[2].style.transform = "scale(1)"
			form[0].elements[2].style.backgroundColor = "transparent"
		}
	</script>
</body>
</html>