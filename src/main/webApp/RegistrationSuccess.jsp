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
   h1,h2{
color: green;
   }
   body{
display:flex;
align-items: center;
justify-content: center;
margin-top: 150px;
   }
   #container{
   width: 700px;
   height: 250px;
   background-color: aliceblue;
   display: flex;
   align-items: center;
   justify-content: center;
   flex-direction: column;
   gap: 40px;
  
   }
   input{
    padding: 4px;
    width: 100px;
    border-radius: 15px;
    background-color:red;
   }
   
    </style>
      
</head>
<body>
    <div id="container">
      <center>
          <h1>Congratulations ...Registration Successfull</h1>
          <h2>Plese Login..!!</h2></center>
           
          <form action="add">
         
         <input type="submit" value="Login">
          </form>
            
        </div>
</body>
</html>