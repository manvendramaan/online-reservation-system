<body bgcolor="#E3E2DE">
<%
session.setAttribute("userid", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>