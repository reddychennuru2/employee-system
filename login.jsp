<html>
<head>
<style>
.a
{
	background-image:url("images/fo.jpg");
	background-repeat:repeat-x;
}

</style> 
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
<body>
<div style="position:absolute;top:0px;left:0px">
<img src="images/mylogo.jpg">

<div style="position:absolute;top:0px;right:0px">

<div style="padding:3px">
<form name="loginform" method="post" action="logincheck.jsp">
	
	<table>
	<tr><td ><b>username</b><td><a href="adminlogin.jsp">admin</a>
	<tr><td colspan="2"><input type="text"  name="unt" value=""></input>
	<tr><td colspan="2"><b>password</b>
	<tr><td colspan="2"><input type="password" name="pwt" value=""></input>
	 
	<tr><td><a href="javascript:checklogin()" ><img src=images/loginbutton.jpg></img></a>
	    <td><a href="signup.jsp"><img src=images/signupbutton.jpg></img></a>
 
	</table>
</form>
</div>
</div>
</div>

<img src="images/mii.jpg" style="position:absolute;top:145px"></img>
  
<div class="a" style="position:absolute;bottom:0px;width:1024px;height:130px" >
 
</div>
</body>
</html>