<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>[boardList.jsp]</title>
   <style type="text/css">
    *{font-size: 16pt; font-weight: bold; }
    a{text-decoration:none; font-weight: bold;   color:blue ;}
    a:hover{font-size: 20pt; font-weight: bold;   text-decoration:underline; color:green ;  }
  </style>
</head>
<body>
 <font color=blue>[boardList.jsp]</font> <br>
    
  <table width=900 border=1   cellspacing="0">
  	 <tr align="right" height=40>
  	 	<td colspan="6"> 전체레코드갯수: ${Gtotal} &nbsp;  </td>
  	 </tr>
  
     <tr bgcolor=yellow height=40>
      <td>번호</td> <td>이름</td> 
      <td>제목</td> <td>성별</td> <td>취미</td>  <td align="center">이미지</td> 
     </tr>
     
     <c:forEach var="dto" items="${LG}">
     <tr height=15>
    	<td> ${dto.hobby_idx} </td>
    	<td> ${dto.name} </td>
    	<td> ${dto.title}  </td>
    	<td> ${dto.gender} </td>
    	<td> ${dto.hobby} </td>
    	<td align="center">
    	 <img src ='${pageContext.request.contextPath}/resources/upload/${dto.img_file_name}' width=200 height=50 border=0>
    	  </td>     
     </tr> 
   </c:forEach>    
</table>

 <p>
 	<a href="index.jsp">[index.jsp]</a>
    <a href="boardWrite.do">[게시판등록]</a>
    <a href="boardList.do">[전체출력]</a> 
</body>
</html>




