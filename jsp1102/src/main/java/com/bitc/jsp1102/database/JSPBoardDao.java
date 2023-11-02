package com.bitc.jsp1102.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class JSPBoardDao extends JSPBoardConnector {

// 생성자
  public JSPBoardDao(ServletContext app) {
    super(app);
  }

  public JSPBoardDao(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    super(dbDriver, dbUrl, dbUserId, dbUserPw);
  }

//  게시물 목록 보기
  public List<JSPBoardDto> selectBoardList() {
    List<JSPBoardDto> boardList = new ArrayList<>();

    try {
      String sql = "SELECT board_idx, board_title, board_member_id, board_regdate, board_cnt ";
      sql += "FROM jspboard ";

      stmt = conn.createStatement();
      rs = stmt.executeQuery(sql);

      while (rs.next()) {
        JSPBoardDto board = new JSPBoardDto();

        board.setBoard_idx(rs.getInt("board_idx"));
        board.setBoard_title(rs.getString("board_title"));
        board.setBoard_member_id(rs.getString("board_member_id"));
        board.setBoard_regdate(rs.getString("board_regdate"));
        board.setBoard_cnt(rs.getInt("board_cnt"));

        boardList.add(board);
      }
    }
    catch (SQLException e) {
      System.out.println("----- 데이터 베이스 조회 중 오류 발생 -----");
      System.out.println("SQLException : " + e.getMessage());
    }

    return boardList;
  }

//  게시물 상세 보기

//  게시물 등록하기

//  게시물 수정하기

//  게시물 삭제하기

//  게시물 조회수 올리기
}







