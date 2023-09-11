todays changes
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Health care</title>

<!-- <link rel="stylesheet" href="./style/about.css" > -->

<script src="https://code.jquery.com/jquery-2.2.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
<link href="https://code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="./style/w3.css" >
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
<!-- <link rel="stylesheet" href="./style/time.css">
 --><link rel="stylesheet" href="./style/date.css">

<style>
@import url('https://fonts.googleapis.com/css?family=Roboto:700');
body
{
	margin:0 auto 0;
	background-image: url("./img/bear.jpg");
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
select{
background-color: #F5A262;
  outline: none;
  border-radius:20px;
  border:none;

}
option{
width: 100%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #C1C1C1;
  border-radius:20px;
  border:none;
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
  transform: translate(0%,0%);
  position: relative;
  background-attachment: fixed;
  z-index: 1;
  background: #FFFFFF;
  max-width: 500px;
  margin: 0 230px;
  padding: 50px;
  text-align: left;
  color:gray;
  border-radius:20px;
  border:none;
  background: rgba(255,255,255,0.8);
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); */
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
#foot
{
margin-top: 500px:
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
 <form action="Outpatientserv" onsubmit="return validation()" name="op" method="post">
  <div class="form">
     
     <center><h3>Out-Patient Appointment Form</h3></center>
    Choose PAT Symptoms:
<select id="slct1" name="symptoms" onchange="populate(this.id,'slct2')">
  <option value=""></option>
  <option value="Fever">Fever,Cold</option>
  <option value="EYE INCIPIENT">Eye Incipients</option>
  <option value="Cardiac Attack">Cardiac Attack</option>
  <option value="Stomach Pain">Stomach Pain</option>
  <option value="Allergies">Allergies</option>
  <option value="Headache">Headache</option><option value="BodyPain">Body Pain</option>
 <option value="Minor Injuries">Minor Injuries</option>
</select>
<br>
Choose DOC Name:
<select type="text" id="slct2" name="docname"></select>

<br>
    
    Appointment Date:<input type="text" name="appdate" id="org">
    <br>
	Appointment Time:<input type="text" name="apptime" id="app">
	<br>
	
	Description about Symptoms:<input type="text" name="docdesc">
	
	<button type="submit" name="action" value="outpat">Proceed to Payment</button>
	
  </div>
  
</form>
</div>
</nav>
<div id="foot"><footer class="w3-container w3-padding-16 w3-center w3-black w3-xlarge">
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-pinterest-p"></i></a>
  <a href="#"><i class="fa fa-twitter"></i></a>
  <a href="#"><i class="fa fa-flickr"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <p class="w3-medium">
  Powered by <a href="Login.jsp" target="_blank">@copyright-PAT-a-DOC 2019</a>
  </p>
</footer></div>


 <script>
 function populate(s1,s2)
 {
  var s1 = document.getElementById(s1);
  var s2 = document.getElementById(s2);
  s2.innerHTML = " ";
  if(s1.value == "Fever")
  {
   
   var optionArray = ["|","Dr.A.Aravind|Dr.A.Aravind.,MBBS","Dr.Varthan|Dr.Varthan.,MBBS","Dr.kowshik|Dr.kowshik.,MBBS","Dr.N.Niranjanadevi|Dr.N.Niranjanadevi.,MBBS","Dr.S Manojprabhakar|Dr.S Manojprabhakar.,MBBS"];
  }
  else if(s1.value == "EYE INCIPIENT")
  {
   var optionArray = ["|","Dr.Dass|Dr.Dass.,Dip in OD","Dr.M.Abhi|Dr.M.Abhi.,MBBS,OD","Dr.Balaji|Dr.Balaji.,MBBS,NSC,OD","Dr.V.VIJAYALAKSHMI|Dr.V.VIJAYALAKSHMI.,MBBS,OD","Dr.G.SELVAN|Dr.G.SELVAN.,MBBS"];
  }
  else if(s1.value == "Cardiac Attack")
  {
   var optionArray = ["|","Dr.M.Sampath Kumar|Dr.M.Sampath Kumar.,MBBS,MD,DM,FIC","Dr.L.Parthuysa|Dr.L.Parthuysa.,MBBS","Dr.L.Lavanya|Dr.L.Lavanya.,MBBS,MD","Dr.S.Smithy|Dr.S.Smithy.,MBBS,DM,FIC","Dr.S.Aravinth|Dr.S.Aravinth.,MBBS,DM,FIC"];
  }
  else if(s1.value == "Stomach Pain")
  {
   var optionArray = ["|","Dr.N.Sumanth|Dr.N.Sumanth,Dip in OD,M.D","Dr.M.SEKAR|Dr.M.SEKAR.,MBBS,OD,MD","Dr.B.SANKAR|Dr.B.SANKAR.,MBBS,OD","Dr.V.SivaRaman|Dr.V.SivaRaman.,MBBS","Dr.G.BALAMURGAN|Dr.G.BALAMURGAN.,MBBS"];
  } else if(s1.value == "Allergies")
  {
   var optionArray = ["|","Dr.D.C.Gupta|Dr.D.C.Gupta.,MBBS,DC","Dr.S.VELAN|Dr.S.VELAN.,MBBS,OD","Dr.B.PRIYANSA|Dr.B.PRIYANSA.,MBBS,MD","Dr.V.VIJAY|Dr.V.VIJAY.,MBBS","Dr.G.VARNITH|Dr.G.VARNITH.,MBBS"];
  } else if(s1.value == "Headache")
  {
   var optionArray = ["|","Dr.Vipin Kumar|Dr.Vipin Kumar.,MBBS","Dr.Arun Agarwal|Dr.Arun Agarwal.,MBBS,MD","Dr.Balaji|Dr.Balaji.,MBBS,NSC,OD","Dr.G.Pushkar|Dr.G.Pushkar.,MBBS, MD, DM","Dr.Ibraheem|Dr.Ibraheem.,MBBS"];
  } else if(s1.value == "BodyPain")
  {
   var optionArray = ["|","Dr.Madhu Nahar Roy|Dr.Madhu Nahar Roy.,MBBS","Dr.Ravikant Porwal|Dr.Ravikant Porwal.,MBBS,MD","Dr.Himashu Nautiyal|Dr.Himashu Nautiyal.,MBBS,NSC,OD","Dr.Dr.Mishra|Dr.Dr.Mishra.,MBBS,MD","Dr.S.N.Bagree|Dr.S.N.Bagree.,MBBS"];
  } else if(s1.value == "Minor Injuries")
  {
   var optionArray = ["|","Dr.Rima|Dr.Rima.,MBBS,DNB","Dr.Vinny|Dr.Vinny.,MBBS,MD","Dr.Amit Srivastava|Dr.Amit Srivastava.,MBBS,OD","Dr.Rahul Jain|Dr.Rahul Jain.,MBBS,MD","Dr.Shamsher Dwivedee|Dr.Shamsher Dwivedee.,MBBS"];
  } 
  for(var option in optionArray)
  {
   var pair = optionArray[option].split("|");
   var newOption = document.createElement("option");
   newOption.value = pair[0];
   newOption.innerHTML = pair[1];
   s2.options.add(newOption);
  }
 }

$(document).ready (function(){
	$("#org").datepicker({
		
		minDate: 0,
		dateFormat:'dd/mm/yy',
		maxDate: 10
		
	})
	$("#app").timepicker({
		interval: 60,
		minTime: '6',
		maxTime: '13'
		
		
	})
})

function validation(){
	var symptoms= document.forms["op"]["symptoms"];
	var docname= document.forms["op"]["docname"];
	var appdate= document.forms["op"]["appdate"];
	var apptime= document.forms["op"]["apptime"];
	var docdesc= document.forms["op"]["docdesc"];
	
	if(symptoms.value==""){
		window.alert("please select the symptoms");
		symptoms.focus();
		return false;
	}
	if(docname.value== ""){
		window.alert("please select the Doctor name");
		docname.focus();
		return false;
	}if(appdate.value== ""){
		window.alert("please select the appointment date");
		appdate.focus();
		return false;
	}if(apptime.value== ""){
		window.alert("please select the appointment time");
		apptime.focus();
		return false;
	}if(docdesc.value== ""){
		window.alert("please enter the some description");
		docdesc.focus();
		return false;
	}
	
}
</script>
</body>
</html>


