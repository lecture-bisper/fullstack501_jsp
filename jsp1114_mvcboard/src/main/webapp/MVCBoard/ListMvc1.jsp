<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-14
  Time: 오후 2:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<%@ page import="com.bitc.jsp1114_mvcboard.database.MVCBoardDTO" %>
<%@ page import="com.bitc.jsp1114_mvcboard.database.MVCBoardDAO" %>

<%@ page import="java.util.List" %>

<%
  MVCBoardDAO dao = new MVCBoardDAO();
  dao.dbOpen();

  int totalCount = dao.totalCount();
  int pageSize = 3;
  int blockPage = 5;
  int totalPage = (int)Math.ceil((double)totalCount / pageSize);

  int pageNum = 1;
  String pageNumTemp = request.getParameter("pageNum");
  if (pageNumTemp != null && !pageNumTemp.equals("")) {
    pageNum = Integer.parseInt(pageNumTemp);
  }

  int start = (pageNum - 1) * pageSize + 1;
  int end = pageNum * pageSize;

  int startPageNum = (((pageNum - 1) / blockPage) * blockPage) + 1;
  int endPageNum = startPageNum + blockPage - 1;

  if (endPageNum > totalPage) {
    endPageNum = totalPage;
  }

  List<MVCBoardDTO> boardList = dao.selectMVCBoardListPaging(start, pageSize);
  if (dao.dbIsOpen()) {
    dao.dbClose();
  }
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
          <%
            if (boardList.size() == 0) {
          %>
              <tr>
                <td colspan="5">등록된 게시물이 없습니다.</td>
              </tr>
          <%
            }
            else {
              for (MVCBoardDTO item : boardList) {
          %>
                <tr>
                  <td><%=item.getIdx()%></td>
                  <td>
                    <a href="/mvcboard/view.do?idx=<%=item.getIdx()%>" class="text-decoration-none"><%=item.getTitle()%></a>
                  </td>
                  <td><%=item.getName()%></td>
                  <td><%=item.getPostdate()%></td>
                  <td><%=item.getVisitcount()%></td>
                </tr>
          <%
              }
            }
          %>
          </tbody>
          <tfoot>
          <tr>
            <td colspan="5">
              <%--                페이지 링크 버튼 --%>
              <ul class="pagination justify-content-center">
                <%
//                  이전 페이지 버튼
//                  버튼 html 을 저장할 String 타입 변수
                  String pagingStr = "";

//                  시작 페이지 번호가 1이 아닐 경우 이전 페이지 표시, 1일 경우 표시안함
                  if (startPageNum != 1) {
                    pagingStr += "<li class='page-item'><a class='page-link' href='/MVCBoard/ListMvc1.jsp?pageNum=" + (startPageNum - 1) + "'>Prev</a></li>";
                  }
//                  페이지 이동 블록을 반복문으로 생성
                  for (int i = startPageNum; i <= endPageNum; i++) {
                    if (i == pageNum) {
//                    현재 페이지 번호와 페이지 블록의 번호가 같을 경우 버튼 모양을 활성화
                      pagingStr += "<li class='page-item active'><a class='page-link'>" + i + "</a></li>";
                    }
                    else {
//                    현재 페이지와 번호와 페이지 블록의 번호가 다를 경우 링크 이동 주소 추가
                      pagingStr += "<li class='page-item'><a class='page-link' href='/MVCBoard/ListMvc1.jsp?pageNum=" + i + "'>" + i + "</a></li>";
                    }
                  }
//                  다음 페이지 버튼
//                  페이지 블록 마지막 번호가 총 페이지 번호보다 작을 경우 다음 페이지 표시, 총 페이지 번호와 페이지 블록 마지막 번호가 같을 경우 표시 안함
                  if (endPageNum < totalPage) {
                    pagingStr += "<li class='page-item'><a class='page-link' href='/MVCBoard/ListMvc1.jsp?pageNum=" + (endPageNum + 1) + "'>Next</a></li>";
                  }

//                  만들어진 문자열을 화면에 출력
                  out.print(pagingStr);
                %>
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









