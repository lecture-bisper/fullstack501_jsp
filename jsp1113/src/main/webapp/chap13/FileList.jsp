<%@ page import="com.bitc.jsp1113.database.MyFileDao" %>
<%@ page import="com.bitc.jsp1113.database.MyFileDto" %>
<%@ page import="java.util.List" %>
<%@ page import="java.net.URLEncoder" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-14
  Time: 오전 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

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
<div class="container mt-5">
  <h3>DB에 등록된 파일 목록 보기</h3>
  <div>
    <ul>
      <li><a href="./FileUploadMain.jsp" target="_blank" class="btn btn-link">파일 등록</a> </li>
      <li><a href="./MultiUploadMain.jsp" target="_blank" class="btn btn-link">파일 등록(다중업로드)</a> </li>
    </ul>
  </div>

  <%
    MyFileDao dao = new MyFileDao();
    dao.dbOpen();
    List<MyFileDto> fileList = dao.myFileList();
    dao.dbClose();
  %>

  <div>
    <table class="table table-hover table-striped">
      <thead>
      <tr>
        <th>번호</th>
        <th>제목</th>
        <th>카테고리</th>
        <th>원본 파일명</th>
        <th>저장된 파일명</th>
        <th>등록시간</th>
        <th>다운로드</th>
      </tr>
      </thead>
      <tbody>
      <%
        for (MyFileDto file : fileList) {
      %>
      <tr>
        <td><%=file.getIdx()%></td>
        <td><%=file.getTitle()%></td>
        <td><%=file.getCate()%></td>
        <td><%=file.getOfile()%></td>
        <td><%=file.getSfile()%></td>
        <td><%=file.getPostdate()%></td>
        <td><a href="Download.jsp?oName=<%=URLEncoder.encode(file.getOfile(), "UTF-8")%>&sName=<%=URLEncoder.encode(file.getSfile(), "UTF-8")%>" class="btn btn-link">[다운로드]</a></td>
      </tr>
      <%
        }
      %>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>









