<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="uheader.jsp"%>
	<%
	String uname="";
		try{
		uname = session.getAttribute("uname").toString();
		}
		catch(Exception e){}
%>
<%
String msg = request.getParameter("aces");
if(msg != null){
out.println("<script>alert('File access denied!')</script>");
}
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
	<th><font size="5" ><b>File Id</b></font></th>
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
rs = stmt.executeQuery("select groupname,prikey from userreg where username='"+uname+"' ");
if(rs.next()){
	String prikey=rs.getString(2);
	session.setAttribute("prikey",prikey);
stmt1 = con.createStatement();
rs1 = stmt1.executeQuery("select * from cloud where groupname='"+rs.getString(1)+"' ");
while(rs1.next()){
%>
<tr>
<td ><font size="4" ><%=rs1.getString("fid")%></td>
<td><font size="4" ><%=rs1.getString("fname")%></td>
<td><font size="4" ><%=rs1.getString("groupname")%></td>
<td ><font size="4" ><b><a href="viewdata.jsp?fileid=<%=rs1.getString("fid")%>&filename=<%=rs1.getString("fname")%>&groupname=<%=rs1.getString("groupname")%>">View</b></a></td>
</tr>
<%
}
}
%>
</table>
</div>
<br><br>