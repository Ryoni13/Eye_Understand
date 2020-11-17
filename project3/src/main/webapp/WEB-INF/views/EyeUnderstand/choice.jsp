<%@page import="EyeUnderstand.model.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
   content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v4.1.1">
<title>Eye Understand</title>


<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
   integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
   crossorigin="anonymous">
<link rel="canonical"
   href="https://getbootstrap.com/docs/4.5/examples/product/">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
   integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
   integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
   integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
   crossorigin="anonymous"></script>
   
<!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css"
   rel="stylesheet">

<style>
.bd-placeholder-img {
   font-size: 1.125rem;
   text-anchor: middle;
   -webkit-user-select: none;
   -moz-user-select: none;
   -ms-user-select: none;
   user-select: none;
}

@media ( min-width : 768px) {
   .bd-placeholder-img-lg {
      font-size: 3.5rem;
   }
}

html, body {
   height: 100%;
   overflow: hidden
}

.h-div {
   height: 96%;
   border: 3px #f99 solid
}

@font-face {
   font-family: 'KOTRA_BOLD-Bold';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}
</style>
<!-- Custom styles for this template -->
<link href="resources/css/product.css"
   rel="stylesheet">
</head>
<body>
   <%
   MemberVO vo = (MemberVO) session.getAttribute("vo");
   System.out.println("choice ID >>>>> " + vo.getId());
  %>
   <div class="d-md-flex flex-md-equal w-100 " style="height: 100%;">
      <button style="background-color: #343a40; border: 0px;"
         onclick="location.href='emoticon.do'">
         <div class=" text-center overflow-hidden"
            style="background-color: #343a40;">
            <div class="">
               <h2 class="display-5" style="font-family: 'KOTRA_BOLD-Bold'; color:#fff;">간단 의사표현</h2>
               <p class="lead" style="font-family: 'KOTRA_BOLD-Bold'; color:#fff;">이모티콘과 함께 의사표현을 할 수 있어요</p>
            </div>
            <div class="shadow-sm mx-auto"
               style="width: 80%; height: 60%; border-radius: 21px 21px 21px 21px;">
               <div style="width: 100%; float: left; color: #fff;">
                  <img src="resources/png/pngegg.png" width="50%"
                     style="margin-top: 12%;" alt="이미지 없습니다.">
               </div>
            </div>
         </div>
      </button>
      <button style="background-color: #fff; border: 0px;"
         onclick="location.href='list.do'">
         <div class=" text-center overflow-hidden"
            style="background-color: #fff;">
            <div class="">
               <h2 class="display-5" style="font-family: 'KOTRA_BOLD-Bold'">키보드</h2>
               <p class="lead" style="font-family: 'KOTRA_BOLD-Bold'">하고싶은 말을
                  할 수 있어요</p>
            </div>
            <div class="bg-dark shadow-sm mx-auto"
               style="width: 80%; height: 60%; border-radius: 21px 21px 21px 21px;">
               <div style="width: 100%; float: left; color: #fff;">
                  <img src="resources/png/keyboard.png" width="100%" height="100%;"
                     style="margin-top: 12%;" alt="이미지 없습니다.">
               </div>
            </div>
         </div>
      </button>
   </div>


   <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
      integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
      crossorigin="anonymous"></script>
   <script>window.jQuery || document.write('<script src="resources/vendor/jquery/jquery.slim.min.js"><\/script>')</script>
   <script src="resources/js/bootstrap.min.js"></script>
</html>