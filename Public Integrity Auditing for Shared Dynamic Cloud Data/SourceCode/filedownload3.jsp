<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="uheader.jsp"%>
<%
String uname = session.getAttribute("uname").toString();
%>
<%!
Connection con;
Statement stmt,stmt1,st;
ResultSet rs,rs1;
String ugprikey;
byte[] decyptdata=null;
%>
<%

String fileid = request.getParameter("fileid");
String filename = request.getParameter("filename");
String groupname =request.getParameter("groupname");
//String encdata =request.getParameter("encdata");
String ugprikey =request.getParameter("ugprikey");
try{
con = databasecon.getconnection();
stmt = con.createStatement();
rs =stmt.executeQuery("select AES_DECRYPT(encrypdata,'key') as decrypt from usercloud where groupname='"+groupname +"' and fileid='"+fileid+"'  ");
if(rs.next()){
decyptdata = rs.getBytes("decrypt");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="ufinalDownload.jsp" method="post">
<table>
<tr>
<td><font size="5">File Id</font></td>
<td><input type="text" name="fileid" value="<%=fileid%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">File Name</font></td>
<td><input type="text" name="filename" value="<%=filename%>"  readonly/></td><input type="hidden" name="groupname" value="<%=groupname%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">Decrypted File</font></td>
<td><textarea name="sigdata" cols="25" rows="8" readonly><%=new String(decyptdata)%></textarea></td>
</tr>
<td></td>
<td align="left"><input type="submit" value="Download File"></td>
</tr>
</table>
</form>
<%}catch(Exception e){ e.printStackTrace();
response.sendRedirect("filedownload1.jsp?fileid="+fileid+"&filename="+filename+"&groupname="+groupname+"&gpkey=wrong");
}%>
	</div>
<br><br>