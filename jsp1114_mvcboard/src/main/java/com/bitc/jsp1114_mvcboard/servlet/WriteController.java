package com.bitc.jsp1114_mvcboard.servlet;

import com.bitc.jsp1114_mvcboard.database.MVCBoardDAO;
import com.bitc.jsp1114_mvcboard.database.MVCBoardDTO;
import com.bitc.jsp1114_mvcboard.utils.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// get 방식으로 연결 시 글쓰기 form 페이지를 출력
// post 방식으로 연결 시 view는 없고 데이터 베이스에 글을 등록하는 프로세스가 동작
@WebServlet(name = "write", value = "/mvcboard/write.do")
public class WriteController extends HttpServlet {

//  단순 view 페이지 출력
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

    req.getRequestDispatcher("/MVCBoard/Write.jsp").forward(req, res);
  }

//  데이터 베이스에 글 등록 프로세스
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    파라미터 값 가져오기
    MVCBoardDTO board = new MVCBoardDTO();
    board.setName(req.getParameter("name"));
    board.setPass(req.getParameter("pass"));
    board.setTitle(req.getParameter("title"));
    board.setContent(req.getParameter("content"));

//    DB연결
    MVCBoardDAO dao = new MVCBoardDAO();
    dao.dbOpen();
//    DB에 데이터 추가
    int result = dao.insertMVCBoard(board);

    if (dao.dbIsOpen()) {
      dao.dbClose();
    }

//    리다이렉트로 list.do로 이동
    if (result == 1) {
      res.sendRedirect("/mvcboard/list.do");
    }
    else {
      JSFunction.alertBack("글쓰기에 실패했습니다.", res);
    }
  }
}







