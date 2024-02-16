<%@include file="guheader.jsp"%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div align="center">
<form action="userreginsert.jsp" method="post">
<table>
<tr>
<td><font size="5">Name</font></td>
<td><input type="text" name="name"  required/></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td><font size="5">User Name</font></td>
<td><input type="text" name="uname"   required/></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td><font size="5">Password</font></td>
<td><input type="password" name="password"  required/></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td><font size="5">Email</font></td>
<td><input type="email" name="email"  required/></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td><font size="5">Contact</font></td>
<td><input type="text" name="contact" maxlength="10" required/></td>
</tr>
<tr><td>&nbsp;</td></tr>
<tr>
<td></td>
<td align="right"><input type="submit" value="Register User"></td><td></td>

</tr>
</table>
</form>
</div>
<br><br>