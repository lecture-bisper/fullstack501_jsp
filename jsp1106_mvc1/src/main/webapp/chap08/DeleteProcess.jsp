<%--
  Created by IntelliJ IDEA.
  User: it
  Date: 2023-11-06
  Time: 오전 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<%@ page import="com.bitc.jsp1106_mvc1.database.BoardDao" %>
<%@ page import="com.bitc.jsp1106_mvc1.utils.JSFunction" %>

<%-- 로그인 상태에서만 글삭제를 할 수 있으므로 로그인 상태 체크를 위한 LoginCheck 파일 불러오기 --%>
<jsp:include page="./login/LoginCheck.jsp"></jsp:include>

<%
  request.setCharacterEncoding("UTF-8");
// 글삭제를 위해 필요한 정보 파라미터값에서 가져오기
  int num = Integer.parseInt(request.getParameter("num"));
  String id = request.getParameter("id");

  // 글 삭제 시 글 작성자가 현재 로그인한 사용자인지 확인
  if (id.equals(session.getAttribute("userId").toString())) {
    // 작성자와 로그인한 사용자가 같으면 데이터 베이스에 연결 후 글 삭제
    BoardDao dao = new BoardDao(application);
    dao.dbOpen();
    int result = dao.deletePost(num);
    dao.dbClose();

//    정상적으로 삭제되었는지 확인
    if (result == 1) {
//      정상 삭제 시 목록 페이지로 이동
      JSFunction.alertLocation("삭제되었습니다.", "./List.jsp", out);
    }
    else {
//      오류 시 이전 페이지로 이동
      JSFunction.alertBack("삭제 중 오류가 발생했습니다.", out);
    }
  }
  else {
    // 작성자와 로그인한 사용자가 같지 않으면 뒤로 가기
    JSFunction.alertBack("작성자 본인만 삭제할 수 있습니다.", out);
  }
%>









