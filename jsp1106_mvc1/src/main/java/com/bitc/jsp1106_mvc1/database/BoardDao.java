package com.bitc.jsp1106_mvc1.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDao extends JDBConnect {
  public BoardDao() {
    super();
  }

  public BoardDao(ServletContext app) {
    super(app);
  }

  public BoardDao(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    super(dbDriver, dbUrl, dbUserId, dbUserPw);
  }

//  게시물 목록
//  1단계 전체 목록 가져오기
//  2단계 검색된 목록 가져오기
  public List<BoardDto> selectList() {
    List<BoardDto> boardList = new ArrayList<>();

    try {
      String sql = "SELECT num, title, id, postdate, visitcount FROM board ORDER BY num DESC ";

      pstmt = conn.prepareStatement(sql);

      rs = pstmt.executeQuery();

      while (rs.next()) {
        BoardDto board = new BoardDto();
        board.setNum(rs.getInt("num"));
        board.setTitle(rs.getString("title"));
        board.setId(rs.getString("id"));
        board.setPostdate(rs.getString("postdate"));
        board.setVisitcount(rs.getInt("visitcount"));

        boardList.add(board);
      }
    }
    catch (SQLException e) {
      System.out.println("데이터 조회 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return boardList;
  }

//  게시물 상세
//  1단계 사용자 이름 없이 가져오기
//  2단계 사용자 이름도 함께 가져오기, 사용자 이름을 가져오기 위해서 SQL문은 join해야 함
  public BoardDto selectView(int num) {
    BoardDto board = new BoardDto();

    try {
//      1단계 select 문
      String sql = "SELECT num, title, content, id, postdate, visitcount FROM board WHERE num = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);

      rs = pstmt.executeQuery();

      while (rs.next()) {
        board.setNum(rs.getInt("num"));
        board.setTitle(rs.getString("title"));
        board.setContent(rs.getString("content"));
        board.setId(rs.getString("id"));
        board.setPostdate(rs.getString("postdate"));
        board.setVisitcount(rs.getInt("visitcount"));
      }
    }
    catch (SQLException e) {
      System.out.println("데이터 조회 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return board;
  }

//  게시물 등록
  public int insertWrite(BoardDto board) {
    int result = 0;

    try {
      String sql = "INSERT INTO board (title, content, id, postdate) ";
      sql += "VALUES (?, ?, ?, NOW()) ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, board.getTitle());
      pstmt.setString(2, board.getContent());
      pstmt.setString(3, board.getId());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("데이터 추가 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return result;
  }

//  게시물 수정
  public int updateEdit(BoardDto board) {
    int result = 0;

    try {
      String sql = "UPDATE board SET title = ?, content = ? WHERE num = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, board.getTitle());
      pstmt.setString(2, board.getContent());
      pstmt.setInt(3, board.getNum());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("데이터 수정 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return result;
  }

//  게시물 조회수 증가
  public void updateVisitCount(int num) {
    try {
      String sql = "UPDATE board SET visitcount = visitcount + 1 WHERE num = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);

      pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("데이터 수정 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }
  }

//  게시물 삭제
  public int deletePost(int num) {
    int result = 0;

    try {
      String sql = "DELETE FROM board WHERE num = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, num);

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("데이터 삭제 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return result;
  }
}







