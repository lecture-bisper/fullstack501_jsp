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
import java.util.Set;

@WebServlet(name = "edit", value = "/mvcboard/edit.do")
public class EditController extends HttpServlet {

//  글 번호에 해당하는 정보를 화면에 출력
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {

//    글 번호를 파라미터값으로 가져옴
    int idx = Integer.parseInt(req.getParameter("idx"));

//    데이터 베이스 연결
    MVCBoardDAO dao = new MVCBoardDAO();
    dao.dbOpen();

//    글 번호에 대한 상세 정보를 가져옴
    req.setAttribute("board", dao.selectMVCBoardDetail(idx));

//    템플릿 파일을 호출하여 화면 이동
    req.getRequestDispatcher("/MVCBoard/Edit.jsp").forward(req, res);
  }

//  수정된 정보를 받아서 데이터 베이스를 수정
  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
//    수정할 정보를 파라미터 값으로 가져옴
    String title = req.getParameter("title");
    String content = req.getParameter("content");
    int idx = Integer.parseInt(req.getParameter("idx"));

//    가져온 정보를 DTO 타입으로 저장
    MVCBoardDTO board = new MVCBoardDTO();
    board.setIdx(idx);
    board.setTitle(title);
    board.setContent(content);
    
//    데이터 베이스 연결
    MVCBoardDAO dao = new MVCBoardDAO();
    dao.dbOpen();

    //    전달 받은 내용으로 데이터 업데이트
    int result = dao.updateMVCBoard(board);
    if (dao.dbIsOpen()) {
      dao.dbClose();
    }

//    수정된 화면으로 이동
    if (result == 1) {
//      수정 성공 시
      res.sendRedirect("/mvcboard/view.do?idx=" + idx);
    }
    else {
//      수정 실패 시
      JSFunction.alertLocation("게시글 수정이 실패했습니다.\n다시 진행해 주세요", "/mvcboard/view.do?idx=" + idx, res);
    }
  }
}







