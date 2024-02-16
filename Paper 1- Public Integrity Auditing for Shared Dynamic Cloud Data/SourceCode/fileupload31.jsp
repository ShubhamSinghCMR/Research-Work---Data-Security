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
con = databasecon.getconnection();
Statement stt = con.createStatement();

String fileid = request.getParameter("fileid");
String fname = request.getParameter("fname");
String filedata = request.getParameter("filedata");
String groupname = request.getParameter("gname");
String gpukey = request.getParameter("gpukey");
String[] users = request.getParameterValues("username");
//System.out.println("users:--------------------"+users[0]);
//System.out.println("users:--------------------"+users[1]);
StringBuffer usernames = new StringBuffer();
StringBuffer usernames2 = new StringBuffer();

session.setAttribute("usernames",usernames);
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="fileupload4.jsp" method="post">
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
<td><input type="text" name="gpukey" value="<%=gpukey%>"  readonly/></td>
</tr><tr></tr>
<tr>
<td><font size="5">User Secret Keys</font></td>
<%
for(int i=0;i<users.length;i++){
ResultSet rss = stt.executeQuery("select prikey from userreg where username='"+users[i]+"' ");
rss.next();

%>
<tr>
<td align="right"><font size="5"><%=users[i]%>'s secret key</font></td>
<td><textarea name="filedata" cols="20" rows="3" readonly><%=rss.getString("prikey")%></textarea></td>
</tr>
<%
	usernames2.append(rss.getString("prikey"));
	usernames2.append("#");
}
	System.out.println("usernames2"+usernames2);
	session.setAttribute("usernames2",usernames2);

%>
</tr>
<tr></tr>
<tr>
<td></td>
<td align="left"><input type="submit" value="Generate signature"></td>
</tr>
</table>
</form>
	</div>
<br><br>
