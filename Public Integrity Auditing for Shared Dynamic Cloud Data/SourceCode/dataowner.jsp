<%@include file="guheader.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null)
{
out.println("<script>alert('Incorrect Credentials!')</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<br><br>
					<form action="dovalidation.jsp" method="post">
					<table align="right">
					<tr><td align="center"><b>Data Owner</b></font></td></tr>
					<tr><td><br></td></tr>
					<tr><td>User Name&nbsp;&nbsp;<input type="text" name="uname" ></td></tr>
					<tr><td>Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password"></td></tr>
					<tr><td><br></td></tr>
					<tr><td align="center"><input type="submit" value="Login"></td></tr>
					</table>
					</form>
<br><br><br><br><br><br><br><br>
<br><br>
