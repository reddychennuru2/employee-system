<div style="position:absolute;left:400px;top:80">
<font color="brown"><h1>ADMIN ACCOUNT</h1></font>
<body bgcolor="black">
<form name="signupform" method="post" action="loadadminsignup.jsp">
<table>
<tr><td><font color="brown">Name</font><td><input type="text" name="namet"></input>
<tr><td><font color="brown">Username</font><td><input type="text" name="unt"></input>
<tr><td><font color="brown">Password</font><td><input type="password" name="pwt"></input>
<tr><td><font color="brown">Mail</font><td><input type="text" name="mailt"></input>
<tr><td><font color="brown">Company</font><td><input type="text" name="companyt"></input>
<tr><td><font color="brown">birth day</font><td colspan="2"> 
<%! int i;%>
<select name="dayt">
<option>day</option>
<%for(i=1;i<32;i++)
{%>
<option><%=i%></option>
<%}%>
</select>
<select name="montht">
<option>month</option>
<%for(i=1;i<13;i++)
{%>
<option><%=i%></option>
<%}%>
</select>
<select name="yeart">
<option>year</option>
<%for(i=1960;i<2000;i++)
{%>
<option><%=i%></option>
<%}%>
</select>
<tr><th colspan="2"><input type="submit" value="register" ></input>

</table>
</form>
</div>