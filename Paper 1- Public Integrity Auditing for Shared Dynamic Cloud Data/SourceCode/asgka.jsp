<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="doheader.jsp"%>
<%!
Connection con;
Statement stmt,stmt1;
ResultSet rs,rs1;
StringBuffer asgks = new StringBuffer(); 
String groupname1;
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="" class="forms">
<form action="asgkaa.jsp" method="post">
	<table align="center">
	<tr>
	<td align="right"><font size="5"><b>Select Group</b></font></td>
	<td><select name="gname" required>
	<option value="">Select Group</option>
	<%
	con = databasecon.getconnection();
	stmt = con.createStatement();
	
	rs = stmt.executeQuery("select groupname from addinggroups ");
	while(rs.next()){
	%>
	<option value="<%=rs.getString("groupname")%>"><%=rs.getString("groupname")%></option>
	<%
	}
	%>
	</select></td>
	</tr>
	<tr><td></td><td><input type="submit" value="Continue"></td></tr>
	</table>
	</form>
</div><br><br>
