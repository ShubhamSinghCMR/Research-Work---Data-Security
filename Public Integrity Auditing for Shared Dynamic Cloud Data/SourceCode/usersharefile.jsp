<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="uheader.jsp"%>
<%
String uname = session.getAttribute("uname").toString();
%>
<%!
Connection con;
Statement stmt,stmt1;
ResultSet rs;
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div id="" class="forms1">
<table  align="center">
<%
con = databasecon.getconnection();
stmt = con.createStatement();
rs = stmt.executeQuery("select fname from u_ftab where uname='"+uname+"'");
int i=0;
while(rs.next()){
	i++;
%>
<tr><td align="center"><font color="#333333" size="4"><b><%=i%>. </b></font></td><td>&nbsp;&nbsp;&nbsp;&nbsp;</td><td><font color="#333333" size="4"><%=rs.getString("fname")%></font></td><td><font color="#333333" size="4"><a href="resign.jsp?fname=<%=rs.getString("fname")%>"><b>ReSign</b></a></font></td></tr>
<%
}
%>	
</table>
</div>

<br><br>