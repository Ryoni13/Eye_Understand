<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<!-- 메타태그를 이용하여 IE의 문서모드를 고정 -->
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!--  모바일 환경에서 제대로 작동 할수 있게 해줌 -->
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


<link rel="stylesheet" href="resources/css/css2.css"/>
<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
   <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">
   <link href="resources/css/bootstrap.min.css" rel="stylesheet">
<script src="resources/js/script2.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<style>
    #main {
    display: grid;
    grid-template-columns: 3fr 1fr;    
    }
    #main #contents {
        min-height: 500px; 
        background-color:#00ffff; 
        margin-right: 10px;
    }
    #main #sidebar {
        min-height: 500px; 
        background-color: #00bfff;
    }
    #footer {
        margin-top: 10px; 
        background-color: #00bfff;
    }
     .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

@media (max-width:600px){ /*가로 너비가 600px 이하일 때 아래 스타일 적용*/
    #main {
        display: block;    
    }
    #main #contents {  
        margin-bottom: 10px; 
        margin-right: 0px;
    }
    #main #sidebar {
        min-height: 0;
    }
    table {
        width: 100%;
    }
    .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
     @font-face {
    font-family: 'KOTRA_BOLD-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}


</style>
</head>
<body style="font-family: 'KOTRA_BOLD-Bold';">
 <!-- 키보드 -->
    <form action="${path}/list.do" method="post">
    	<input class="keyboardInput searchInput" type="text" name = "words" value="" required>
   		<input type="hidden" id="eng_text" readonly>
   		<input type="submit">
   </form>
   
    <div class="container">
      <div class="row">
      <div class="col-md-2" >
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/smiling.svg" alt="" style="width:150px; height:100px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">행복해요</p>
               </div>
          </div>
          </button>
        </div>
        <div class="col-md-2" >
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/smiling.svg" alt="" style="width:150px; height:100px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">행복해요</p>
               </div>
          </div>
          </button>
        </div>
        <div class="col-md-2" >
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/smiling.svg" alt="" style="width:150px; height:100px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">행복해요</p>
               </div>
          </div>
          </button>
        </div>
        <div class="col-md-2" >
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/smiling.svg" alt="" style="width:150px; height:100px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">행복해요</p>
               </div>
          </div>
          </button>
        </div>
        <div class="col-md-2" >
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/smiling.svg" alt="" style="width:150px; height:100px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">행복해요</p>
               </div>
          </div>
          </button>
        </div>
        <div class="col-md-2" >
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/smiling.svg" alt="" style="width:150px; height:100px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">행복해요</p>
               </div>
          </div>
          </button>
        </div>
            </div>
    </div>
    
</body>
 <script>

      
      $(function() {    //화면 다 뜨면 시작
         <%String[] arr = (String[]) request.getAttribute("testlist");%>
               var searchSource = [];
            <%for (int i = 0; i < arr.length; i++) {%>
            
               searchSource.push("<%=arr[i]%>");
         console.log(searchSource);
   <%}%>
      
   <%-- var searchSource = <%=arr2.get(0)%>; // 배열 형태로  --%>
      $(".searchInput").autocomplete({//오토 컴플릿트 시작
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
            delay : 100, //검색창에 글자 써지고 나서 autocomplete 창 뜰 때 까지 딜레이 시간(ms)
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
</html>