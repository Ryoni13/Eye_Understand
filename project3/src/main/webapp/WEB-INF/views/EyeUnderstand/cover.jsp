<%@page import="EyeUnderstand.model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Insert title here</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
    integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
    integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
    crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
    integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
    crossorigin="anonymous"></script>

  <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/cover/">
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
    
	.cover-heading {
            transform: scale(1);
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transition: all 0.3s ease-in-out;
            /* 부드러운 모션을 위해 추가*/
        }

	.cover-heading:hover {
            transform: scale(1.4);
            -webkit-transform: scale(1.4);
            -moz-transform: scale(1.4);
            -ms-transform: scale(1.4);
            -o-transform: scale(1.4);
        }
        
    .masthead-brand {
            transform: scale(1);
            -webkit-transform: scale(1);
            -moz-transform: scale(1);
            -ms-transform: scale(1);
            -o-transform: scale(1);
            transition: all 0.3s ease-in-out;
            /* 부드러운 모션을 위해 추가*/
        }
        
    .masthead-brand:hover {
            transform: scale(1.5);
            -webkit-transform: scale(1.5);
            -moz-transform: scale(1.5);
            -ms-transform: scale(1.5);
            -o-transform: scale(1.5);
        }
  </style>

  <!-- Custom styles for this template -->
  <link href="resources/css/cover.css" rel="stylesheet">
</head>

<body class="text-center" style="font-family: 'KOTRA_BOLD-Bold'; background-color: #fff; color: #212529;">

  <div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <header>
      <div class="inner">
        <h3 class="masthead-brand" style="float:left;margin-top: 5%;">Eye Contect</h3>
        <a class="masthead-brand"  style="float:right; margin-top: 5.5%; color:black; text-decoration:none" href="login.do" ><h5>Login</h5></a>
      </div>
    </header>

    <main role="main" class="inner cover">
    <a id="title" href="http://localhost:8083/myapp/choice.do" style="text-decoration:none">
      <h3 class="cover-heading" style="margin-top: 30%; color:black;">간단한 감정 표현부터 하고싶은 말까지 <br>당신의 눈으로 편리하게
        의사표현할 수 있어요.</h3>
	</a>
      <p>
        <a id="page" href="http://localhost:9000/choice">
          <img class="img" src="resources/img/eye.svg" alt="" style="width:50%; margin-top: 15%;">
        </a>
      </p>
      <p>
        <a>눈 위에 마우스를 올려보세요</a>
      </p>
    </main>
  </div>
</body>

<script>
  $(document).ready(function () {
      //[1] img에 마우스 오버시 이미지 변경
      $('img').mouseover(function () {
          $(this).attr("src", "resources/img/visibility.svg");
          $(this).attr("id", "on");
      }).mouseout(function(){
        $(this).attr("src", "resources/img/eye.svg");
        $(this).attr("id", "off");
      });
  });
  
  
  
</script>

</html>
