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
table
{

margin-bottom:10px;
height:350px;
width:350px;
margin-left:0px
}
#acloc,#nameloc,#passloc,#confirmloc,#addloc,#amtloc,#mobileloc
{
color:red;
font-size:13px;
}
#b1,#b2
{
background-color: grey;
height:30px;
width:100px;
border-radius:20px;
font-size:15px;
border:2px solid black
}


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
<br>
<br>
<center>
<h3>Create New Account</h3>

<br>
<br>

<form name="f" action="/NewaccCode" method="post" onsubmit="return validate()">

<div>
<label>Account Number:</label><input type="text" name="acno"><p></p>
<span id="acloc"></span><br>
<label>Name:</label><input type="text" name="name"><p></p>
<span id="nameloc"></span><br>
<label>Password:</label><input type="text" name="password"><p></p>
<span id="passloc"></span><br>
<label>confirm_password:</label><input type="text" name="cpassword"><p></p>
<span id="confirmloc"></span><br>
<label>Address:</label><input type="text" name="address"><p></p>
<span id="addloc"></span><br>
<label>Amount:</label><input type="number" name="amount"><p></p>
<span id="amtloc"></span><br>
<label>Mobile No:</label><input type="text" name="mobile_no"><p></p>
<span id="mobileloc"></span><br></table></div>
<br>
<input type="submit" value="Submit" id="b1">&nbsp;&nbsp;
<input type="reset" value="Clear" id="b2"></center>
</form>
</center>