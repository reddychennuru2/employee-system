<%@page import="java.sql.*" %>
<%@ page import="mp.*"%>
<%!
	String name,un,pw,day,month,year,mail,company;
	 
	PreparedStatement ps,ps2;
	ResultSet rs;
	boolean b=true;

%>
<%
	name=request.getParameter("namet"); 
	un=request.getParameter("unt");
	pw=request.getParameter("pwt");
	day=request.getParameter("dayt");
	month=request.getParameter("montht");
	year=request.getParameter("yeart") ;
	mail=request.getParameter("mailt");
	company=request.getParameter("companyt");
 
	session.setAttribute("puser",un);
 
	 
	
	try{
		
		dbcon.getConnection();
		PreparedStatement ps2=dbcon.con.prepareStatement("select unf from adminsignuptable");
		ResultSet rs2=ps2.executeQuery();
		while(rs2.next())
		{
			if(un.equals(rs2.getString("unf")))
			{
				b=false;
				out.println("username exists...");
			}
		}
		if(b==true)
		{
 
		ps=dbcon.con.prepareStatement("insert into adminsignuptable(namef,unf,pwf,mailf,dayf,monthf,yearf,companyf,statusf) values(?,?,?,?,?,?,?,?,?)");
		


		ps.setString(1,name);
		ps.setString(2,un);
		ps.setString(3,pw);
		ps.setString(4,mail);
		ps.setString(5,day);
		ps.setString(6,month);
		ps.setString(7,year);
		ps.setString(8,company);
		ps.setString(9,"no");
		ps.execute();
		out.println("REGISTRATION SUCCESSFUL");
		out.println("STATUS:under verification "); 
		response.setHeader("Refresh","2;URL=login.jsp");		 		
		
 
		}
		 
 		
		
	}catch(Exception e)
	{out.println(e);}
	
%>