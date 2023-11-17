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
import java.util.List;

// get 방식으로 연결 시 글쓰기 form 페이지를 출력
// post 방식으로 연결 시 view는 없고 데이터 베이스에 글을 등록하는 프로세스가 동작
@WebServlet(name = "write", value = "/mvcboard/write.do")
@MultipartConfig(maxFileSize = 1024 * 1024 * 1, maxRequestSize = 1024 * 1024 * 10)
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

//    업로드 된 파일 처리 (서버의 특정 폴더에 저장)
    String saveDir = this.getServletContext().getInitParameter("FileUploadFolder"); // web.xml 설정 사용
    String originalFileName = "";
    try {
      originalFileName = FileUtil.uploadFile(req, saveDir);
    }
    catch (Exception e) {
      JSFunction.alertLocation("파일 업로드 오류가 발생했습니다.", "/mvcboard/write.do", res);
      return;
    }

//    서버에 저장된 파일의 이름 변경
    if (!originalFileName.equals("")) {
      String saveFileName = FileUtil.renameFile(originalFileName, saveDir);
      
//      원본 파일명과 수정된 파일명을 DTO 객체에 저장
      board.setOfile(originalFileName);
      board.setSfile(saveFileName);
    }

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







