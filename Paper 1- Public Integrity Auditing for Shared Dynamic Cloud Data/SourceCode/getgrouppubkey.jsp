<%@page import="databaseconnection.*,java.sql.*"%>
<%@include file="uheader.jsp"%>
<%!
Connection con;
Statement stmt,stmt1,st;
ResultSet rs,rs1;
String gpubkey;
%>
<%
String fileid = request.getParameter("fileid");
String filename = request.getParameter("filename");
//String signaturedata = request.getParameter("sigdata");
String groupname =request.getParameter("groupname");
System.out.println("groupname ="+groupname );
con = databasecon.getconnection();
stmt = con.createStatement();
st = con.createStatement();
 byte[] pub=null;
  byte[] signaturedata=null;
ResultSet r=st.executeQuery("select  signature from cloud where fid='"+fileid+"'");
if(r.next()){
signaturedata=r.getBytes(1);
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="verify.jsp" method="post">
<table>
<tr>
<td><font size="5">File Id</font></td>
<td><input type="text" name="fileid" value="<%=fileid%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">File Name</font></td>
<td><input type="text" name="filename" value="<%=filename%>"  readonly/></td><input type="hidden" name="groupname" value="<%=groupname%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">Signature Data </font></td>
<td><textarea name="sigdata" cols="25" rows="8" readonly><%=new String(signaturedata)%></textarea></td>
</tr>
<%
con = databasecon.getconnection();
stmt = con.createStatement();
String sql="select pubkey from addinggroups where groupname='"+groupname+"' ";
System.out.println("sql="+sql);
rs = stmt.executeQuery("select pubkey from addinggroups where groupname='"+groupname+"' ");
if(rs.next()){
 gpubkey= rs.getString(1);
}
%>
<tr>
<td><font size="5">Group Publickey</font></td>
<td><textarea name="gpubkey"  cols="25" rows="5"  readonly><%=gpubkey%></textarea></td>
</tr>
<tr>
<td></td>
<td align="left"><input type="submit" value="Verify signature"></td>
</tr>
</table>
</form>
	</div>
<br><br>