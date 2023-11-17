package com.bitc.jsp1114_mvcboard.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MVCBoardDAO extends JDBConnect {

  public MVCBoardDAO() {}

  public MVCBoardDAO(ServletContext app) {
    super(app);
  }

  public MVCBoardDAO(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    super(dbDriver, dbUrl, dbUserId, dbUserPw);
  }

//  전체 게시물 수 가져오기
  public int totalCount() {
    int result = 0;

    try {
      String sql = "SELECT COUNT(*) AS cnt FROM mvcboard ";

      stmt = conn.createStatement();
      rs = stmt.executeQuery(sql);

      while (rs.next()) {
        result = rs.getInt("cnt");
      }
    }
    catch (SQLException e) {
      printErrorMessage("조회", e.getMessage());
    }

    return result;
  }

//  전체 리스트 가져오기
  public List<MVCBoardDTO> selectMVCBoardList() {
    List<MVCBoardDTO> boardList = new ArrayList<>();

    try {
      String sql = "SELECT idx, title, name, postdate, visitcount ";
      sql += "FROM mvcboard ";
      sql += "ORDER BY idx DESC ";

      stmt = conn.createStatement();
      rs = stmt.executeQuery(sql);

      while (rs.next()) {
        MVCBoardDTO board = new MVCBoardDTO();

        board.setIdx(rs.getInt("idx"));
        board.setTitle(rs.getString("title"));
        board.setName(rs.getString("name"));
        board.setPostdate(rs.getString("postdate"));
        board.setVisitcount(rs.getInt("visitcount"));

        boardList.add(board);
      }
    }
    catch (SQLException e) {
      printErrorMessage("조회", e.getMessage());
    }

    return boardList;
  }

//  전체 게시물 목록 가져오기 (페이징 기능 추가)
  public List<MVCBoardDTO> selectMVCBoardListPaging(int startNum, int postSize) {
    List<MVCBoardDTO> boardList = new ArrayList<>();

    try {
      String sql = "SELECT idx, title, name, postdate, visitcount ";
      sql += "FROM mvcboard ";
      sql += "ORDER BY idx DESC ";
      sql += "LIMIT ?, ? "; // LIMIT를 사용하여 지정한 index부터 지정한 수만큼 데이터를 조회하여 가져옴

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, startNum); // 데이터를 가져오기 시작할 index, index는 0부터 시작
      pstmt.setInt(2, postSize); // 가져올 데이터 수 지정

      rs = pstmt.executeQuery();

      while (rs.next()) {
        MVCBoardDTO board = new MVCBoardDTO();

        board.setIdx(rs.getInt("idx"));
        board.setTitle(rs.getString("title"));
        board.setName(rs.getString("name"));
        board.setPostdate(rs.getString("postdate"));
        board.setVisitcount(rs.getInt("visitcount"));

        boardList.add(board);
      }
    }
    catch (SQLException e) {
      printErrorMessage("조회", e.getMessage());
    }

    return boardList;
  }

//  글 등록 (기본 글 등록)
  public int insertMVCBoard(MVCBoardDTO board) {
    int result = 0;

    try {
      String sql = "INSERT INTO mvcboard (title, content, name, pass, ofile, sfile, postdate) ";
      sql += "VALUES (?, ?, ?, ?, ?, ?, NOW()) ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, board.getTitle());
      pstmt.setString(2, board.getContent());
      pstmt.setString(3, board.getName());
      pstmt.setString(4, board.getPass());
      pstmt.setString(5, board.getOfile());
      pstmt.setString(6, board.getSfile());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("등록", e.getMessage());
    }

    return result;
  }

//  상세 글 보기
  public MVCBoardDTO selectMVCBoardDetail(int idx) {
    MVCBoardDTO board = new MVCBoardDTO();

    try {
      String sql = "SELECT idx, title, content, name, ofile, sfile, downcount, visitcount, postdate ";
      sql += "FROM mvcboard ";
      sql += "WHERE idx = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, idx);
      rs = pstmt.executeQuery();

      while (rs.next()) {
        board.setIdx(rs.getInt("idx"));
        board.setTitle(rs.getString("title"));
        board.setContent(rs.getString("content"));
        board.setName(rs.getString("name"));
        board.setOfile(rs.getString("ofile"));
        board.setSfile(rs.getString("sfile"));
        board.setDowncount(rs.getInt("downcount"));
        board.setVisitcount(rs.getInt("visitcount"));
        board.setPostdate(rs.getString("postdate"));
      }
    }
    catch (SQLException e) {
      printErrorMessage("조회", e.getMessage());
    }

    return board;
  }

//  글 수정 (기본 글 수정)
  public int updateMVCBoard(MVCBoardDTO board) {
    int result = 0;

    try {
      String sql = "UPDATE mvcboard SET title = ?, content = ?, ofile = ?, sfile = ? ";
      sql += "WHERE idx = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, board.getTitle());
      pstmt.setString(2, board.getContent());
      pstmt.setString(3, board.getOfile());
      pstmt.setString(4, board.getSfile());
      pstmt.setInt(5, board.getIdx());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("수정", e.getMessage());
    }

    return result;
  }

//  글 삭제
  public int deleteMVCBoard(int idx) {
    int result = 0;

    try {
      String sql = "DELETE FROM mvcboard WHERE idx = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, idx);

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("삭제", e.getMessage());
    }

    return result;
  }

//  글 조회 수 증가
  public void updateVisitCount(int idx) {
    try {
      String sql = "UPDATE mvcboard SET visitcount = visitcount + 1 WHERE idx = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, idx);

      pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("수정", e.getMessage());
    }
  }

//  첨부 파일 다운로드 수 증가
  public void updateDownCount(int idx) {
    try {
      String sql = "UPDATE mvcboard SET downcount = downcount + 1 ";
      sql += "WHERE idx = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, idx);

      pstmt.executeUpdate();
    }
    catch (SQLException e) {
      printErrorMessage("수정", e.getMessage());
    }
  }

//  삭제 시 비밀번호 일치 여부 확인
  public boolean confirmPassword(int idx, String pass) {
    boolean result = false;

    try {
      String sql = "SELECT COUNT(*) AS cnt FROM mvcboard ";
      sql += "WHERE idx = ? AND pass = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setInt(1, idx);
      pstmt.setString(2, pass);
      rs = pstmt.executeQuery();

      while (rs.next()) {
        if (rs.getInt("cnt") == 1) {
          result = true;
        }
      }
    }
    catch (SQLException e) {
      printErrorMessage("조회", e.getMessage());
    }

    return result;
  }

  private void printErrorMessage(String userMsg, String errMsg) {
    System.out.println("\n**********************************************\n");
    System.out.println("데이터 베이스 " + userMsg + " 중 오류가 발생했습니다.");
    System.out.println("오류 내용 : " + errMsg);
    System.out.println("\n**********************************************\n");
  }
}







