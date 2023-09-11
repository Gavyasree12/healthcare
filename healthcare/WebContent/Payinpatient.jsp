todays changes
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>B-APS</title>
<!-- <link rel="stylesheet" href="./style/about.css" > -->
<link rel="stylesheet" href="./style/w3.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:700');
body
{
 margin:0 auto 0;
 /* background-image: url("./img/bg.jpg");
background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed; */
   padding:0;
 font-family: sans-serif;
}
nav
{
 position: fixed;
 top:0;
 left:0;
 width:100%;
 height:100px;
 padding: 10px 100px;
 box-sizing: border-box;
 transition: .5%;
 
}
nav .logo img
{
 margin-left: -60px;
 height: 100px;
 transition: .5%;
 
}
nav ul
{
 
 float:right;
 margin: 0;
 padding:0;
 display:flex;
 
}
nav ul li
{
 list-style:none;
 margin: 10px;
}
nav ul li a
{
 line-height: 80px;
 color: #fff;
 padding: 5px 20px;
 background-color: rgba(0,0,0,0.4);
 font-family: 'Roboto', sans-serif;
 text-decoration:none;
 text-transform: uppercase;
 transition: .5%;
 border:none;
 border-color: none;
 border-radius: 4px;
}
nav ul li a:hover
{
 color: #000;
 background: white;
 
}
*{
    margin: 0;
    padding: 0;
    font-family: century Gothic;
}
select, input[type=text],input[type=address], input[type=password], input[type=number],input[type=date] {
  width: 100%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #C1C1C1;
  border-radius:20px;
  border:none;
}
select:focus, input[type=text]:focus, input[type=password]:focus,input[type=address]:focus,input[type=number]:focus {
  background-color: #F5A262;
  outline: none;
  border-radius:20px;
  border:none;
}
text area{
border-radius:10px;
  border:none;
}
hr {
  border: 0px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
  border-radius:20px;
  border:none;
  background-color: #00cc66;
}
button:hover {
  opacity:1;
}
/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #FF5733 ;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn, .signinbtn {
  float: left;
  width: 50%;
}
/* Add padding to container elements */
.container {
  padding: 16px;
  border-radius:20px;
  border:none;
}
.bg{
background-image: url("./img/co.jpg");
background-size:cover;
background-position: center;
background-repeat: no-repeat;
background-attachment:
filter: grayscale(100%);
filter: blur(8px);
  -webkit-filter: blur(8px);}
/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
.form {
  transform: translate(0%,10%);
  position: relative;
  background-attachment: fixed;
  z-index: 1;
  background: #FFFFFF;
  max-width: 700px;
  margin: 0 230px;
  padding: 50px;
  text-align: left;
  color:gray;
  border-radius:20px;
  border:none;
  margin-bottom: 200px;
  background: rgba(255,255,255,0.8);
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); */
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
.foot
{
margin-top: 400px:
}
.section{ 
    width: 600px;
    margin: auto;
    font-size: 20px;
    color:white;
    text-align: justify;
    height:0;
    overflow: hidden;
}
.section:target{
    height:auto;
}
.name{
    display: block;
    margin-bottom: 20px;
    text-align: center;
    text-transform: uppercase;
    font-size: 22px;
}
</style>
</head>
<body>
<nav>
<div class="logo">
<a href="Nav.jsp"><img src="./img/logo2.png"></a>
<ul>
<li>  <a href="Nav.jsp">Home</a></li>
  <li><a href="#band" >Your Appointments</a></li>
  <li><a href="about.jsp">About Us</a></li>
 <li><a href="Logoutserv" >Logout</a></li>
 </ul>
 <b><a href="#dsf"><% HttpSession sessio=request.getSession(false);  
 if(sessio!=null){  
 String name=(String)sessio.getAttribute("userid");  
 out.print(name);}
 else
 {}%></a></b>
 <form action="Payinserv"  method="post" >
  <div class="form">
     <center><h3>Payment Form</h3></center>
     <center><h4>Admission charges:</h4><h5><br>Bed charges: Rs.1000 per day <br>Tax: Rs.250<br>Maintaince Fee: Rs.500<br>Net Amount: <%=request.getAttribute("days") %></h4></center>
    
 
    <input type="text" placeholder="Enter your credit card number" name="ccnum">
    </br>
    <input type="text" placeholder="Enter CVV" name="cvv">
    </br>
   <input type="hidden" name="hidays" value="">
  
    <div class="clearfix">
     <button type="submit" value="payinpat" name="action">Book Appointment</button>
      
    </div>
    </div>
 
</form>
 </div>
</nav>
<section class="sec1"><section>
<img src=".\img\care.jpg"
  style="width:100%">
<footer class="w3-container w3-padding-16 w3-center w3-dark-grey w3-xlarge">
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <p class="w3-medium">
  Powered by <a href="Login.jsp" target="_blank">@copyright-PAT-a-DOC 2019</a>
  </p>
</footer>
</body>
</html>