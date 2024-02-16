<%@include file="header.jsp"%>
			<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Invalid credentials!')</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div class="forms">
					<form action="tpavalidation.jsp" method="post">
					<table>
					<tr><td><font size="5">User Name&nbsp;<input type="text" name="uname"  required=""></td></tr>
					<tr><td><font size="5">Password&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" required=""></td></tr>
					<tr><td><br></td></tr>
					<tr><td><input type="submit" value="Login"></td></tr>
					</table>
					</form>
					</div>
					<br><br>