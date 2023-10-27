<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-27
  Time: 오후 3:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Title</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
          integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
          crossorigin="anonymous"></script>

  <style>

  </style>
  <script>

  </script>

</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String userId = request.getParameter("userId");
  String userPw = request.getParameter("userpw");
%>

<%@ include file="dbconn.jsp"%>

<div class="container mt-5">
  <h2 class="text-center">Statement로 데이터 삭제하기</h2>

  <%
    Statement stmt = null;
    String sql = "DELETE FROM member WHERE id = '" + userId + "' ";

    try {
      stmt = conn.createStatement();
      int result = stmt.executeUpdate(sql);
      out.print(result + "개의 항목을 삭제했습니다.");
    }
    catch (SQLException e) {
      out.print("데이터 삭제 중 오류가 발생했습니다.");
      out.print("SQLException : " + e.getMessage());
    }
    finally {
      try {
        if (stmt != null) { stmt.close(); }
        if (conn != null) { conn.close(); }
      }
      catch (Exception e) {}
    }
  %>
</div>
</body>
</html>









