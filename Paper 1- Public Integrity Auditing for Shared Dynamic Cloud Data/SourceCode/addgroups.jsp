<%@page import="databaseconnection.*,java.sql.*,DSA.*"%>
<%@include file="doheader.jsp"%>
<%!
Connection con;
Statement stmt,stmt1;
ResultSet rs;
%>
<%
String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Group already exists!')</script>");
}
String msg2 = request.getParameter("msg2");
if(msg2 != null){
out.println("<script>alert('Group added')</script>");
}
String msg3 = request.getParameter("msg3");
if(msg3 != null){
out.println("<script>alert('Error adding group!')</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="" class="forms">
<form action="addgroup1.jsp" method="post">
	<table align="center">
	<tr>
	<td align="right"><b>Enter group name </b>&nbsp;&nbsp;&nbsp;<input type="text" name="addgroups">&nbsp;&nbsp;<input type="submit" value="Add Group"></td></tr>
	</table>
	</form>
</div>
<br></br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Existing groups</b>
<div id="" class="forms1">
<table  align="center">
<%
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select groupname from addinggroups");
int i=0;
while(rs.next()){
	i++;
%>
<tr><td align="center"><font color="#333333" size="4"><b><%=i%>.</b></font></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td><font color="#333333" size="4"><b><%=rs.getString("groupname")%></b></font></td></tr>
<%
}
%>	
</table>
</div>
<br>