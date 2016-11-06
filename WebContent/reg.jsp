<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body  bgcolor="#E3E2DE">
      <center>
    <h1>Train Reservation System</h1>
        <form method="post" action="registration.jsp">
          
            <table bgcolor="#FCA014" border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Information Here</th>
                    </tr>
                </thead>
                <tbody>
        <tr>
				<td>First Name :</td>
				<td><input type="text" name="fname" /></td>
			</tr>
			<tr>
				<td>Last Name :</td>
				<td><input type="text" name="lname"  /></td>
			</tr>
			<tr>
<td>Email ID :</td>
<td><input type="text" name="email" /></td>
</tr>
<tr>
<td>Gender :</td>
<td><input type="text" name="gender" /></td>
</tr>
<tr>
<td>Marital Status :</td>
<td><input type="text" name="status" /></td>
</tr>
<tr>
<td>Contact :</td>
<td><input type="text" name="phone" value="" /></td>
</tr>
<tr>
<td>Username :</td>
<td><input type="text" name="uname" /></td>
</tr>
<tr>
<td>Password :</td>
<td><input type="password" name="pword" "/></td>
</tr>
                    <tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                    <tr>
                        <td colspan="2">Already registered!! <a href="index.jsp">Login Here</a></td>
                    </tr>
                </tbody>
            </table>
            </center>
        </form>
    </body>
</html>
