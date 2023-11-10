<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-10
  Time: 오후 2:33
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
  <h2>web.xml에서 매핑 후 JSP에서 출력하기</h2>

  <p>
<%--    request 영역에 저장된 message 라는 이름의 변수 가져오기 --%>
<%--    현재 페이지를 웹 브라우저에서 url을 직접 입력하여 접속 시 request 에 저장된 데이터를 가져올 수 없음 --%>
    <strong><%=request.getAttribute("message")%></strong>
    <br>
<%--  현재 폴더의 위치가 chap12인 상태에서 HelloServlet.do를 호출함 --%>
<%--  톰켓 서버로 해당 주소를 요청 -> web.xml 파일에 등록한 서블릿의 url이 있는지 확인 -> 해당 url을 가지고 있는 서블릿 이름과 동일한 서블릿 이름을 검색 -> 해당 서블릿 이름을 가지고 있는 클래스 파일을 확인하고 해당 파일의 doGet/doPost를 호출 --%>
    <a href="./HelloServlet.do" target="_blank" class="btn btn-link">./HelloServlet.do 로 바로 가기</a>
    <br>
<%--  절대 경로를 통해서 chap12/HelloServlet.do를 호출함 --%>
    <a href="/chap12/HelloServlet.do" target="_blank" class="btn btn-link">/chap12/HelloServlet.do 로 바로 가기</a>
    <br>
    <a href="/ServletTest.do" target="_blank" class="btn btn-link">/ServletTest.do 로 바로 가기</a>

    <a href="/test/helloServlet2" target="_blank" class="btn btn-link">helloSerlvet2 바로 가기</a>
  </p>
</div>
</body>
</html>









