<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>    
<%@page import="air.korea.model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath}"/> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
   function insertFn(){
	  location.href="${cpath}/insertForm.do";
   }
   function deleteFn(num){
	  location.href="${cpath}/delete.do?num="+num;
   }
   function searchFn(){
		  location.href="${cpath}/timeSearch.do";
	   }
</script>
</head>
<body>
- 항공 시간표 리스트 - (민정/영욱/찬열/문형)
<table border="1" width="500" >
  <tr align="center">
    <td>출발지</td>
    <td>도착지</td>
    <td>시간표</td>
    <td>비고</td>
  </tr>
  <c:forEach var="vo" items="${getTimelist}">
   <tr align="center">
    <td>${vo.start_place}</td>
    <td>${vo.end_place}</td>
    <td>${vo.parttime}</td>
    <td>${vo.bigo}</td>
  </tr>  
  </c:forEach>
  <tr>
    <td colspan="4" align="right">
       <input type="button" value="시간표 검색" onclick="searchFn()"/>       
    </td>
  </tr>
</table>

<!--  - 회원리스트보기(MVC 1차 변형-FC/POJO - 팀명) -
<table border="1">
  <tr>
    <td>번호</td>
    <td>이름</td>
    <td>아이디</td>
    <td>전화번호</td>
    <td>이메일</td>
    <td>삭제</td>
  </tr>
  <c:forEach var="vo" items="${list}">
   <tr>
    <td>${vo.num}</td>
    <td>${vo.name}</td>
    <td><a href="${cpath}/content.do?num=${vo.num}">${vo.id}</a></td>
    <td>${vo.phone}</td>
    <td>${vo.email}</td>
    <td><input type="button" value="삭제" onClick="deleteFn(${vo.num})"/></td>
  </tr>  
  </c:forEach>
  <tr>
    <td colspan="6" align="right">
       <input type="button" value="회원가입" onclick="insertFn()"/>       
    </td>
  </tr>
</table> -->
</body>
</html>