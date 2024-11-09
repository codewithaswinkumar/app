<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
     *{
   padding: 0px;
   margin: 0px;
   box-sizing: border-box;
   }
   body{

 display: flex;
 flex-direction:column;
    align-items: center;
    justify-content: center;
    height: 100vh;
 background-image: linear-gradient(#1D2B64,#F8CDDA);


   }
   #container{
  display: flex;
    width: 400px;
    height: 300px;
    background-color:bisque;
    align-items: center;
    justify-content: center;
    border-radius: 40px;
   
   }
   input{
  width: 100%;
  padding: 7px;
  border-radius: 14px;;

   }
  #submit{

    background-color: black;
    color: white;
  }
    </style>
      
</head>
<body>
    <div id="container">
        <form action="userRegistration">
          
          <input type="text" placeholder="Enter mobile number" name="userMobile" required="required"><br><br>
          <input type="email" placeholder="Enter Email" name="userEmail" required="required"><br><br>
          <input type="text" placeholder="Enter user name" name="userName" required="required"><br><br>
          <input type="password" placeholder="Enter password" name="userPassword" required="required"><br><br>
          <input type="submit" value="Register" id="submit">
          
            <p>already you have an account <a href="/Login.jsp">Login</a></p>
        </form>
        </div>
        
        
        
        
        <%
	  String s = (String)request.getAttribute("regis");
	  if(s!=null)
	  {
		  
		  boolean b = Boolean.parseBoolean(s);
		  if(b)
		  {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/RegistrationSuccess.jsp");
			dispatcher.forward(request, response);
		  }
		  else
		  {
			%>
			
			
			<h1 style="color:Red">alredy you have an account plzz Login.....!!!!</h1>
			
		  <% 
		  }
	  }
	%>
</body>
</html>