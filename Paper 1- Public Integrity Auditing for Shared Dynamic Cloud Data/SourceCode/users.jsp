<%@include file="guheader.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('User registered!')</script>");
}
String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('User not registered!')</script>");
}
String msg2 = request.getParameter("msg2");
if(msg2 != null){
out.println("<script>alert('Invalid credentials!')</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					<div class="forms">
					<form action="uservalidation.jsp" method="post">
					<table align="right">
					<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>User</b></td></tr>
					<tr><td><br></td></tr>
					<tr><td><b>User Name</b>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="uname"></td></tr>
					<tr><td><b>Password</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="password" ></td></tr>
                    					<tr><td><br></td></tr>
					<tr><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="Login"><br><br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="userregistration.jsp">Register new user</a></td></tr>
					</table>
					</form>
				</div><br><br>