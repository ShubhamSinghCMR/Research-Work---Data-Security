<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="uheader.jsp"%>
<%
String uname = session.getAttribute("uname").toString();
%>
<%
con = databasecon.getconnection();
Statement stmt1=con.createStatement();
ResultSet rss = stmt1.executeQuery("select *from userreg where  status='revoke'  and  username='"+uname +"'");
if(rss.next()){
	System.out.println("if");
response.sendRedirect("userhome.jsp?aces=notacess");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<table>
<tr>
	<th><font size="5"><b>File Id</b></font></th>
	<th><font size="5" ><b>File Name</b></font></th>
	<th><font size="5" ><b>Group</b></font></th>
	<th><font size="5" ><b>Action</b></font></th>
</tr>
<%!
Connection con;
Statement stmt,stmt1;
ResultSet rs,rs1;
%>
<%
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select * from usercloud where groupname =(select groupname from userreg where username='"+uname+"' )");
while(rs.next()){
%>
<tr>
<td ><%=rs.getString("fileid")%></td>
<td><%=rs.getString("filename")%></td>
<td><%=rs.getString("groupname")%></td>
<td ><font size="4" ><a href="filedownload1.jsp?fileid=<%=rs.getString("fileid")%>&filename=<%=rs.getString("filename")%>&groupname=<%=rs.getString("groupname")%>">View</td>
</tr>
<%
}

%>
</table>
</div>
<br><br>