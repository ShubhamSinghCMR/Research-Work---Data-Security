<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%@include file="doheader.jsp"%>
<br><br>
<%!
Connection con;
Statement stmt,stmt1,stmt2;
ResultSet rs,rs1,rs2;
String fileid,uploadfile,email;
int count;
%>
<%
String fileid = request.getParameter("fileid");
String fname = request.getParameter("fname");
String filedata = request.getParameter("filedata");session.setAttribute("plaintext",filedata);
String groupname = request.getParameter("gname");session.setAttribute("groupname",groupname);

con = databasecon.getconnection();

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="fileupload31.jsp" method="post">
<table>
<tr>
<td><font size="5">File Id</font></td>
<td><input type="text" name="fileid" value="<%=fileid%>"  readonly/></td>
</tr>
<tr></tr>
<tr>
<td><font size="5">File Name</font></td>
<td><input type="text" name="fname" value="<%=fname%>"  readonly/></td>
</tr>
<tr></tr>
<tr>
<td><font size="5">File Data</font></td>
<td><textarea name="filedata" cols="25" rows="8"><%=filedata%></textarea></td>
</tr>
<tr></tr>
<tr>
<td><font size="5">Group Public Key</font></td>
<%
stmt = con.createStatement();
rs = stmt.executeQuery("select pubkey from addinggroups where groupname='"+groupname+"' ");
if(rs.next()){
%>
<td><textarea name="gpukey" cols="25" rows="8" readonly><%=rs.getString("pubkey")%></textarea></td>
<%
}
%>
</tr><tr></tr>
<tr>
<td><font size="5">Select Users</font></td>
<td><select name="username" multiple required>
<%
stmt = con.createStatement();
rs = stmt.executeQuery("select username from userreg where groupname='"+groupname+"' ");
while(rs.next()){
%>
<option value="<%=rs.getString("username")%>"><%=rs.getString("username")%></option>
<%
}
%>
</tr>
<tr></tr>
<tr>
<td></td>
<td align="left"><input type="submit" value="Continue"></td>
</tr>
</table>
</form>
	</div>
<br><br>