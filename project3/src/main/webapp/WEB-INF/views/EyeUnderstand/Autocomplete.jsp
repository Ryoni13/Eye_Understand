<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<!-- CSS , JS -->
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<body>
   <!-- <input id="searchInput"> -->

   <form action="memberMapper.xml">
      <input id="searchInput"> <input type="submit">
   </form>


   <!-- 스크립트 영역 -->
   <script>

      
      $(function() {    //화면 다 뜨면 시작
         <%String[] arr = (String[]) request.getAttribute("testlist");%>
               var searchSource = [];
            <%for (int i = 0; i < arr.length; i++) {%>
            
               searchSource.push("<%=arr[i]%>");
         console.log(searchSource);
   <%}%>
      
   <%-- var searchSource = <%=arr2.get(0)%>; // 배열 형태로  --%>
      $("#searchInput").autocomplete({//오토 컴플릿트 시작
            source : searchSource, // source 는 자동 완성 대상
            select : function(event, ui) { //아이템 선택시
               console.log(ui.item);
            },
            focus : function(event, ui) { //포커스 가면
               return false;//한글 에러 잡기용도로 사용됨
            },
            matchContains : false,
            minLength : 1,// 최소 글자수
            autoFocus : false, //첫번째 항목 자동 포커스 기본값 false
            classes : { //잘 모르겠음
               "ui-autocomplete" : "highlight"
            },
            delay : 500, //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
            //            disabled: true, //자동완성 기능 끄기
            position : {
               my : "right top",
               at : "right bottom"
            }, //잘 모르겠음
            close : function(event) { //자동완성창 닫아질때 호출
               console.log(event);
            }
         });
      });
   </script>

</body>
</html>