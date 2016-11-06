<%@ page import ="java.sql.*" %>
<body bgcolor="#E3E2DE">
<center>
  <table border="1" width="30%" height="30%">
  <tr><th><font color='#D18603'>Train Number</font></th>
  <th><font color='#D18603'>Train Name</font></th>
  <th><font color='#D18603'>Source</font></th>
  <th><font color='#D18603'>Destination</font></th>
  <th><font color='#D18603'>Date</font></th>
  <th><font color='#D18603'>Class</font></th>
  <th><font color='#D18603'>Name</font></th>
  <th><font color='#D18603'>Age</font></th>
  <th><font color='#D18603'>Gender</font></th>
  <th><font color='#D18603'>Berth</font></th>
  <th><font color='#D18603'>Cancellation</font></th>
  </tr>
<%
   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/train_reservation",
            "root", "maan");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from bookinfo");
   while (rs.next()) {
        
	   String tno = rs.getString("train_no"); 
	   String tname = rs.getString("train_name"); 
	   String s1 = rs.getString("source");  
	    String d1 = rs.getString("destination");
	    String date1 = rs.getString("date");
	    String c1 = rs.getString("class");
        String name = rs.getString("name");
        String age = rs.getString("age");
        String gender = rs.getString("gender");
        String berth = rs.getString("berth");
     
        
       session.setAttribute("name", name);
       session.setAttribute("c1", c1);
       session.setAttribute("tno", tno);    
       

 
%>
<tr>
<td><b><font color='#663300'><%=tno%></font></b></td>
<td><b><font color='#663300'><%=tname%></font></b></td>
<td><b><font color='#663300'><%=s1%></font></b></td>
<td><b><font color='#663300'><%=d1%></font></b></td>
<td><b><font color='#663300'><%=date1%></font></b></td>
<td><b><font color='#663300'><%=c1%></font></b></td>
<td><b><font color='#663300'><%=name%></font></b></td>
<td><b><font color='#663300'><%=age%></font></b></td>
<td><b><font color='#663300'><%=gender%></font></b></td>
<td><b><font color='#663300'><%=berth%></font></b></td>
<td><b><font color='#663300'><a href="cancel.jsp">Cancel Now</a></font></b></td>


</tr>
 </center>
<%
  }
 %>
 <center>
<a href='logout.jsp'>Logout</a>
  </center><br>
