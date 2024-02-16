<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="doheader.jsp"%>
<%!
Connection con;
Statement stmt,stmt1;
ResultSet rs,rs1;
%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('No public and private key for this group!')</script>");
}
String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('User added')</script>");
}
String msg2 = request.getParameter("msg2");
if(msg2 != null){
out.println("<script>alert('User not added!')</script>");
}
%>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="" class="forms">
<form action="addusers1.jsp" method="post">
	<table align="center">
	<tr>
	<td ><b>Select user</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="uname" required>
	<option value="">Select user</option>
	<%
	con = databasecon.getconnection();
	stmt = con.createStatement();
	
	rs = stmt.executeQuery("select username from userreg ");
	while(rs.next()){
	%>
	<option value="<%=rs.getString("username")%>"><%=rs.getString("username")%></option>
	<%
	}
	%>
	</select></td>
	</tr>
	<tr>
	<td ><b>Select group</b>&nbsp;&nbsp;<select name="gname" required>
	<option value="">Select group</option>
	<%
	stmt1 = con.createStatement();
	
	rs1 = stmt1.executeQuery("select groupname from addinggroups");
	while(rs1.next()){
	%>
	<option value="<%=rs1.getString("groupname")%>"><%=rs1.getString("groupname")%></option>
	<%
	}
	%>
	</select></td>
	</tr>
	<tr><td>&nbsp;</td></tr>
		<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Add user"></td></tr>
	</table>
	</form>
</div>
<br><br>