<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-10-26
  Time: 오전 10:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%-- ArrayList 클래스를 사용하기 위해서 import --%>
<%@ page import="java.util.ArrayList" %>

<%
  // session 영역에 저장한 데이터 생성
  ArrayList<String> lists = new ArrayList<>();
  lists.add("리스트");
  lists.add("콜렉션");
//  session 영역에 setAttribute()를 사용하여 데이터 저장
  session.setAttribute("lists", lists);
%>

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
  <h2>페이지 이동 후 session 영역의 속성 읽기</h2>
<%--  a 태그를 사용하여 페이지 이동 --%>
  <a href="SessionLocation.jsp" class="btn btn-link" target="_blank">SessionLocation.jsp</a>

  <br><hr><br>

  <h3>세션에 저장한 내용</h3>

  <%
    // 현재 session 영역에 저장된 내용 가져오기
    ArrayList<String> list2 = (ArrayList<String>)session.getAttribute("lists");
  %>
  <ul>
    <li><%=list2.get(0)%></li>
    <li><%=list2.get(1)%></li>
  </ul>
</div>
</body>
</html>









