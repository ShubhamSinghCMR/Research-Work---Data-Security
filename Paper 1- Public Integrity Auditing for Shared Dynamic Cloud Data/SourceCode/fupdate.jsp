<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%@include file="doheader.jsp"%>
<br><br>
		<%
String msg = request.getParameter("msges");
if(msg != null){
out.println("<script>alert('File updated')</script>");
}
%>
<%!
Connection con;
Statement stmt,stmt1,stmt2;
ResultSet rs,rs1,rs2;
String fileid,uploadfile,email;
int count;
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<table align="center">
	<tr>
	<th><font size="5"><b>File Id</b></font></th>
	<th><font size="5"><b>File Name</b></font></th>
	<th><font size="5"><b>Group</b></font></th>
	<th><font size="5"><b>Action</b></font></th>
	</tr>
<%
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select fid,fname,groupname from cloud ");
while(rs.next()){
%>
<tr>
<td><%=rs.getString("fid")%></td>
	<td><%=rs.getString("fname")%></td>
	<td><%=rs.getString("groupname")%></td>
<td><a href="Re-Sign.jsp?fid=<%=rs.getString("fid")%>&fname=<%=rs.getString("fname")%>&groupname=<%=rs.getString("groupname")%>"><b>Resignature file</b></a></td>
</tr>
<%
}
%>
</table>
</div>

<br><br>
