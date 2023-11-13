package com.bitc.jsp1113.database;

import java.sql.SQLException;

public class MemberDao extends JDBConnect {

  public MemberDao(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    super(dbDriver, dbUrl, dbUserId, dbUserPw);
  }

  public MemberDto getMemberInfo(String userId, String userPw) {
    MemberDto member = new MemberDto();

    try {
      String sql = "SELECT id, name, regidate FROM member WHERE id = ? AND pass = ? ";

      pstmt = conn.prepareStatement(sql);
      pstmt.setString(1, userId);
      pstmt.setString(2, userPw);

      rs = pstmt.executeQuery();

      while (rs.next()) {
        member.setId(rs.getString("id"));
        member.setName(rs.getString("name"));
        member.setRegidate(rs.getString("regidate"));
      }
    }
    catch (SQLException e) {
      System.out.println("데이터 조회 중 오류가 발생했습니다.");
      System.out.println("SQLException : " + e.getMessage());
    }

    return member;
  }
}







