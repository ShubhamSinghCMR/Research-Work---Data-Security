<%
String uname = request.getParameter("uname");
String password = request.getParameter("password");
if(uname.equals("admin") && (password.equals("admin"))){
String dataowner="DataOwner";
session.setAttribute("dataowner",dataowner);
response.sendRedirect("dohome.jsp?msg=succ");
}
else
{
response.sendRedirect("dataowner.jsp?msg=unsucc");
}
%>