<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="doheader.jsp"%>
<%!
Connection con;
Statement stmt,stmt1;
ResultSet rs,rs1;
StringBuffer asgks = new StringBuffer(); 
String groupname1;
%>
<%
String grpname = request.getParameter("gname");session.setAttribute("grpname",grpname);
%>
<br><br>	<br><br><br>	<br><br><br>	<br><br><br>	<br><br><br>
<div id="" class="forms">
	<br><br><br>
	<table align="center">
	<tr>
	<th><font size="5"><b>User</b></font></th>
	<th><font size="5"><b>Group</b></font></th>
	</tr>
	<%
	con = databasecon.getconnection();
	stmt1 = con.createStatement();
	rs1 = stmt1.executeQuery("select  * from userreg where groupname='"+grpname+"' ");
	while(rs1.next()){
		asgks.append(rs1.getString("username"));
		asgks.append(",");
		System.out.println(asgks);
	%>
	<tr>
	<td><%=rs1.getString("username")%></td>
	<td><%=rs1.getString("groupname")%></td>
	</tr>
	<%
	}if(asgks != null){
	asgks.deleteCharAt(asgks.length()-1);
	}
	%>
</table>
<br>
<center><a href="asgka1.jsp?asgkss=<%=asgks%>&grpname=<%=grpname%>"><font size="3"><b>Genrate ASGKA key</b></font></a></center>
</div>
<br><br>