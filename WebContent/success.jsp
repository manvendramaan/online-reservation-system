<%
    if ((session.getAttribute("userid") == null) || (session.getAttribute("userid") == "")) {
%>
You are not logged in<br/>
<a href="index.jsp">Please Login</a>
<%} else {
%>
<body bgcolor="#E3E2DE">
  <center><h1>Train Reservation System</h1><br>
Welcome,&nbsp; <%=session.getAttribute("userid")%>

<form method="post" action="train.jsp">
          
            <table bgcolor="#FCA014" border="1" width="30%" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Enter Train Details</th>
                    </tr>
                </thead>
                <tbody>
        <tr>
				<td>From Station :</td>
				<td><input type="text" name="source" /></td>
			</tr>
			<tr>
				<td>To Station :</td>
				<td><input type="text" name="destination"  /></td>
			</tr>
			<tr>
				<td>Journey Date (DD/MM/YYYY) :</td>
				<td><input type="text" name="doj"  /></td>
			</tr>
			<tr>
				<td>Class (1A, 2A, 3A, SL, CC) :</td>
				<td><input type="text" name="class"  /></td>
			</tr>
<tr>
                        <td><input type="submit" value="Submit" /></td>
                        <td><input type="reset" value="Reset" /></td>
                    </tr>
                   
                </tbody>
            </table>
        </form>


<br><br><a href='history.jsp'>Book History</a>
<br><br><a href='logout.jsp'>Log out</a>  </center>
<%
    }
%>
</body>