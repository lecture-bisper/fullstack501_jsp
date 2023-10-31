<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-31
  Time: 오전 10:17
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
<%-- 1. 전체 목록 바로 출력(select.jsp) --%>
<%-- 2. 지정된 글 번호 입력 시 해당 글 내용만 출력(selectProcess.jsp) --%>

<%--데이터 베이스 접속 정보를 가진 파일 include--%>
<%@ include file="dbconn.jsp"%>

<div class="container mt-5">
  <h2 class="text-center">board 전체 글 목록 조회하기</h2>

  <table class="table table-hover table-striped">
    <colgroup>
      <col style="width: 5%">
      <col style="width: 20%">
      <col style="width: 40%">
      <col style="width: 10%">
      <col style="width: 20%">
      <col style="width: 5%">
    </colgroup>
    <thead>
      <tr class="text-center">
        <th>글번호</th>
        <th>글제목</th>
        <th>글내용</th>
        <th>글쓴이</th>
        <th>등록시간</th>
        <th>방문자</th>
      </tr>
    </thead>
    <tbody>
      <%
        Statement stmt = null;
        ResultSet rs = null;

        try{
          String sql = "SELECT num, title, content, id, postdate, visitcount FROM board";

          stmt = conn.createStatement();
          rs = stmt.executeQuery(sql);

          while (rs.next()) {
            int num = rs.getInt("num");
            String title = rs.getString("title");
            String content = rs.getString("content");
            String id = rs.getString("id");
            String postDate = rs.getString("postdate");
            int visitCount = rs.getInt("visitcount");
      %>
      <tr class="text-center">
        <td><%=num%></td>
        <td class="text-start"><%=title%></td>
        <td class="text-start"><%=content%></td>
        <td><%=id%></td>
        <td><%=postDate%></td>
        <td><%=visitCount%></td>
      </tr>
      <%
          }
        }
        catch (SQLException e) {
          out.print("데이터 조회 중 오류가 발생했습니다.");
          out.print("SQLException : " + e.getMessage());
        }
        finally {
          try {
            if (rs != null) { rs.close(); }
            if (stmt != null) { stmt.close(); }
            if (conn != null) { conn.close(); }
          }
          catch (Exception e) {}
        }
      %>
    </tbody>
  </table>

  <br><hr><br>

  <div class="row">
    <div class="col-sm-4 ms-auto">
      <form action="selectProcess.jsp" method="get">
        <div class="input-group">
          <input type="text" class="form-control" name="num" placeholder="글 번호를 입력하세요">
          <button type="submit" class="btn btn-outline-primary">글 내용 확인</button>
        </div>
      </form>
    </div>
  </div>
</div>
</body>
</html>









