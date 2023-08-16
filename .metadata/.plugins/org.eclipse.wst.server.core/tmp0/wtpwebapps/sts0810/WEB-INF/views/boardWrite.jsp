<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[boardWrite.jsp]</title>
   <style type="text/css">
    *{font-size: 16pt; font-weight: bold; }
    a{text-decoration:none; font-weight: bold;   color:blue ;}
    a:hover{font-size: 20pt; font-weight: bold;   text-decoration:underline; color:green ;  }
  </style>
</head>

<body>
 <font color=blue>[boardWrite.jsp]</font> <br>

  <form  action="boardInsert.do" method="post" enctype="multipart/form-data">
      이름: <input type="text" name="name" value="kim"> <br>
      제목: <input type="text" name="title" value="blue"> <br>
      내용: <textarea rows="3" cols="20"  name="content">test</textarea> <br>
      성별:
      <input type="radio" name="gender" value="man" checked>남자 
      <input type="radio" name="gender" value="woman">여자 <br>
      취미:
      <input type="checkbox" name="hobby" value="game">게임
      <input type="checkbox" name="hobby" value="study">공부
      <input type="checkbox" name="hobby" value="ski">스키
      <input type="checkbox" name="hobby" value="movie" checked>영화 <br>
      파일: <input type="file" name="upload_f"><br>
      <input type="submit" value="스프링hobby테이블저장">
      <input type="reset" value="입력취소">
  </form>  
  
   <p>
 	<a href="index.jsp">[index.jsp]</a>
    <a href="boardWrite.do">[게시판등록]</a>
    <a href="boardList.do">[전체출력]</a> 
</body>
</html>

<!-- -
 <form  action="boardInsert.do"   method="post" enctype="multipart/form-data"  >

 파일: <input type="file" name="upload_f"><br>
    
 -->






