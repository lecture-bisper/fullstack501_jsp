<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDto" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>

<jsp:include page="./login/LoginCheck.jsp"></jsp:include>

<%
  request.setCharacterEncoding("UTF-8");

  int num = Integer.parseInt(request.getParameter("num"));
  String title = request.getParameter("title");
  String content = request.getParameter("content");
  String id = request.getParameter("id");

  if (id.equals(session.getAttribute("userId").toString()) == false) {
    JSFunction.alertBack("작성자만 수정할 수 있습니다.", out);
    return;
  }
  else {
    BoardDto board = new BoardDto();
    board.setNum(num);
    board.setTitle(title);
    board.setContent(content);

    BoardDao dao = new BoardDao();
    dao.dbOpen();
    int result = dao.updateEdit(board);
    dao.dbClose();

    if (result > 0) {
      response.sendRedirect("./View.jsp?num=" + num);
    }
    else {
      JSFunction.alertBack("데이터 수정 중 오류가 발생했습니다.", out);
    }
  }
%>









