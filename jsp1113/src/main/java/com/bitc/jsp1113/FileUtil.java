package com.bitc.jsp1113;

import com.mysql.cj.PreparedQuery;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

//파일 업로드 시 필요한 파일 정보 받아오기, 파일 이름 변경 기능을 구현해 놓은 클래스
public class FileUtil {
//  클라이언트에서 전달받은 request 객체에서 파일 정보를 가져옴
  public static String uploadFile(HttpServletRequest req, String saveDir) throws ServletException, IOException {
//    클라언트에서 전달받은 Multipart 타입의 데이터를 가져옴
//    input 태그의 type이 'file'인 태그의 정보를 가져옴, 해당 input 태그의 name 값으로 설정
    Part part = req.getPart("attachedFile");
//    가져온 파일 정보에서 header 값이 content-disposition 인 데이터를 가져옴
    String partHeader = part.getHeader("content-disposition");
    System.out.println("partHeader=" + partHeader);

//    split(문자열) : 전체 문자열을 지정한 문자열을 기준으로 잘라서 배열에 저장함
    String[] phArr = partHeader.split("filename=");
//    전체 문자열에서 split()로 분리한 문자열 중 파일명이 있는 1번 index의 문자열의 공백기호 삭제
//    문자열 중 "" 를 없애기 위해서 replace()사용
    String originalFileName = phArr[1].trim().replace("\"", "");

//    가져온 파일명이 존재할 경우 경로 및 파일명을 합하여 전체 경로명을 만들어줌
    if (!originalFileName.isEmpty()) {
//      서버의 지정된 영역에 파일을 저장
      part.write(saveDir + File.separator + originalFileName);
    }

    return originalFileName;
  }

  public static String renameFile(String saveDir, String fileName) {
//    확장자 가져오기
    String ext = fileName.substring(fileName.lastIndexOf("."));
//    현재시간을 기준으로 파일명을 새로 생성
    String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
//    새로 만들어진 파일명과 확장자 명을 합함
    String newFileName = now + ext;

//    자바에서 제공하는 파일 객체
//    현재 서버에 저장되어 있는 파일을 선택
    File oldFile = new File(saveDir + File.separator + fileName);
//    새로운 이름으로 파일 객체를 생성
    File newFile = new File(saveDir + File.separator + newFileName);
//    현재 서버에 저장되어 있는 파일을 새로운 파일명으로 변경
    oldFile.renameTo(newFile);

    return newFileName;
  }

  public static List<String> multipleUploadFile(HttpServletRequest req, String saveDir) throws ServletException, IOException {
//    업로드된 파일명을 저장하기 위한 ArrayList 생성
    List<String> fileNameList = new ArrayList<>();

//    클라이언트에서 전달한 데이터 목록을 모두 가져옴
    Collection<Part> parts = req.getParts();
    
    for (Part part : parts) {
//      가져온 데이터의 이름이 input 태그의 name 속성값과 같은지 확인, 같지 않으면 다음 루프로 이동
      if (!part.getName().equals("attachedFile")) {
        continue;
      }

//      헤더 정보 읽어오기
      String partHeader = part.getHeader("content-disposition");
      System.out.println("partHeader=" + partHeader);

//      헤더 정보에서 파일명을 분리하기
      String[] phArr = partHeader.split("filename=");
//      파일명에서 필요없는 부분 삭제하기
      String originalFileName = phArr[1].trim().replace("\"", "");

      if (!originalFileName.isEmpty()) {
//        서버의 지정된 폴더에 파일 쓰기
        part.write(saveDir + File.separator + originalFileName);
      }

//      파일 이름을 리스트에 저장
      fileNameList.add(originalFileName);
    }

    return fileNameList;
  }
}







