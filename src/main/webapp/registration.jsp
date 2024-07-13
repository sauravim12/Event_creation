<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>

<%
final String userName = "root";
final String password = "Saurav@1203"; // Use your actual database password
final String url = "jdbc:mysql://localhost:3306/dashboard"; // Adjust to your database URL
Connection c = null;
PreparedStatement pst = null;

try {
    Class.forName("com.mysql.cj.jdbc.Driver"); // Registering JDBC driver
    c = DriverManager.getConnection(url, userName, password); // Opening connection
    if (c != null) {
        String name = request.getParameter("eventName");
        String totalStudents = request.getParameter("totalStudents");
        String coordinatorName = request.getParameter("coordinatorName");
        String semester = request.getParameter("semester");
        String dept = request.getParameter("department");
        String startDate = request.getParameter("startDate");
        String endDate = request.getParameter("endDate");

        String query = "INSERT INTO register (eventName, total_students, coordinator_name, semester, dept, startdate, enddate) VALUES (?, ?, ?, ?, ?, ?, ?)";
        pst = c.prepareStatement(query);
        pst.setString(1, name);
        pst.setString(2,totalStudents);
        pst.setString(3, coordinatorName);
        pst.setString(4, semester);
        pst.setString(5, dept);
        pst.setString(6, startDate);
        pst.setString(7, endDate);
        pst.executeUpdate();
        %>
        <h2>submitted</h2>
        <%
    }
} catch (Exception e) {
    e.printStackTrace();

}
%>