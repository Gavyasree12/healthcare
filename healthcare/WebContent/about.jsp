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
	background-image: url("./img/appoint.jpg");
background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
 
	padding:0;
	font-family: sans-serif;
}
nav
{
	position: relative;
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
  filter: drop-shadow(0px 0px 0px white);}
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
select{
  width: 100%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #fff;
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
  transform: translate(15%,30%);
  position: relative;
  background-attachment: fixed;
  z-index: 1;
  max-width: 400px;
  margin: 0 100px;
  padding: 50px;
  text-align: left;
  color:#606060;
  border-radius:20px;
  border:none;
  background: rgba(255,255,255,0.6);
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);/
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
 .search {
 margin-left: 50px;
 	width: 50%;
  }
}
.container {
	margin-left: 50px;
	margin-right:20px;
	border-radius:20px;
  border:none;
  background: rgba(255,255,255,0.6);
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); 
  margin-bottom: 0;
   
}
.container img{
	width: 70%;
	height:70%;
	border-radius:20px;
	
}
.container p
{
font-family:sans-serif;
margin-left: 10px;
	margin-right:40px;
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
 {}%></a></b> </div>
 </nav>
 

 <div class="container">
  <h1><b>Why Pat-A-Doc Healthcare???</b></h1><br/>
 
<img src="./img/wait.PNG" />

 <h4><p align="justify">Nowadays people are facing huge difficulties in consulting a doctor. One of the main problems is wasting time by waiting in a dull and monotonous waiting hall with the long queues for consulting the doctor. Sometimes getting appointment also becomes a struggling task. Because people may have to undergo the process of contacting the hospital or the doctor physically or through a call to book the appointment.</i></p></h4>
  
<img src="./img/why.jpg" />
  
   <h4><p align="justify"><i>In order to make it easy for the people, our PAT-A-DOC healthcare system is going to make the process much easier for the users. PAT-A-DOC healthcare system bridges the gap between the patient and the doctor and makes it more beneficial for both patient as well as the doctor. Through this initiative, doctors will also get enough number of patients, there by benefitting the doctor as well.</i></p></h4>
      <h4><p align="justify">In fact, according to a stat, 93% of the doctors believe that healthcare system can bring improvement in patient’s health and 80% of the physicians are using the mobile technology to deliver the patient care. </i></p></h4>
      <h1><b>Advanced tech</b> </h1>
      
<img src="./img/docok.jpg" />

      
         <h4><p align="justify">In todays tech world, even the prescription of the doctors have become digitalized, which means it can be accessed on your device. It helps them (medical professionals) to view all your reports through the app makes it easier to take quick and apt decisions in emergency cases. The information can be exchange within a wink of an eye.</i></p></h1>
           <h4><p align="justify">One of the major advantages of the healthcare apps have been the reduction of medical bills and expanses. Skyrocketing bills and large medicinal expanses have always been the headache for people because the hospitals charge fee at their will.</i></p></h4>
             <h4><p align="justify">However, since some of the tasks can be done through app, it will help in easing the burden off your pocket. Moreover, you can also choose the hospital according to your budget.</i></p></h4>
             
             
             <h1><b>Project view: </b></h1>
<img src="./img/team.jpg" />

             
       <h4><p align="justify">We used the top available technologies like JAVA for general coding, JSP &CSS & HTML for user interface, Oracle for database , JDBC for database connectivity, JS for validations and Servlets.  Both the doctor and the patient have to undergo one-time registration process. The registered details of all the patients and doctors will be stored in our database separately. The user will get an temporary password for logging in for the first time and are asked to change the password of their own for security reasons as well as user preferred password. This is applicable for both the doctor as well as the patient.</i></p></h4>
        <h1><b>How to Book an Appointment? </b></h1>
<img src="./img/heart.jpg" />
       
        <h4><p align="justify">The patients have to select the type of illness that suffer, that also comes with an option of “could not be diagnosed” and have to select the doctor as per their wish and then selecting the day and time of appointment from the list of available slots of the doctor. The patient can select the date and time of the appointment only within the ten days from the current date. After filling the form, our system will generate the unique appointment id which will also be displayed in the doctor’s dashboard as well as patient’s dashboard. After the appointment time has been finished, the doctor has the freedom to set the status of the appointment to “completed” and also will update the prescription which can purchased by the patient after paying it through the patient login.</i></p></h4>
 </h4>
   </div>
<footer class="w3-container w3-padding-16 w3-center w3-dark-gray w3-xlarge" >
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flsickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <p class="w3-medium">
  Powered by <a href="Login.jsp" target="_blank">@copyright-PAT-a-DOC 2019</a>
  </p>
</footer>

</body>
</html>



