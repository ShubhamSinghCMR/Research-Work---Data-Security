<%@page import="databaseconnection.*,java.sql.*,java.io.*, java.security.*,java.security.spec.*"%>
<%@include file="uheader.jsp"%>
<%!
Connection con;
Statement stmt,stmt1,st;
ResultSet rs,rs1;
byte[] gpubkey;
byte[] buffer;
byte[] sigdata;
%>
<% con = databasecon.getconnection();
st = con.createStatement();
String fileid = request.getParameter("fileid");
String filename = request.getParameter("filename");
String grpubkey= request.getParameter("gpubkey");
String groupname = request.getParameter("groupname");

%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="finalDownload.jsp" method="post">
<table>
<tr>
<td><font size="5">File Id</font></td>
<td><input type="text" name="fileid" value="<%=fileid%>"  readonly/></td>
</tr>
<tr>
<td><font size="5">File Name</font></td>
<td><input type="text" name="filename" value="<%=filename%>"  readonly/></td>
</tr>
<%
con = databasecon.getconnection();
stmt = con.createStatement();
String grpubkey1=null;
String sql="select pubkey from addinggroups where groupname='"+groupname +"' ";
System.out.println("sql ="+sql);
ResultSet rss = st.executeQuery("select pubkey from addinggroups where groupname='"+groupname +"'  ");
if(rss.next()){
grpubkey1=rss.getString(1);
}
System.out.println("grpubkey1 ="+grpubkey1.hashCode());
System.out.println("grpubkey ="+grpubkey.hashCode());

rs = stmt.executeQuery("select pk from addinggroups where groupname='"+groupname+"' ");
if(rs.next()){
gpubkey = rs.getBytes(1);
}

rs = stmt.executeQuery("select pk from addinggroups where groupname='"+groupname+"' ");
if(rs.next()){
gpubkey = rs.getBytes(1);
}
stmt1 = con.createStatement();
rs1 = stmt.executeQuery("select * from cloud where fid='"+fileid+"' and fname='"+filename+"' and groupname='"+groupname+"' ");
if(rs1.next()){
	buffer = rs1.getBytes("plaintext");
	sigdata = rs1.getBytes("signature");
}
int len = new String(buffer).length(); 
 X509EncodedKeySpec pubKeySpec = new X509EncodedKeySpec(gpubkey);
 
            KeyFactory keyFactory1 = KeyFactory.getInstance("EC","SunEC");
            PublicKey pubKey1 = keyFactory1.generatePublic(pubKeySpec);
		 
Signature    sig1 = Signature.getInstance("SHA1withECDSA","SunEC");
            sig1.initVerify(pubKey1);
			 sig1.update(buffer, 0, len);
			 boolean verifies = sig1.verify(sigdata);
			 out.println("<script>alert('Valid signature. File can be downloaded')</script>");

			  System.out.println("signature verifies: " + verifies);
   

%>
<tr>
<td><font size="5">Signature Data</font></td>
<% if(verifies){%>
<td><textarea name="sigdata" cols="25" rows="8" readonly><%=new String(buffer) %></textarea></td><%}else{%>
<td><textarea name="sigdata" cols="25" rows="8" readonly><%=new String(sigdata)%></textarea></td><%}%>
</tr>
<tr>
<td></td>
<td align="left"><input type="submit" value="Download the file"></td>
</tr>
</table>
</form>
	</div>
<br><br>