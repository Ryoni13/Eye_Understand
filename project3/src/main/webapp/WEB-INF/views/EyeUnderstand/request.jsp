<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Jekyll v4.1.1">
    <title>Album example · Bootstrap</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.5/examples/album/">

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
    <link href="resources/css/album.css" rel="stylesheet">
  </head>
  <body style="font-family: 'KOTRA_BOLD-Bold';">
    <header>
  <div class="collapse bg-dark" id="navbarHeader">
    <div class="container">
      <div class="row">
        <div class="col-sm-8 col-md-7 py-4">
          <h4 class="text-white">About</h4>
          <p class="text-muted">Add some information about the album below, the author, or any other background context. Make it a few sentences long so folks can pick up some informative tidbits. Then, link them off to some social networking sites or contact information.</p>
        </div>
        <div class="col-sm-4 offset-md-1 py-4">
          <h4 class="text-white">Contact</h4>
          <ul class="list-unstyled">
            <li><a href="#" class="text-white">Follow on Twitter</a></li>
            <li><a href="#" class="text-white">Like on Facebook</a></li>
            <li><a href="#" class="text-white">Email me</a></li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <div class="navbar navbar-dark bg-dark shadow-sm">
    <div class="container d-flex justify-content-between">
      <a href="cover.do" class="navbar-brand d-flex align-items-center"  style="font-size:24px;">
        <strong>Eye-contect</strong>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    </div>
  </div>
</header>

<main role="main">

  <section class="jumbotron text-center">
    <div class="container">
      <h1>의사표현</h1>
      <p class="lead text-muted">감정 또는 요청 </p>
      <p>
        <a href="emoticon.do" class="btn btn-secondary my-2" >감정</a>
        <a href="objects.do" class="btn btn-secondary my-2" style="color: #424242; background-image: linear-gradient(to top, #c1dfc4 0%, #deecdd 100%); border-color:#deecdd">요청</a>
      </p>
    </div>
  </section> 

  <div class="album py-5 bg-light">
    <div class="container">

      <div class="row">
      
        <div class="col-md-3" >
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <svg width="250px" height="200px" viewBox="0 0 16 16" class="bi bi-eyeglasses" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
			 <path fill-rule="evenodd" d="M4 6a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm2.625.547a3 3 0 0 0-5.584.953H.5a.5.5 0 0 0 0 1h.541A3 3 0 0 0 7 8a1 1 0 0 1 2 0 3 3 0 0 0 5.959.5h.541a.5.5 0 0 0 0-1h-.541a3 3 0 0 0-5.584-.953A1.993 1.993 0 0 0 8 6c-.532 0-1.016.208-1.375.547zM14 8a2 2 0 1 0-4 0 2 2 0 0 0 4 0z"/>
		   </svg>
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">안경</p>
              
              <!-- <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                  <button type="button" class="btn btn-sm btn-outline-secondary">View</button>
                  <button type="button" class="btn btn-sm btn-outline-secondary">Edit</button>
                </div>
                <small class="text-muted">9 mins</small>
              </div> -->
            </div>
          </div>
          </button>
        </div>
        
             <div class="col-md-3">
          <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/toilet.svg" alt="" style="width:250px; height:200px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">화장실</p>
            </div>
          </div>
          </button>
        </div>
        
        <div class="col-md-3">
        <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/bed-up.svg" alt="" style="width:250px; height:200px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">침대 올려주세요</p>
            </div>
          </div>
          </button>
        </div>
        
        <div class="col-md-3">
          <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
            <img src="resources/img/youtube.svg" alt="" style="width:250px; height:200px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">유투브 틀어주세요</p>
            </div>
          </div>
          </button>
        </div>
        
        <div class="col-md-3">
          <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/cough.svg" alt="" style="width:250px; height:200px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">가래 뽑아주세요</p>
            </div>
          </div>
          </button>
        </div>
        
      <!--   <div class="col-md-3">
          <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           
            <div class="card-body">
              <p class="card-text">목말라요</p>
            </div>
          </div>
          </button>
        </div> -->

        <div class="col-md-3">
          <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/bad-breath2.svg" alt="" style="width:250px; height:200px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">호흡 불편해요</p>
            </div>
          </div>
          </button>
        </div>
        
        <div class="col-md-3">
          <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/bed.svg" alt="" style="width:250px; height:200px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">침대 내려주세요</p>
            </div>
          </div>
          </button>
        </div>
        
        <div class="col-md-3">
          <button class="card mb-4 shadow-sm" style="border: 0px" onclick="location.href='#'">
          <div>
           <img src="resources/img/patient2.svg" alt="" style="width:250px; height:200px;">
            <div class="card-body">
              <p class="card-text" style="font-size:24px;">자세 불편해요</p>
            </div>
          </div>
          </button>
        </div>
        
      </div>
    </div>
  </div>

</main>

<!-- <footer class="text-muted">
  <div class="container">
    <p class="float-right">
      <a href="#">Back to top</a>
    </p>
    <p>Album example is &copy; Bootstrap, but please download and customize it for yourself!</p>
    <p>New to Bootstrap? <a href="https://getbootstrap.com/">Visit the homepage</a> or read our <a href="../getting-started/introduction/">getting started guide</a>.</p>
  </div>
</footer> -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="/js/vendor/jquery.slim.min.js"><\/script>')</script><script src="resources/js/bootstrap.bundle.min.js"></script>
</html>
