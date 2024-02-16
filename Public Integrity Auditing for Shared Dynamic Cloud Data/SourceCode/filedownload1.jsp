<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="uheader.jsp"%>
<%
String uname = session.getAttribute("uname").toString();
%>
<%
String gpkey = request.getParameter("gpkey");
if(gpkey != null){
out.println("<script>alert('Incorrect ASGKA')</script>");
}%>
<%!
Connection con;
boolean status=false;
Statement stmt,stmt1;
ResultSet rs,rs1;
byte[] sigdata;
byte[] encrypdata=null;
%>
<%
con = databasecon.getconnection();
stmt = con.createStatement();

String fileid = request.getParameter("fileid");
String filename = request.getParameter("filename");
String groupname = request.getParameter("groupname");
session.setAttribute("groupname",groupname);

rs = stmt.executeQuery("select * from usercloud where fileid='"+fileid+"' and filename='"+filename+"' and groupname='"+groupname+"' ");
if(rs.next())
{
	encrypdata = rs.getBytes("encrypdata");
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="#" method="post">
<table>
<tr>
<td><font size="5">File Id</font></td>
<td><input type="text" name="fileid" value="<%=fileid%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">File Name</font></td>
<td><input type="text" name="fname" value="<%=filename%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">Content</font></td>
<td><textarea name="encdata" cols="25" rows="8" readonly><%=new String(encrypdata)%></textarea></td>
</tr>
<tr>
<td></td>
<td align="left"><a href="filedownload2.jsp?fileid=<%=fileid%>&groupname=<%=groupname%>&filename=<%=filename%>">Generate Key</a></td>
</tr>
</table>
</form>
</div>
<%
}	
%>
<br><br>