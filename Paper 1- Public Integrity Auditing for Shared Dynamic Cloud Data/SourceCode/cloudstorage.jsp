<%@include file="header.jsp"%>
			<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Incorrect credentials!')</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<div class="forms">
					<form action="cssvalidation.jsp" method="post">
					<table align="center">
					<tr><td><font  size="5">User Name</font><input type="text" name="uname" required=""></td></tr>
					<tr><td><font size="5">Password&nbsp;&nbsp;&nbsp;</font><input type="password" name="password"  required=""></td></tr>
					<tr><td><input type="submit" value="Login"></td></tr>
					</table>
					</form>
					</div>
<br><br>