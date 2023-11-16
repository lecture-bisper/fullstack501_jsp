package com.bitc.jsp1114_mvcboard.servlet;

import com.bitc.jsp1114_mvcboard.database.MVCBoardDAO;
import com.bitc.jsp1114_mvcboard.database.MVCBoardDTO;
import com.bitc.jsp1114_mvcboard.utils.FileUtil;
import com.bitc.jsp1114_mvcboard.utils.JSFunction;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.File;
import java.io.IOException;
import java.util.Set;

@WebServlet(name = "edit", value = "/mvcboard/edit.do")
@MultipartConfig(maxFileSize = 1024 * 1024 * 1, maxRequestSize = 1024 * 1024 * 10)
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
    String title = req.getParameter("title");// 수정할 title 내용
    String content = req.getParameter("content"); // 수정할 content 내용
    int idx = Integer.parseInt(req.getParameter("idx")); // 데이터를 수정할 글번호
    String oldSaveFile = req.getParameter("oldSaveFile"); // 이전에 저장되어 있었던 첨부파일명(삭제예정)

    //    가져온 정보를 DTO 타입으로 저장
    MVCBoardDTO board = new MVCBoardDTO();
    board.setIdx(idx);
    board.setTitle(title);
    board.setContent(content);
    
//    새로 업로드 된 파일 처리
    String saveDir = "C:/upload";
    String oriFileName = "";
    try {
      oriFileName = FileUtil.uploadFile(req, saveDir);
    }
    catch (Exception e) {
      JSFunction.alertBack("파일 업로드 중 오류 입니다.", res);
      return;
    }
    
//    새로 업로드 된 파일명 수정
    if (!oriFileName.equals("")) {
      String saveFileName = FileUtil.renameFile(oriFileName, saveDir);
      
//      새로 업로드 된 파일명 DTO 객체에 저장
      board.setOfile(oriFileName);
      board.setSfile(saveFileName);
      
//      이전 파일 삭제
      FileUtil.deleteFile(saveDir, oldSaveFile);
    }

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







