<%@page import="databaseconnection.*,java.sql.*,RSA.*,java.io.*"%>
<%
Connection con = null;
Statement st = null;
ResultSet rs1 = null;
String uname = session.getAttribute("uname").toString();
String gpname = session.getAttribute("grpname").toString();
String fname = session.getAttribute("myfname").toString();

try{
con=databasecon.getconnection();
st=con.createStatement();
st.executeUpdate("insert into u_ftab(uname,gpname,fname) values('"+uname+"','"+gpname+"','"+fname+"')");


st.close();

con.close();
}

catch(Exception ex)
{
	out.println(ex);
}

response.sendRedirect("ufileupload.jsp?ms=suc");


%>