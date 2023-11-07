package com.bitc.jsp1106_mvc1.database;

import jakarta.servlet.ServletContext;

import java.sql.SQLException;

public class MemberDao extends JDBConnect {

  public MemberDao() {
    super();
  }

  public MemberDao(ServletContext app) {
    super(app);
  }

  public MemberDao(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    super(dbDriver, dbUrl, dbUserId, dbUserPw);
  }

//  회원 가입
  public int insertMember(MemberDto member) {
    int result = 0;

    try {
      String sql = "INSERT INTO member (id, pass, name, regidate) ";
      sql += "VALUES (?, ?, ?, NOW()) ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, member.getId());
      pstmt.setString(2, member.getPass());
      pstmt.setString(3, member.getName());

      result = pstmt.executeUpdate();
    }
    catch (SQLException e) {
      System.out.println("데이터 추가 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return result;
  }

//  사용자 존재 여부 확인
  public boolean isMember(String userId, String userPw) {
    boolean result = false;

    try {
      String sql = "SELECT COUNT(*) AS cnt FROM member WHERE id = ? AND pass = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, userId);
      pstmt.setString(2, userPw);

      rs = pstmt.executeQuery();

      while (rs.next()) {
        if (rs.getInt("cnt") == 1) {
          result = true;
        }
      }
    }
    catch (SQLException e) {
      System.out.println("데이터 조회 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return result;
  }

//  사용자 정보 가져오기
  public MemberDto selectMember(String userId) {
    MemberDto member = new MemberDto();

    try {
      String sql = "SELECT id, name FROM member WHERE id = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, userId);

      rs = pstmt.executeQuery();

      while (rs.next()) {
        member.setId(rs.getString("id"));
        member.setName(rs.getString("name"));
      }
    }
    catch (SQLException e) {
      System.out.println("데이터 조회 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return member;
  }
}







