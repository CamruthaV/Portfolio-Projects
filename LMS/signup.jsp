<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page language="java" %>
<%
// Retrieve form data from request parameters
String t1 = request.getParameter("name");
String t2 = request.getParameter("phone");
String t3 = request.getParameter("email");
String t4 = request.getParameter("password");
String t5 = request.getParameter("confirmPassword");

// Validate password and confirmPassword
if (!t4.equals(t5)) {
    out.println("Error: Passwords do not match!");
} else {
    // Database connection information
    String url = "jdbc:mysql://localhost:3306/lms";
    String user = "root";
    String pass = "";

    Connection conn = null;
    PreparedStatement pstmt = null;

    try {
        // Connect to the MySQL database
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection(url, user, pass);

        // Prepare SQL statement
        String sql = "INSERT INTO signup (Name, Number, Email, Password) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, t1);
        pstmt.setString(2, t2);
        pstmt.setString(3, t3);
        pstmt.setString(4, t4);

        // Execute the SQL statement
        int rowsInserted = pstmt.executeUpdate();
        
        if (rowsInserted > 0) {
            response.sendRedirect("signin.html");
        } else {
            out.println("Registration failed! Try again");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        // Close resources
        try {
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
}
%>
