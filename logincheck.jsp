<%@page import="java.sql.*" %>
<%@page import="mp.*"%>
<%!
	Statement st1,st2;
	ResultSet rs;
	PreparedStatement ps;
	String unts,pwts;
%>
<%
	unts=request.getParameter("unt");
	pwts=request.getParameter("pwt");
	out.println(unts);
	
	
	try{
		dbcon.getConnection();
		 
		 ps=dbcon.con.prepareStatement("select pwf,statusf from signuptable where unf=?");
			ps.setString(1,unts);
			rs=ps.executeQuery();
			rs.next();
			String pwfs=rs.getString("pwf");
			String status=rs.getString("statusf");
			if(pwts.equals(pwfs))		
			{
				if(status.equals("yes"))
				{
					session.setAttribute("puser",unts);

					out.println("welcome to home");	
					response.setHeader("Refresh","1;URL=home.jsp");		 		  			
				}
				else
				{

						out.println("STATUS: under verification");
				 		response.setHeader("Refresh","2;URL=login.jsp");		 		  
				}
				 
			}
		 
		 
			else
			{
				out.println("wrong login");
				response.setHeader("Refresh","2;URL=login.jsp");		 
			}
		
	 
		 
	 
		
		
		 
		
 
 
		
	
	}catch(Exception e)
	{
		out.println(e);
	}
	
 
	
	
%>