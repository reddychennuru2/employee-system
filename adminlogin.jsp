<head>
<script language="javascript">
function checklogin()
{ 
	if(loginform.unt.value==""||loginform.pwt.value=="")
		alert("please fill all fields");
	else
		loginform.submit(); 
}
</script>

</head>
<body style="position:absolute;left:400px" bgcolor=black>
<form name="loginform" method="post" action="admincheck.jsp">
	<h1><font color="blue">ADMIN LOGIN</font></h1>
	<table>
	
	<tr ><td colspan="2"><font color="blue"><b>username</b> </font>
	<tr><td colspan="2"><input type="text"  name="unt" value=""></input>
	<tr><td colspan="2"><font color="blue"><b>password</b></font>
	<tr><td colspan="2"><input type="password" name="pwt" value=""></input>
	 
	<tr><td><a href="javascript:checklogin()" ><img src=images/loginbutton.jpg></img></a>
	    <a href="adminsignup.jsp"><img src=images/signupbutton.jpg></img></a>
 
	</table>
</form>
</body>
