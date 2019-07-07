<%@include file="brbacksidebar.jsp"%>
<%@include file="blbacktopbar.jsp"%> 
<div style="position:absolute;left:400px;top:80">
<body bgcolor="black">
<%@page import="mp.*"%>
<%@ page import="java.sql.*"%>
<%!
	PreparedStatement ps1;
	ResultSet rs;
%>
<%
	try{
	 	dbcon.getConnection();
		ps1=dbcon.con.prepareStatement("select * from messaget");
		rs=ps1.executeQuery();%>
		<table border="1">
		<tr>
		<th width="100px" height="100px"><font color="brown" size="5">IDEA</font>
 
		<th width="100px"><font color="brown" size="5">USER</font>
		<%while(rs.next())
		{%>
			 
			 
			<tr>
 
			<td width="200px" height="100px"><font color="brown" size="3"><%=rs.getString("messagef")%></font>
			<td width="100px" height="100px"><font color="brown" size="3">By:<%=rs.getString("unf")%></font>
			
			</tr>
			 
			
		<%}
		out.println("</table>");
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
%>
</body>
</div>
