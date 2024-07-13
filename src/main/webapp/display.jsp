<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event List</title>
<style>
a{
 text-decoration:none;
 color:black;
}
a:hover{
	color:blue;
}
</style>
</head>
<body>
<center>
<h3>Event List</h3>
<table border="1">
<tr>
<th>Event Id</th>
<th>Event Name</th>
<th>Total Enrolled Students</th>
<th>Coordinator Name</th>
<th>Semester</th>
<th>Department</th>
<th>Start Date</th>
<th>End Date</th>
</tr>
<%
final String userName = "root";
final String password = "Saurav@1203";
final String url = "jdbc:mysql://localhost:3306/dashboard";
Connection conn ;
PreparedStatement ps ;
ResultSet rs;
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    conn = DriverManager.getConnection(url, userName, password);
    String sql = "SELECT * FROM register";
    ps = conn.prepareStatement(sql);
    rs = ps.executeQuery();
    while (rs.next()) {
%>
<tr>
<td><%= rs.getInt("id") %></td>
<td><%= rs.getString("eventName") %></td>
<td><%= rs.getString("total_students") %></td>
<td><%= rs.getString("coordinator_name") %></td>
<td><%= rs.getString("semester") %></td>
<td><%= rs.getString("dept") %></td>
<td><%= rs.getString("startdate") %></td>
<td><%= rs.getString("enddate") %></td>
</tr>
<%
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
}
%>
</table>
<a href="index.jsp">Click to Add new Event</a>
</center>
</body>
</html>