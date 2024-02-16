<%@include file="doheader.jsp"%>
<%
String msg = request.getParameter("msg");
if(msg != null){
out.println("<script>alert('File Upload Failed')</script>");
}

String msg1 = request.getParameter("msg1");
if(msg1 != null){
out.println("<script>alert('Ciphertext received by reviewer')</script>");
}
String msg2 = request.getParameter("msg2");
if(msg2 != null){
out.println("<script>alert('File uploaded')</script>");
}
String msg3 = request.getParameter("msg3");
if(msg3 != null){
out.println("<script>alert('Signature data upload failed!')</script>");
}
%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div align="center"><br><br><br>
<form action="fileupload1.jsp" method="post" ENCTYPE="multipart/form-data">
<table>
<tr>
<td><font size="5">Select file</font></td>
<td><input type="file" name="filename"  required/></td>

<td><input type="submit" value="Continue"  required/></td>
</tr>
</table> <br><br>
<br><br>