package com.bitc.jsp1106_mvc1.database;

// 사용자 정보를 데이터 베이스에 전달하거나 받아오기 위한 DTO 클래스
public class MemberDto {
  private String id;
  private String pass;
  private String name;
  private String regidate;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getPass() {
    return pass;
  }

  public void setPass(String pass) {
    this.pass = pass;
  }

  public String getName() {
    return name;
  }

  public void setName(String name) {
    this.name = name;
  }

  public String getRegidate() {
    return regidate;
  }

  public void setRegidate(String regidate) {
    this.regidate = regidate;
  }
}







