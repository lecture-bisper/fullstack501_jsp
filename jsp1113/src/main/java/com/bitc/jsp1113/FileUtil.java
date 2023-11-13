package com.bitc.jsp1113;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

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
//    경로 표시를 없애기 위해서 replace()사용
    String originalFileName = phArr[1].trim().replace("\"", "");

//    가져온 파일명이 존재할 경우 경로 및 파일명을 합하여 전체 경로명을 만들어줌
    if (!originalFileName.isEmpty()) {
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

    File oldFile = new File(saveDir + File.separator + fileName);
    File newFile = new File(saveDir + File.separator + newFileName);
    oldFile.renameTo(newFile);

    return newFileName;
  }
}







