<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Speech</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">

    <!-- CSS here -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slicknav.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/themify-icons.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/slick.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/fontawesome-free-5.15.3-web/css/all.min.css">

    <style>
        .delete_box {
            border-radius: 15px;
            font-weight: bold;
            width: 30px;
            height: 30px;
            position: absolute;
            top: 10px;
            right: 40px;
            z-index: 2;
            font-size: large;
            text-align: center;
            color: white;
            cursor: pointer;
        }

    </style>
    <script type="text/javascript">
        // function moveClickHandler(e) {
        //     location.href = "listPage.do"

        //     // if($(".delete_checkbox").css("display") == "none"){
        //     //     location.href="listPage.do";
        //     // }

        //     // let origin_node = e.parentNode;
        //     // let input_box = origin_node.querySelector(".delete_checkbox").querySelector("input");

        //     // if(input_box.checked) {
        //     //    input_box.checked = "";
        //     // } else {
        //     //     input_box.checked = "true";
        //     // }
        // }
    </script>
    <script type="text/javascript">
        function deleteBoxClickHandler() {
            confirm("삭제?")
        }
    </script>
</head>

<body>
<!-- ? Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="${pageContext.request.contextPath}/resources/img/logo/loder.png" alt="">
            </div>
        </div>
    </div>
</div>
<!-- Preloader Start -->

<!-- Header Start -->
<header>
    <div class="header-area header-transparent">
        <div class="main-header ">
            <div class="header-bottom  header-sticky">
                <div class="container-fluid">
                    <div class="row align-items-center">
                        <!-- Logo -->
                        <div class="col-xl-2 col-lg-2">
                            <div class="logo">
                                <a href="index.do"><img
                                        src="${pageContext.request.contextPath}/resources/img/logo/logo.png" alt=""></a>
                            </div>
                        </div>
                        <div class="col-xl-10 col-lg-10">
                            <div class="menu-wrapper d-flex align-items-center justify-content-end">
                                <!-- Main-menu -->
                                <div class="main-menu d-none d-lg-block">
                                    <nav>
                                        <ul id="navigation">
                                            <li class="active"><a href="index.do">Home</a></li>
                                            <li class="active"><a href="user.do">User</a></li>
                                            <!-- Button -->
                                            <li class="button-header"><a href="login.do" class="btn btn3">Log in</a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                            </div>
                        </div>
                        <!-- Mobile Menu -->
                        <div class="col-12">
                            <div class="mobile_menu d-block d-lg-none"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>
<!-- Header End -->

<main>
    <!--? slider Area Start-->
    <section class="slider-area slider-area2">
        <div class="slider-active">
            <!-- Single Slider -->
            <div class="single-slider slider-height2">
                <div class="container">
                    <div class="row">
                        <div class="col-xl-8 col-lg-11 col-md-12">
                            <div class="hero__caption hero__caption2">
                                <h1 data-animation="bounceIn" data-delay="0.2s">See & Speech</h1>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Courses area start -->
    <div class="courses-area section-padding40 fix">
        <div class="container">
            <div class="row justify-content-center">

                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mb-55">
                        <h2>나의 문제 리스트</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">

                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured1.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제1</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>

                                <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">

                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured2.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제2</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>

                                <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">

                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured3.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제3</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>

                                <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">

                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured4.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제4</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>

                                <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="properties properties2 mb-30">
                        <div class="delete_box" onclick="deleteBoxClickHandler()">X</div>
                        <div class="properties__card">

                            <div class="properties__img overlay1">
                                <img src="${pageContext.request.contextPath}/resources/img/gallery/featured5.png"
                                     alt="">
                            </div>
                            <div class="properties__caption">
                                <h3 style="text-align: center;">문제5</h3>
                                <div class="properties__footer d-flex justify-content-between align-items-center"></div>

                                <a href="listPage.do" class="border-btn border-btn2 cursor_pointer">학습하기</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="row justify-content-center">
                <div class="col-xl-7 col-lg-8">
                    <div class="section-tittle text-center mt-40">
                        <button type="submit" class="boxed-btn" onclick="location.href='create.do'"
                                style="font-weight: bold;">생성하기
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Courses area End -->

</main>

<footer>
    <div class="footer-wrappper footer-bg">
        <!-- footer-bottom area -->
        <div class="footer-bottom-area">
            <div class="container">
                <div class="footer-border">
                    <div class="row d-flex align-items-center">
                        <div class="col-xl-12 ">
                            <div class="footer-copy-right text-center">
                                <p>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                    Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                                    All rights reserved | This template is made with <i class="fa fa-heart"
                                                                                        aria-hidden="true"></i> by <a
                                        href="https://colorlib.com" target="_blank">Colorlib</a>
                                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End-->
    </div>
</footer>

<!-- Scroll Up -->
<div id="back-top">
    <a title="Go to Top" href="#"> <i class="fas fa-level-up-alt"></i></a>
</div>

<!-- JS here -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.4.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.slicknav.min.js"></script>
<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="${pageContext.request.contextPath}/resources/js/slick.min.js"></script>
<!-- Progress -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.barfiller.js"></script>
<!-- counter , waypoint,Hover Direction -->
<script src="${pageContext.request.contextPath}/resources/js/hover-direction-snake.min.js"></script>
<!-- Jquery Plugins, main Jquery -->
<script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>
</html>