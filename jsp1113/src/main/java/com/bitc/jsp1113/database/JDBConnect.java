package com.bitc.jsp1113.database;

import java.sql.*;

public class JDBConnect {
  public Connection conn;
  public Statement stmt;
  public PreparedStatement pstmt;
  public ResultSet rs;

  private String dbDriver;
  private String dbUrl;
  private String dbUserId;
  private String dbUserPw;

  public JDBConnect(String dbDriver, String dbUrl, String dbUserId, String dbUserPw) {
    this.dbDriver = dbDriver;
    this.dbUrl = dbUrl;
    this.dbUserId = dbUserId;
    this.dbUserPw = dbUserPw;
  }

  public void dbOpen() {
    try {
      Class.forName(dbDriver);
      conn = DriverManager.getConnection(dbUrl, dbUserId, dbUserPw);
      System.out.println("데이터 베이스에 연결되었습니다.");
    }
    catch (Exception e) {
      System.out.println("데이터 베이스 연결이 실패했습니다.");
      System.out.println("Excetion : " + e.getMessage());
    }
  }

  public void dbClose() {
    try {
      if (rs != null) { rs.close(); }
      if (stmt != null) { stmt.close(); }
      if (pstmt != null) { pstmt.close(); }
      if (conn != null) { conn.close(); }
      System.out.println("데이터 베이스 리소스를 모두 해제했습니다.");
    }
    catch (Exception e) {
      System.out.println("데이터 베이스 리소스 해제 중 오류가 발생했습니다.");
      System.out.println("Exception : " + e.getMessage());
    }
  }
}







