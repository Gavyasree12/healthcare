todays changes
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Write Prescription</title>

<!-- <link rel="stylesheet" href="./style/about.css" > -->
<link rel="stylesheet" href="./style/w3.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:700');
body
{
	margin:0 auto 0;
	background-image: url("./img/care.jpg");
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

textarea{
  width: 100%;
  margin: 5px 0 22px 0;
  padding:5px;
  display: inline-block;
  border: none;
  background: #C1C1C1;
  border-radius:20px;
  border:none;
}

textarea:focus {
  background-color: #fff;
  outline: none;
  border-radius:20px;
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
  background-color: #FA8072;
  
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

.foot
{
margin-top: 600px;
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
 <form action="Outpatientserv"  method="post" >
  <div class="form">
     <center><h3>Write Your Prescription</h3></center>    
	
    <textarea placeholder="Enter your prescription" rows = "5" cols = "50" name = "description"></textarea>
         </br>
   
    <div class="clearfix">
     <button type="submit" value="pres" name="action">Submit Prescription</button>
      
    </div>
    </div>
  
</form>
 </div>
</nav>
<div class="foot">
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
</div>
</body>
</html>

