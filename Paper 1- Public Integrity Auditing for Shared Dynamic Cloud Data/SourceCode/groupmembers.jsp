<%@include file="doheader.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('Asymmetric Group Key Agreement scheme applied')</script>");
}
String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Asymmetric Group Key Agreement can't be applied)</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<center><div class="form1"><b>Group Members</b><br><br>
<a href="addusers.jsp">Add users to a group</a><br>
<a href="asgka.jsp">Asymmetric Group Key Agreement</a>
</div></center>
<br><br>