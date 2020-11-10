<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
- ${vo.name} 회원 상세보기-
<form action="${cpath}/update.do" method="post">
<input type="hidden" name="num" value="${vo.num}"/>
<table border="1" width="500px">
  <tr>
    <td>번호</td>
    <td>${vo.num}</td>
  </tr>
  <tr>
    <td>이름</td>
    <td>${vo.name}</td>
  </tr>
    <tr>
    <td>아이디</td>
    <td>${vo.id}</td>
  </tr>
   <tr>
    <td>전화번호</td>
    <td><input type="text" name="phone" value="${vo.phone}"/></td>
  </tr>
    <tr>
    <td>이메일</td>
    <td><input type="text" name="email" value="${vo.email}"/></td>
  </tr>
  <tr>
     <td colspan="2" align="center">
         <input type="submit" value="수정"/>
         <input type="reset" value="취소"/>
         <input type="button" value="리스트" onclick="location.href='${cpath}/list.do'"/>
     </td>
  </tr>
</table>
</form>
</body>
</html>