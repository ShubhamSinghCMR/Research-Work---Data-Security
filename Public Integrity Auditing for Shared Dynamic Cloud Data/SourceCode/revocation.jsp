
<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%@include file="doheader.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('User revocked')</script>");
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
<table>
	<tr>
	<th><font size="5"><b>User </b></font></th>
	<th><font  size="5"><b>Group </b></font></th>
	<th><font  size="5"><b>Action</b></font></th>
	</tr>
	<%
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select * from userreg where status='normal' and groupname is not null ");
while(rs.next()){
%>
<tr>
<td><%=rs.getString("username")%></td>

	<td><%=rs.getString("groupname")%></td>
	<td><a href="revocation1.jsp?username=<%=rs.getString("username")%>&email=<%=rs.getString("email")%>&groupname=<%=rs.getString("groupname")%>"><b>Revoke user</b></a></td>
</tr>
<%
}
%>
</table>
</div>
<br><br>