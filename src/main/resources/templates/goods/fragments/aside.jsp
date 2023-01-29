<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
 <aside th:fragment="asideFragment">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="shortcut icon" th:href="@{resources/static/img/favicon.ico}">
    <title>매점 주문하기</title>

    <!-- Global stylesheets -->
    <link th:href="@{resources/static/css/bootstrap/bootstrap.min.css}" rel="stylesheet">
    <link th:href="@{https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:100,200,300,400,500,600,700,800,900}" rel="stylesheet">
    <link th:href="@{https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i}" rel="stylesheet">
    <link th:href="@{resources/static/font-awesome/css/font-awesome.min.css}" rel="stylesheet">
    <link th:href="@{resources/static/css/devicons/css/devicons.min.css}" rel="stylesheet">
    <link th:href="@{resources/static/css/simple-line-icons/css/simple-line-icons.css}" rel="stylesheet">
    <link th:href="@{css/style.css}" rel="stylesheet">
  </head>

  <body id="page-top">

  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#page-top">
      <span class="d-block d-lg-none  mx-0 px-0"><img th:src="img/logo-white.png" alt="" class="img-fluid"></span>
      <span class="d-none d-lg-block">
          <img class="img-fluid img-profile rounded-circle mx-auto mb-2" th:src="img/profile.jpg" alt="">
        </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger"  th:href="#about">About</a>
        </li>

        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" th:href="#@{/goods/list2(c=popcorn)}">팝콘</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" th:href="#@{/goods/list2(c=drink)}">음료</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" th:href="#@{/goods/list2(c=hotdog)}">핫도그</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" th:href="#@{/goods/list2(c=snack)}">스낵</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" th:href="#order"></a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container-fluid p-0">
  </div>
  </body>

</aside>
</html>