

<%@ page import="mp.*"%>
<%@ page import="java.sql.*"%>

<%!
	PreparedStatement ps;
%>
<%
	String msg=request.getParameter("msg");
	try{
		dbcon.getConnection();
		ps=dbcon.con.prepareStatement("update  signuptable set statusf='yes' where unf=?");
		ps.setString(1,msg);
		ps.execute();
		response.sendRedirect("viewusers.jsp");
		 
	}catch(Exception e)
	{
		out.println(e);
	}

 
%>
</div>