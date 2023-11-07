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

<%-- 로그인 상태에서만 글수정을 할 수 있으므로 로그인 상태 체크를 위한 LoginCheck 파일 불러오기 --%>
<jsp:include page="./login/LoginCheck.jsp"></jsp:include>

<%
  request.setCharacterEncoding("UTF-8");

//  글 수정 시 필요한 데이터 가져오기
  int num = Integer.parseInt(request.getParameter("num"));
  String title = request.getParameter("title");
  String content = request.getParameter("content");
  String id = request.getParameter("id");

//  글 작성자와 로그인 한 유저가 같은지 확인
  if (id.equals(session.getAttribute("userId").toString()) == false) {
//    작성자와 로그인 유저가 다를 경우 메시지 출력 후 이전 페이지로 이동
    JSFunction.alertBack("작성자만 수정할 수 있습니다.", out);
    return;
  }
  else {
//    글 작성자와 로그인 유저가 같을 경우 글 수정
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









