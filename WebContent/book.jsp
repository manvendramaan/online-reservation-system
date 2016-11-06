<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>



        
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Ticket</title>
    </head>
    <body bgcolor="#E3E2DE">
    
    Train Number:&nbsp; <%=session.getAttribute("tno")%>&nbsp;&nbsp;&nbsp;
     Train Name:&nbsp; <%=session.getAttribute("tname")%><br>
      Source:&nbsp; <%=session.getAttribute("s1")%>&nbsp;&nbsp;&nbsp;
       Destination:&nbsp; <%=session.getAttribute("d1")%><br>
        Date Of Journey:&nbsp; <%=session.getAttribute("date1")%>&nbsp;&nbsp;&nbsp;
         Class:&nbsp; <%=session.getAttribute("c1")%>
<center>    
  <table border="1" width="30%" height="30%">
  <tr><th><font color='#D18603'>S. No.</font></th>
  <th><font color='#D18603'>Name</font></th>
  <th><font color='#D18603'>Age</font></th>
  <th><font color='#D18603'>Gender</font></th>
  <th><font color='#D18603'>Berth Preference</font></th>
  <th><font color='#D18603'>Senior Citizen</font></th>
  <th><font color='#D18603'>AADHAAR No.(Optional)</font></th>
  </tr>
        <form method="post" action="bookconfirm.jsp">
          
<tr>
<td><b><font color='#663300'>1</font></b></td>
<td><b><font color='#663300'><input type="text" name="name1" /></font></b></td>
<td><b><font color='#663300'><input type="text" name="age1" /></font></b></td>
<td><b><font color='#663300'><select name="gender1">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></font></b></td>
<td><b><font color='#663300'><select name="berth1">
<option value="no_preference">No Preference</option>
<option value="lower">Lower</option>
<option value="middle">Middle</option>
<option value="upper">Upper</option>
<option value="side_lower">Side Lower</option>
<option value="side_upper">Side Upper</option>
</select></font></b></td>
<td><b><font color='#663300'><input type="checkbox" name="senior1" value="senior"/></font></b></td>
<td><b><font color='#663300'><input type="text" name="aadhaar1" /></font></b></td>
</tr>
<tr>
<td><b><font color='#663300'>2</font></b></td>
<td><b><font color='#663300'><input type="text" name="name2" /></font></b></td>
<td><b><font color='#663300'><input type="text" name="age2" /></font></b></td>
<td><b><font color='#663300'><select name="gender2">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></font></b></td>
<td><b><font color='#663300'><select name="berth2">
<option value="no_preference">No Preference</option>
<option value="lower">Lower</option>
<option value="middle">Middle</option>
<option value="upper">Upper</option>
<option value="side_lower">Side Lower</option>
<option value="side_upper">Side Upper</option>
</select></font></b></td>
<td><b><font color='#663300'><input type="checkbox" name="senior2" value="senior"/></font></b></td>
<td><b><font color='#663300'><input type="text" name="aadhaar2" /></font></b></td>
</tr>
<tr>
<td><b><font color='#663300'>3</font></b></td>
<td><b><font color='#663300'><input type="text" name="name3" /></font></b></td>
<td><b><font color='#663300'><input type="text" name="age3" /></font></b></td>
<td><b><font color='#663300'><select name="gender3">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></font></b></td>
<td><b><font color='#663300'><select name="berth3">
<option value="no_preference">No Preference</option>
<option value="lower">Lower</option>
<option value="middle">Middle</option>
<option value="upper">Upper</option>
<option value="side_lower">Side Lower</option>
<option value="side_upper">Side Upper</option>
</select></font></b></td>
<td><b><font color='#663300'><input type="checkbox" name="senior3" value="senior"/></font></b></td>
<td><b><font color='#663300'><input type="text" name="aadhaar3" /></font></b></td>
</tr>
<tr>
<td><b><font color='#663300'>4</font></b></td>
<td><b><font color='#663300'><input type="text" name="name4" /></font></b></td>
<td><b><font color='#663300'><input type="text" name="age4" /></font></b></td>
<td><b><font color='#663300'><select name="gender4">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></font></b></td>
<td><b><font color='#663300'><select name="berth4">
<option value="no_preference">No Preference</option>
<option value="lower">Lower</option>
<option value="middle">Middle</option>
<option value="upper">Upper</option>
<option value="side_lower">Side Lower</option>
<option value="side_upper">Side Upper</option>
</select></font></b></td>
<td><b><font color='#663300'><input type="checkbox" name="senior4" value="senior"/></font></b></td>
<td><b><font color='#663300'><input type="text" name="aadhaar4" /></font></b></td>
</tr>
<tr>
<td><b><font color='#663300'>5</font></b></td>
<td><b><font color='#663300'><input type="text" name="name5" /></font></b></td>
<td><b><font color='#663300'><input type="text" name="age5" /></font></b></td>
<td><b><font color='#663300'><select name="gender5">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></font></b></td>
<td><b><font color='#663300'><select name="berth5">
<option value="no_preference">No Preference</option>
<option value="lower">Lower</option>
<option value="middle">Middle</option>
<option value="upper">Upper</option>
<option value="side_lower">Side Lower</option>
<option value="side_upper">Side Upper</option>
</select></font></b></td>
<td><b><font color='#663300'><input type="checkbox" name="senior5" value="senior"/></font></b></td>
<td><b><font color='#663300'><input type="text" name="aadhaar5" /></font></b></td>
</tr>
<tr>
<td><b><font color='#663300'>6</font></b></td>
<td><b><font color='#663300'><input type="text" name="name6" /></font></b></td>
<td><b><font color='#663300'><input type="text" name="age6" /></font></b></td>
<td><b><font color='#663300'><select name="gender6">
<option value="select">Select</option>
<option value="male">Male</option>
<option value="female">Female</option>
</select></font></b></td>
<td><b><font color='#663300'><select name="berth6">
<option value="no_preference">No Preference</option>
<option value="lower">Lower</option>
<option value="middle">Middle</option>
<option value="upper">Upper</option>
<option value="side_lower">Side Lower</option>
<option value="side_upper">Side Upper</option>
</select></font></b></td>
<td><b><font color='#663300'><input type="checkbox" name="senior6" value="senior"/></font></b></td>
<td><b><font color='#663300'><input type="text" name="aadhaar6" /></font></b></td>
</tr>
     <tr>
                        <td colspan="10"><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>      
        </form>
        </table>
        <br><br><a href='logout.jsp'>Log out</a>
         </center>
    </body>
</html>
