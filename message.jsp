<html>
<%@include file="brbacksidebar.jsp"%>
<%@include file="blbacktopbar.jsp"%>
<head>
 
</head>
<div style="position:absolute;left:400px;top:80">
<body bgcolor="black">


<form name="messageform" action="loadmessage.jsp" method="post">
<table  style="border-collapse:collapse">
 <tr><th><font face="comic sans ms" color="brown" size=5>Innovative thoughts</font>
<tr><td colspan="2"><textarea name="messaget" cols="40" rows="4" style="resize:none"></textarea>
<tr><td><a href="javascript:messageform.submit()"><img src="images/postimg.jpg"></img></a> 
 
</table> 
</div>
</form>
</body>

</html>