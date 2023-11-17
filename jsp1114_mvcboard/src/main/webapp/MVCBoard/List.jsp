<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-14
  Time: 오후 2:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

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
<c:import url="../layout/Header.jsp"></c:import>

<main class="container mt-5">
  <section>
    <div class="row">
      <div class="col-sm">
        <table class="table table-hover table-striped text-center">
          <colgroup>
            <col style="width: 10%">
            <col style="width: 45%">
            <col style="width: 15%">
            <col style="width: 20%">
            <col style="width: 10%">
          </colgroup>
          <thead>
          <th>글번호</th>
          <th>글제목</th>
          <th>글쓴이</th>
          <th>등록일</th>
          <th>조회수</th>
          </thead>
          <tbody>
          <c:choose>
            <c:when test="${empty boardList}">
              <tr>
                <td colspan="5">등록된 게시물이 없습니다.</td>
              </tr>
            </c:when>
            <c:otherwise>
              <c:forEach var="item" items="${boardList}" varStatus="loop">
                <tr>
                  <td>${item.idx}</td>
                  <td class="text-start">
                    <a href="/mvcboard/view.do?idx=${item.idx}" class="text-decoration-none">${item.title}</a>
                  </td>
                  <td>${item.name}</td>
                  <td>${item.postdate}</td>
                  <td>${item.visitcount}</td>
                </tr>
              </c:forEach>
            </c:otherwise>
          </c:choose>
          </tbody>
          <tfoot>
            <tr>
              <td colspan="5">
                <ul class="pagination pagination-sm justify-content-center">
                  <c:if test="${startPageNum ne 1}">
                    <li class="page-item"><a class="page-link" href="/mvcboard/list.do?pageNum=${startPageNum - 1}">Prev</a></li>
                  </c:if>
                  <c:forEach var="i" begin="${startPageNum}" end="${endPageNum}" step="1">
                    <c:choose>
                      <c:when test="${i eq pageNum}">
                        <li class="page-item active"><a class="page-link">${i}</a></li>
                      </c:when>
                      <c:otherwise>
                        <li class="page-item"><a class="page-link" href="/mvcboard/list.do?pageNum=${i}">${i}</a></li>
                      </c:otherwise>
                    </c:choose>
                  </c:forEach>
                  <c:if test="${endPageNum lt totalPage}">
                    <li class="page-item"><a class="page-link" href="/mvcboard/list.do?pageNum=${endPageNum + 1}">Next</a></li>
                  </c:if>
                </ul>
              </td>
            </tr>
          </tfoot>
        </table>
      </div>
    </div>
    <div class="row mt-3">
      <div class="col-sm">
        <div class="d-flex justify-content-end">
          <a href="/mvcboard/write.do" class="btn btn-primary">글쓰기</a>
        </div>
      </div>
    </div>
  </section>
</main>

<%@ include file="../layout/Footer.jsp" %>
</body>
</html>









