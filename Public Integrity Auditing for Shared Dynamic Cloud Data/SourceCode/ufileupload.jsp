<%@include file="uheader.jsp"%>
<%@page import="databaseconnection.*,java.sql.*"%>
<%
String uname = session.getAttribute("uname").toString();
%>

<%
String ms = request.getParameter("ms");
if(ms != null){
out.println("<script>alert('File shared')</script>");
}
Connection con = databasecon.getconnection();
Statement stmt1=con.createStatement();
ResultSet rss = stmt1.executeQuery("select *from userreg where  status='revoke' and  username='"+uname +"' ");
if(rss.next()){
response.sendRedirect("userhome.jsp?aces1=notacess");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="center"><br><br><br>
<form action="ufileupload1.jsp" method="post" ENCTYPE="multipart/form-data">
<table>
<tr>
<td><font size="5">Select file</font><input type="file" name="filename"  required/><input type="submit" value="Continue"  required/></td>
</tr>
</table> <br><br>