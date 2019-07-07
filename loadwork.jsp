<%@ page import="mp.*"%>
<%@ page import="java.sql.*"%>
<%!
	PreparedStatement ps,ps1;
	String smsg,sunf,pname;	
	ResultSet rs;
%>
<%
	sunf=(String)session.getAttribute("puser");
	smsg=request.getParameter("messaget");
	pname=request.getParameter("pnamet");
 
 
	try{
		dbcon.getConnection();
		ps=dbcon.con.prepareStatement("insert into workt(messagef,unf,pnamef) values(?,?,?)");
 
		ps.setString(1,smsg);
		ps.setString(2,sunf);
		ps.setString(3,pname);
		ps.execute();
		response.sendRedirect("workexperience.jsp");
 		 				 
		 
	}
	catch(Exception e)
	{
		out.println(e);
	}
%>
