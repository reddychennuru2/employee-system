<%@ include file="brbacksidebar.jsp"%>
<%@ include file="blbacktopbar.jsp"%>
<body bgcolor="black">
<%@ include file="brbacksidebar.jsp"%>
<div style="position:absolute;left:400px;top:80">
 
	<body link=white>
	<%!
		String susername;
	%>
	<%
		susername=(String)session.getAttribute("puser");
	%>
	<%@ page import="mp.*"%>
	<%@ page import="java.sql.*"%>
	
	<%!
		String name,mail,company,day,month,year; 
		PreparedStatement ps1;
		ResultSet rs1,rs;
	%>
	<%
		try
		{
			dbcon.getConnection();
			ps1=dbcon.con.prepareStatement("select * from signuptable where unf=?");
			ps1.setString(1,susername);
			rs1=ps1.executeQuery();
		}
		catch(Exception ex)
		{
			out.println(ex);
		}
	%>
	<%
		try{
		while(rs1.next())
		{
			 
			
			 name=rs1.getString("namef");		 
			 
			 mail=rs1.getString("mailf");
			company=rs1.getString("companyf"); 
			day=rs1.getString("dayf");
			month=rs1.getString("monthf");
			year=rs1.getString("yearf");
		}
		}catch(Exception ex){}
	%>
		 
		<form name=lf method=post action="loadsignup.jsp">
		<div>
		<table align=center cellspacing="10">
		<tr><th><font size=7 face="comic sans ms" color="brown">profile</font>
		<tr>
		<th align=left><font size=5 color="brown">name</font>
		<th align=left><font size=5 color="brown"><%=name%></font>
		<tr>
		<th align=left><font size=5 color="brown">username</font>
		<th align=left><font size=5 color="brown"><%=susername%></font>
		<tr>
		<th align=left><font size=5 color="brown">mail</font>
		<th align=left><font size=5 color="brown"><%=mail%></font>
		<tr>
		<th align=left><font size=5 color="brown">company</font>
		<th align=left><font size=5 color="brown"><%=company%></font>
		<tr>
		<th align=left><font size=5 color="brown">Birthday</font>
		<td align=left><font size=5 color="brown"><%=day%><%out.println("/");%></font>
		
		<td align=left><font size=5 color="brown"><%=month%><%out.println("/");%></font>
		<td align=left><font size=5 color="brown"><%=year%></font>
</div>
	</body>
