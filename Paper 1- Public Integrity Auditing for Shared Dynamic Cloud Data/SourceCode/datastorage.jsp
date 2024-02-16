<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%@include file="cssheader.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Cloud data updated by server admin')</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<%!
Connection con;
Statement stmt,stmt1,stmt2;
PreparedStatement pstmt;
ResultSet rs,rs1,rs2;
String fileid,uploadfile,email;
int count;
String encryptdata;
%>
<div align="center">
<table align="center">
	<tr>
	<th><font size="5"><b>File ID</b></font></th>
	<th><font  size="5"><b>File Name</b></font></th>
	<th><font size="5"><b>Group</b></font></th>
	<th><font size="5"><b>Action</b></font></th>
	</tr>
	<%
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select * from cloud");
while(rs.next()){
%>
<tr>
<td><%=rs.getString("fid")%></td>
	<td><%=rs.getString("fname")%></td>
	<td><%=rs.getString("groupname")%></td>
<td><a href="datastorage1.jsp?fileid=<%=rs.getString("fid")%>&filename=<%=rs.getString("fname")%>&groupname=<%=rs.getString("groupname")%>"><b>View</b></a></td>
</tr>
<%
}
%>
</table>
</div>
<br><br>