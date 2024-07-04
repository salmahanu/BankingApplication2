<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

*{
    margin:0;
    font-family:Arial;
    border: border-box;
}
a{
text-decoration:none;
color:white;

}
.mystyle
{
 height: 50px;

    background-color: #0f1111;
    color:white;
    display:flex;
    align-items:center;
    justify-content: space-evenly;
  
   font-size:15px
   

}
img
{
display:block;
margin:0 auto;
max-width:100%
}
.nav
{
background-color:#cccccc;;
color:black;

}
.heading{
text-align:center;
}
.logo
{
    height:10px;
    width:100px;
    
   
     
}
.navlogo
{
    background-image: url("images/sdfc_logo-removebg-preview.png");
    height:70px;
    width:100%;
    background-size:cover;
    margin-left:350px;
    margin-top:10px;
   
  
}
h3
{
height:20px;
width:250px;
border:2px solid black;
background-color:grey;
border-radius:20px;
}
form
{
height:300px;
width:350px;
border:2px solid black;}
#acno,#name,#psloc
{
color:red;
font-size:13px}

</style>
</head>
<body bgcolor="#abdbe3">
<div class="nav">
<div class="logo">
<div class="navlogo">
</div>
</div>
<div class="heading">
<h1>SDFC BANK</h1>
<h2>EXTRAORDINARY SERVICES</h2><div></div>
<center>
<div>

<div class="mystyle">

	<a href="/home1" style="font-size:18px">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="/newacc" style="font-size:18px">New Account</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="/balance" style="font-size:18px">Balance</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="/deposit" style="font-size:18px">Deposit</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="/Withdraw" style="font-size:18px">Withdraw</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="/transfer" style="font-size:18px">Transfer</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="/close" style="font-size:18px">Close A/C</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="/aboutus" style="font-size:18px">AboutUs</a>
</center></div></div>
<br>
<center>
<h3>CLOSE ACCOUNT</h3>
<br>
<form name="f" action="/CloseCode" method="post" onsubmit="return validate()">
<br>
<br>
Account Number:<input type="text" name="acno"><p></p>
<span id="acno"></span><br>
Name:<input type="text" name="name"><p></p>
<span id="name"></span><br>
Password:<input type="text" name="password"><p></p>
<span id="psloc"></span><br>
<input type="submit" value="Submit">
<input type="reset" value="Clear">
</form>
</center>
<script>
function validate()
{
var v1=f.acno.value;
var v2=f.uname.value;
var v3=f.pswd.value;



	if(v1==""){
		document.getElementById("acno").innerHTML="*please enter your account number";
		return false;
	
	}
	if(v2=="")
	{
		document.getElementById("name").innerHTML="*please enter your name";
		return false;
	}
	if(v3=="")
	{
		document.getElementById("psloc").innerHTML="*please enter your password";
		return false;
	}
	
	else
	{
		return true;
	}
}
</script>

</body>
</html>