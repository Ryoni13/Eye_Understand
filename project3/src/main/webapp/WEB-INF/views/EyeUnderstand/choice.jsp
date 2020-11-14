<%@page import="EyeUnderstand.model.MemberVO"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Product example · Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/product/">

    <!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      @font-face {
    font-family: 'KOTRA_BOLD-Bold';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
    </style>
    <!-- Custom styles for this template -->
    <link href="resources/css/product.css" rel="stylesheet">
  </head>
  <body style="font-family: 'KOTRA_BOLD-Bold';">
  
  
  <%
 		 MemberVO vo = (MemberVO) session.getAttribute("vo");
  
  System.out.println("choice ID >>>>> " + vo.getId());
  %>
  
    <nav class="site-header sticky-top py-1">
  <div class="container d-flex flex-column flex-md-row justify-content-between">
    <a class="py-2" href="cover.do" aria-label="Product" style="font-size:24px;">
        <strong>Eye-contect</strong>
      </a>
  </div>
</nav>


<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3" style="height:800px;">
  <button class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden" style="width:100%; border: 0px" onclick="location.href='emoticon.do'">
  <div>
    <div class="my-3 py-3">
      <h2 class="display-5">이모티콘</h2>
      <p class="lead">간단한 의사표현을 할 수 있어요.</p>
      <!-- <a class="btn btn-secondary btn-lg" href="emoticon.do" role="button">Start</a> -->
   </div>
    <div class="bg-light shadow-sm mx-auto" style="width: 80%; height: 350px; border-radius: 21px 21px 0 0;">
    </div>
   </div>
  </button> 
  <button class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden" style="border: 0px" onclick="location.href='list.do'">
  <div>
    <div class="my-3 p-3">
      <h2 class="display-5">키보드</h2>
      <p class="lead">하고싶은 말을 할 수 있어요.</p>
      <!-- <a href="keyboard.do" class="btn btn-secondary btn-lg">Start</a> -->
    </div>
    <div class="bg-dark shadow-sm mx-auto" style="width: 80%; height: 350px; border-radius: 21px 21px 0 0;"></div>
  </div>
</div>
</button>


<footer class="container py-5">
  <div class="row">
    <div class="col-12 col-md">
    </div>
  </div>
</footer>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="resources/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="resources/js/bootstrap.bundle.min.js"></script>
</html>
