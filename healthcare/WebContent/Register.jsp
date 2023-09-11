todays changes
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body {
background-image: url("./img/care.png");
background-size:cover;
  background-position: center;
  background-repeat: no-repeat;
  background-attachment: fixed;
font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text],input[type=address], input[type=password], input[type=number],input[type=date] {
  width: 100%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #C1C1C1;
  border-radius:20px;
  border:none;
}

input[type=text]:focus, input[type=password]:focus,input[type=address]:focus,input[type=number]:focus {
  background-color: #F5A262;
  outline: none;
  border-radius:20px;
  border:none;
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
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
.logo img
{
margin-top:-20px;
    margin-left: 80px;
    height: 140px;
    margin-bottom:-20px;
    transition: .5%;
    
}
</style>

<body>
<form action="Regserv" onsubmit="return validate()" name="reg" method="post">
  <div class="form">
     <center><h3>Sign Up</h3></center>
    
    
    <input type="text" placeholder="Enter your firstname" name="fname">
    </br>

    <input type="text" placeholder="Enter your lastname" name="lname">
    </br>
     
    
    <input type="date"  name="dob" placeholder="Select DOB" >
   
    </br>
    <input type="radio" name="gender" value="male" >Male
    <input type="radio" name="gender" value="female">Female
    <input type="radio" name="gender" value="other" >Other
    </br>
   
    <input type="number" placeholder="Enter your phone" name="phone" >
    </br>
    <input type="text" placeholder="Enter Email" name="email" >
    </br>   
    <select type="text" name="bg">
    <option>Blood Group</option>
    <option value="O+ve">O+ve</option>
        <option value=Aa+ve">A+ve</option>
        <option value="B+ve">B+ve</option>    
        <option value="AB+ve">AB+ve</option>
        <option value="O-ve">O-ve</option>
        <option value="A-ve">A-ve</option>
        <option value="B-ve">B-ve</option>
        <option value="AB-ve">AB-ve</option>
            
        </select>
    </br>
     <input type="address" placeholder="Enter Address" name="addr" >
    </br>
     <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <div class="clearfix">
      
      <button type="submit" class="signupbtn">Sign Up</button>
          <center><p>Already a user? <a href="Login.jsp" style="color:gray">SignIn</a>.</p></center>
      
    </div>
    </div>
</div>
  
</form>
<script>
function validate()
{
    var fname = document.forms["reg"]["fname"];
    var lname = document.forms["reg"]["lname"];
    var dob = document.forms["reg"]["dob"];
    var phone = document.forms["reg"]["phone"];
    
    var addr=document.forms["reg"]["addr"];
    var bg = document.forms["reg"]["bg"];
    
    
    if (fname.value == "") {
        window.alert("Please enter your first name");
        fname.focus();
        return false;
    }
    if (lname.value == "") {
        window.alert("Please enter your Last name");
        lname.focus();
        return false;
    }
    if (dob.value == "") {
        window.alert("Please enter your Date of birth name");
        dob.focus();
        return false;
    }
    if ((phone.value == "")||((phone.value).length)<10) {
        window.alert("Please enter the valid phone number");
        phone.focus();
        return false;
    }
    var email=document.reg.email.value;
   var atpos = email.indexOf("@");
  var dotpos = email.lastIndexOf(".");
  if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length) {
    alert("Not a valid e-mail address");
    return false;
  }

    if (addr.value == "") {
        window.alert("Please enter the Address");
        addr.focus();
        return false;
    }
    if(bg.value == ""){
        window.alert("Please select the Blood group");
        bg.focus();
        return false;
    }
       return true;
    }
</script>
</body>
</html>



