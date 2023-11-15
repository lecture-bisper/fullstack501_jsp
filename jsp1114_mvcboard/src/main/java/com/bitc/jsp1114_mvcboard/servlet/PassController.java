package com.bitc.jsp1114_mvcboard.servlet;

import com.bitc.jsp1114_mvcboard.database.MVCBoardDAO;
import com.bitc.jsp1114_mvcboard.utils.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// get 방식으로 접속 시 글 수정/삭제 시 필요한 비밀번호 입력 form 화면 출력
// post 방식으로 접속 시 입력받은 비밀번호가 해당 글의 비밀번호와 같은지 확인 후 글 수정/삭제를 진행
@WebServlet(name = "pass", value = "/mvcboard/pass.do")
public class PassController extends HttpServlet {

//  사용자 비밀번호 입력 form 화면 출력
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    pass.do 접속 시 사용한 모드 파라미터 값 가져오기
    String mode = req.getParameter("mode");
//    파라미터로 전달받은 글 번호 가져오기
    int idx = Integer.parseInt(req.getParameter("idx"));
//    request 영역에 모드 정보와 글 번호 저장하기
    req.setAttribute("mode", mode);
    req.setAttribute("idx", idx);
//    사용자 비밀번호 입력 화면 출력
    req.getRequestDispatcher("/MVCBoard/Pass.jsp").forward(req, res);
  }

//  전달받은 비밀번호가 데이터베이스에 저장된 비밀 번호와 같은지 확인
//  비밀 번호가 같으면 데이터 수정/삭제 진행
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    전달받은 비밀번호 파라미터값 가져오기
    String pass = req.getParameter("pass");
    String mode = req.getParameter("mode");
    int idx = Integer.parseInt(req.getParameter("idx"));

//    데이터베이스 연결
    MVCBoardDAO dao = new MVCBoardDAO();
    dao.dbOpen();

//    전달받은 비밀번호와 데이터베이스의 비밀번호가 같은지 확인
    boolean confirmed = dao.confirmPassword(idx, pass);
    if (confirmed) {
//    비밀 번호가 같으면 수정/삭제 진행 후 list.do 페이지로 이동
      if (mode.equals("update")) {
//        수정 시 동작
      }
      else if (mode.equals("delete")) {
//        삭제 시 동작
        int result = dao.deleteMVCBoard(idx);
        if (dao.dbIsOpen()) {
          dao.dbClose();
        }
        if (result == 1) {
//          게시물 삭제 시 첨부파일도 함께 삭제 (미구현)
          JSFunction.alertLocation("삭제되었습니다.", "/mvcboard/list.do", res);
        }
        else {
          JSFunction.alertLocation("삭제 중 오류가 발생했습니다.", "/mvcboard/list.do", res);
        }
      }
    }
    else {
//    비밀 번호가 다르면 이전 페이지로 이동
      if (dao.dbIsOpen()) {
        dao.dbClose();
      }
      JSFunction.alertBack("비밀번호 검증이 실패했습니다.", res);
    }
  }
}







