<%session.invalidate();%>
<%
out.println("you are logging out.....");
response.setHeader("Refresh","2;URL=login.jsp");
%>