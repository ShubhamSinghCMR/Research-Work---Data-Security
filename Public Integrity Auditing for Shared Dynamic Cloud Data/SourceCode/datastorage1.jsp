<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%@include file="cssheader.jsp"%>
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
String filename = request.getParameter("filename");
String groupname = request.getParameter("groupname");

con = databasecon.getconnection();

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="datastorage2.jsp" method="post">
<table  align="center">
<tr>
<td><font size="5">File Id</font></td>
<td><input type="text" name="fileid" value="<%=fileid%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">File Name</font></td>
<td><input type="text" name="fname" value="<%=filename%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">Group name</font></td>
<td><input type="text" name="groupname" value="<%=groupname%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">Content</font></td>
<td>
<%
stmt = con.createStatement();

rs = stmt.executeQuery("select signature from cloud where fid='"+fileid+"' and fname='"+filename+"' and groupname='"+groupname+"' ");
if(rs.next()){
	byte[] signature = rs.getBytes("signature");
%>
<textarea cols="20" rows="8"  name="signature"><%=new String(signature)%></textarea>
<%
	}
%>
</td>
</tr>
<tr>
<td></td>
<td align="left"><input type="submit" value="Update data"></td>
</tr>
</table>
</form>
	</div>
<br><br>