<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%
// Retrieve form data from request parameters
String email = request.getParameter("email");
String password = request.getParameter("password");

// Database connection information
String url = "jdbc:mysql://localhost:3306/lms";
String user = "root";
String pass = "";

Connection conn = null;
PreparedStatement pstmt = null;
ResultSet rs = null;

try {
    // Connect to the MySQL database
    Class.forName("com.mysql.jdbc.Driver");
    conn = DriverManager.getConnection(url, user, pass);

    // Prepare SQL statement to check if the user exists
    String sql = "SELECT * FROM signup WHERE email = ? AND password = ?";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, email);
    pstmt.setString(2, password);

    // Execute the SQL query
    rs = pstmt.executeQuery();
    
    // Check if a user with the provided credentials exists
    if (rs.next()) {
        // User exists, redirect to another page (e.g., dashboard.jsp)
        response.sendRedirect("login.jsp");
    } else {
        // User doesn't exist or invalid credentials, display an error message
        out.println("Invalid email or password. Please try again.");
    }
} catch (Exception e) {
    out.println("Error: " + e.getMessage());
} finally {
    // Close resources
    try {
        if (rs != null) {
            rs.close();
        }
        if (pstmt != null) {
            pstmt.close();
        }
        if (conn != null) {
            conn.close();
        }
    } catch (SQLException ex) {
        out.println("Error in closing resources: " + ex.getMessage());
    }
}
%>
