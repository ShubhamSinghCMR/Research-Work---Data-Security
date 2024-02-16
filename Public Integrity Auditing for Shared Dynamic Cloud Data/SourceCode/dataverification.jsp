<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%@include file="doheader.jsp"%>
<br><br>
		<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('TPA requested')</script>");
}
%>
<%!
Connection con;
Statement stmt,stmt1,stmt2;
ResultSet rs,rs1,rs2;
String fileid,uploadfile,email;
int count;
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<table>
	<tr>
	<th><font size="5"><b>File Id</b></font></th>
	<th><font size="5"><b>File Name</b></font></th>
	<th><font size="5"><b>Group</b></font></th>
	<th><font size="5"><b>Integrity Verification</b></font></th>
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
	<td><a href="dataverification1.jsp?fid=<%=rs.getString("fid")%>&fname=<%=rs.getString("fname")%>&groupname=<%=rs.getString("groupname")%>"><b>Verify</b></a></td>
</tr>
<%
}
%>
</table>
</div>

<br><br>