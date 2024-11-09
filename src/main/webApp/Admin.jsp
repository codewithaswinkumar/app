<%@page import="org.apache.catalina.valves.rewrite.InternalRewriteMap.UpperCase"%>
<%@page import="com.jsp.App.entity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
     *{
   padding: 0px;
   margin: 0px;
   box-sizing: border-box;
   }
   #maincontainer{
width: 100vw;
height: 100vh;

   }
   #first{
    background-color: #E3E6F3;
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    height: 80px;
    gap:10px;
   }
      #second{
 display: flex;
  justify-content: space-around;
  margin-top: 30px;

   }
   input{
    width: 100px;
    padding: 5px;
    background-color: pink;
   }
   
   #icon{
      display: flex;
      align-items: center;
      justify-content: center;
      width: 60px;
      height: 60px;
      border-radius: 100%;
      border: 2px solid black;
       border-radius: 100%;
       background-color: black;
   }
   #detailes{
   display: inline-block;
   margin-left: 10px;
   }
   #accL{
   color: White;;
   font-weight: 800;
   }
  hr{
  margin-top: 20px;
  }
  .properties{
  margin-top: 20px;
  }
  a{
  margin-left: 10px;
  }
 button{
 width: 150px;
 height: 40px;
 margin:auto;
 align-items:center;
 margin-left:550px;;
 margin-top:20px;
 border-radius:20px;
 background-color: red;
  }
    </style>
      
</head>
<body>
   <div id="maincontainer">

     <%
     HttpSession s4 = request.getSession();
                User u = (User)s4.getAttribute("user");
                
                  String name = u.getUserName();
                  String n = name.toUpperCase();
                   char le = n.charAt(0);
     %>
    <div id="first">
      <div id="icon">
       <h1 id="accL"><%=le%></h1>
     </div>
       <div id="detailes">
      <h1><%=u.getUserName() %></h1>
      <h5><%=u.getUserMobile() %></h5>
      <h5><%=u.getUserEmail() %></h5>
      </div>
    </div>

    <div id="second">
         <form action="Orders">
            <input type="submit" value="Orders">
         </form>

         <form action="Wishlist">
          <input type="submit" value="Wishlist">
       </form>

       <form action="Coupons">
        <input type="submit" value="Coupons">
       </form>
       
       <form action="HelpCenter">
        <input type="submit" value="HelpCenter">
       </form>


    </div>
       <hr>
          <div class="properties">
            <a> Invite Friends&Earn </a>
          </div>
       <hr>
          <div class="properties">
            <a>Aswin Wallet </a>
          </div>
       <hr>
       
       <div class="properties">
            <a>My Rewards </a>
          </div>
       <hr>
       <div class="properties">
            <a>Address </a>
          </div>
       <hr>
       <div class="properties">
            <a>Notifications </a>
          </div>
       <hr>
        <div class="properties">
            <a>Return </a>
          </div>
       <hr>
       
      <form action="logout"><button>LOGOUT</button></form>
   
   </div>
</body>
</html>