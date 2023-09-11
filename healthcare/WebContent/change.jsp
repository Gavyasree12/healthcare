todays changes
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background-image: url("./img/key2.jpg");
background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

input[type=text], input[type=password] {
  width: 100%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #C1C1C1;
  border-radius:20px;
  border:none;
}

input[type=text]:focus, input[type=password]:focus {
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
/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
.resetpassword {
  float: left;
  width: 50%;
  margin-left: 80px;
}

.form {
  transform: translate(-50%,30%);
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 500px;
  margin: 0  300px;
  padding: 30px;
  text-align: left;
  color:gray;
  border-radius:20px;
  border:none;
  background: rgba(255,255,255,0.8);
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24); */
}
</style>
</head>
<body>
<body>

<form action="Changeserv"  method="post" >
  <div class="form">
     <center><h3>Reset Your Password</h3></center>
    
	
    <input type="text" placeholder="Enter your User ID" name="userid">
    </br>

    <input type="password" placeholder="Enter your Current Password" name="cpass">
    </br>
      <input type="password" placeholder="Enter your New Password" name="password1">
    </br>
	 <input type="password" placeholder="Re-Enter the New Password" name="password">
    </br>
   
    <div class="clearfix">
     <button type="submit" class="resetpassword">Reset Password</button>
      
    </div>
    </div>
  
</form>
</body>
</html>