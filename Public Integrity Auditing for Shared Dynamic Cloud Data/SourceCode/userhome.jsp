<%@include file="uheader.jsp"%>
<%
String msg = request.getParameter("aces");
if(msg != null){
out.println("<script>alert('You can not access file')</script>");
}
String msg1 = request.getParameter("aces1");
if(msg1 != null){
out.println("<script>alert('You can not upload file')</script>");
}
%>
<br><br>

<br><br>