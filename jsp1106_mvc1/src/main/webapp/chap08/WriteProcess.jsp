<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDto" %>
<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %><%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06
  Time: 오전 9:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>

<jsp:include page="./login/LoginCheck.jsp"></jsp:include>

<%
  request.setCharacterEncoding("UTF-8");
  String title = request.getParameter("title");
  String content = request.getParameter("content");

  BoardDto board = new BoardDto();
  board.setTitle(title);
  board.setContent(content);
//  세션에서 사용자 ID를 가져옴
  board.setId(session.getAttribute("userId").toString());
//  board.setId("test1"); // 현재 로그인 화면 및 로그인 프로세스가 없으므로 더미 데이터로 'test1'을 입력해 줌

  BoardDao dao = new BoardDao();
  dao.dbOpen();
  int result = dao.insertWrite(board);
  dao.dbClose();

  if (result == 1) {
    response.sendRedirect("./List.jsp");
  }
  else {
    JSFunction.alertBack("글쓰기 중 오류가 발생했습니다.", out);
//    out.print("<script>");
//    out.print("alert('글쓰기 중 오류가 발생했습니다');");
//    out.print("history.back();");
//    out.print("</script>");
  }
%>











