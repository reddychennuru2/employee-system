<%@ page import="mp.*"%>
<%@ page import="java.sql.*"%>
<%!
	PreparedStatement ps,ps1;
	String smsg,sunf;	
	ResultSet rs;
%>
<%
	sunf=(String)session.getAttribute("puser");
	smsg=request.getParameter("messaget");
 
 
 
	try{
		dbcon.getConnection();
		ps=dbcon.con.prepareStatement("insert into messaget values(?,?)");
 
		ps.setString(1,smsg);
		ps.setString(2,sunf);
		 
		ps.execute();
		response.sendRedirect("message.jsp");
 		 				 
		 
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
