<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%@include file="uheader.jsp"%>
<br><br>
<%!
Connection con;
Statement stmt,stmt1,stmt2;
ResultSet rs,rs1,rs2;
String fileid,uploadfile,email;
int count;
%>
<%
String uname = session.getAttribute("uname").toString();
%>

<%
String fileid = request.getParameter("fileid");
String fname = request.getParameter("fname");
String filedata = request.getParameter("filedata");

con = databasecon.getconnection();

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="ufileupload3.jsp" method="post">
<table>
<tr>
<td><font size="5">File Id</font></td>
<td><input type="text" name="fileid" value="<%=fileid%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">File Name</font></td>
<td><input type="text" name="fname" value="<%=fname%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">File Data</font></td>
<td><textarea name="filedata" cols="25" rows="8"><%=filedata%></textarea></td>
</tr>
<tr>
<td><font size="5">User Public Key</font></td>
<%
stmt = con.createStatement();
rs = stmt.executeQuery("select groupname from userreg where username='"+uname+"' ");
if(rs.next()){
	String grpname = rs.getString("groupname");session.setAttribute("grpname",grpname);
stmt1 = con.createStatement();
rs1 = stmt1.executeQuery("select pubkey,agk from userreg where groupname='"+rs.getString("groupname")+"' "); 
if(rs1.next()){
	String asgkprikey = rs1.getString("agk");session.setAttribute("asgkprikey",asgkprikey);
%>
<td><textarea cols="25" rows="5" name="ugpubkey" readonly><%=rs1.getString("pubkey")%></textarea></td>
<%
}
}
%>
</tr>
<tr>
<td></td>
<td align="left"><input type="submit" value="Encrypt the file"></td>
</tr>
</table>
</form>
	</div>
<br><br>