<%@ page import ="java.sql.*" %>
<%
String tno1 = (String) session.getAttribute("tno");
String tname1 = (String) session.getAttribute("tname");
String source1 = (String) session.getAttribute("s1");
String destination1 = (String) session.getAttribute("d1");
String date1 = (String) session.getAttribute("date1");
String class1 = (String) session.getAttribute("c1");
String nosa1 = (String) session.getAttribute("nosa");
int nosa2 = Integer.parseInt(nosa1);

System.out.println(tno1+" "+tname1+" "+source1+" "+destination1+" "+date1+" "+class1+" "+nosa1);
int j;   
for(j = 1; j <= 6; j++)
   {
    String n=request.getParameter("name"+j);
	String a=request.getParameter("age"+j);
	String g=request.getParameter("gender"+j);
	String b=request.getParameter("berth"+j);
	String s=request.getParameter("senior"+j);
	String ad=request.getParameter("aadhaar"+j);
	System.out.println(n+" "+a+" "+g+" "+b+" "+s+" "+ad);
	
    if(n != "" && nosa2 > 0 )
    {
   Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3307/train_reservation",
            "root", "maan");
    Statement st = con.createStatement();
    //ResultSet rs;
    st.executeUpdate("insert into bookinfo(train_no , train_name, source, destination, date, class, name, age, gender, berth, senior, aadhaar) values ('" + tno1 + "','"+ tname1 + "','"+ source1 + "','"+ destination1 + "','"+ date1+ "','"+class1+ "','"+ n + "','" + a + "','" + g + "','" + b + "','" + s + "','" + ad + "')");
   
    st.executeUpdate("update traininfo set no_of_seat_available = no_of_seat_available - 1 where train_no = '" + tno1 + "' and class = '" +  class1 + "'"); 
    nosa2 = nosa2-1;
    }
    
  
   
   }

   if (j == 7) {
       //session.setAttribute("userid", user);
       response.sendRedirect("booked.jsp");
       //out.print("Ticket Booked Successfull!"+"<a href='success.jsp'>Go to Home to book another ticket</a>");
       //out.print("<br>"+"<br>");
       //out.print("<a href='logout.jsp'>Log out</a>");
   } else { 
       response.sendRedirect("book.jsp");
   }
  
 
%>