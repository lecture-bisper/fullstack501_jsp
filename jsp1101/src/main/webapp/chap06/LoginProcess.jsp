<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-01
  Time: 오전 11:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<%
  request.setCharacterEncoding("UTF-8");
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userPw");
%>

<%
  Connection conn = null;
  PreparedStatement pstmt = null;
  ResultSet rs = null;

  String driver = "com.mysql.cj.jdbc.Driver";
  String dbUrl = "jdbc:mysql://localhost:3306/testdb?characterEncoding=UTF-8&serverTimezone=UTC";
  String dbUserId = "test1";
  String dbUserPw = "fullstack501";

  try {
    Class.forName(driver);
    conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
  }
  catch (Exception e) {

  }

  try {
//    클라이언트에서 전달한 id/pw를 가지고 있는 사용자가 있는지 확인
    String sql = "SELECT COUNT(*) AS cnt FROM member WHERE id = ? AND pass = ? ";

    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, userId);
    pstmt.setString(2, userPw);
    rs = pstmt.executeQuery();

    if (rs.next()) {
      int count = rs.getInt("cnt");

      if (count > 0) {
        sql = "SELECT seq, id, pass, name, regidate FROM member ";
        sql += "WHERE id = ? AND pass = ? ";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, userId);
        pstmt.setString(2, userPw);
        ResultSet result = pstmt.executeQuery();

        if (result.next()) {
          session.setAttribute("userId", result.getString("id"));
          session.setAttribute("userName", result.getString("name"));
          session.setMaxInactiveInterval(60 * 1);

          response.sendRedirect("LoginOk.jsp");
        }
        else {
          response.sendRedirect("LoginFail.jsp");
        }
      }
      else {
        response.sendRedirect("LoginFail.jsp");
      }
    }
    else {
      response.sendRedirect("LoginFail.jsp");
    }
  }
  catch (SQLException e) {
    out.print("데이터 베이스 사용 중 오류가 발생했습니다.");
    out.print("SQLException : " + e.getMessage());
  }
  finally {
    try {
      if (rs != null) { rs.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
    }
    catch (Exception e) {}
  }
%>







