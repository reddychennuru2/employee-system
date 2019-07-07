<%@include file="adminsidebar.jsp"%>
<%@include file="blbacktopbar.jsp"%>
<div style="position:absolute;left:400px;top:80">
<%@ page import="mp.*"%>
<%@ page import="java.sql.*"%>
<%!	
	PreparedStatement ps;
	
	ResultSet rs;
	String sun;
%>
<%
	try{
		dbcon.getConnection();
		ps=dbcon.con.prepareStatement("select unf,statusf from signuptable");
		rs=ps.executeQuery();
		out.println("<table border=1 ><tr><th>user<th>verification status<td>");
		while(rs.next())
		{
			sun=rs.getString("unf");
		%>
		
			<tr><td width="100px" height="20px"><%=sun%>
			<td width="100px"><%=rs.getString("statusf")%>
			<td width="100px"><a href=verify.jsp?msg=<%=sun%> style="text-decoration:none">verify</a>
			</tr>
			 
		<%}
		out.println("</table>");
		
	}
	catch(Exception e)
	{
		out.println(e);
	}

%>
</div>