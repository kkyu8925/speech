<%--
  Created by IntelliJ IDEA.
  User: data03
  Date: 2021-04-06
  Time: 오후 5:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
        .button_container {
            display: flex;
            justify-content: space-between;
        }

        .play_button {
            width: 47%;
        }

        .next_button {
            border-color: #4cd3e3;
            color: #4cd3e3;
        }

        .next_button:hover, .next_button:focus {
            background-color: #4cd3e3;
            border-color: #4cd3e3;
            color: white;
        }

        .mic_box {
            position: relative;
            margin-bottom: 100px;
            justify-content: center;
        }

        .context_box {
            justify-content: center;
        }
    </style>
</head>

<body>
<!-- Preloader Start -->
<%@include file="/WEB-INF/view/inc/preloader.jsp" %>
<!-- Preloader end -->

<!-- header start -->
<%@include file="/WEB-INF/view/inc/header.jsp" %>
<!-- header end -->

<main>
    <!-- slider Area Start-->
    <%@include file="/WEB-INF/view/inc/section.jsp" %>
    <!-- slider Area end-->

    <!-- ? services-area -->
    <div class="services-area services-area2 section-padding40">
        <div class="container">

            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-caption">
                            <h3>Speech</h3>
                            <p>밥 맛있게 먹었어</p>
                            <p>"밤 마시께 머거써"</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8">
                    <div class="single-services mb-30">
                        <div class="features-caption">
                            <h3>See</h3>
                            <p>가나다라 마바사</p>
                        </div>
                    </div>
                </div>
            </div>
            <div id="micButtonBox" class="row justify-content-sm-center mic_box">

            </div>
            <div class="row justify-content-sm-center context_box">
                <div class="features-caption">
                    <p>1 / 20</p>
                </div>
            </div>
            <div class="row justify-content-sm-center">
                <div class="col-lg-4 col-md-6 col-sm-8 button_container">
                    <button class="boxed-btn play_button next_button">Next</button>
                    <button class="boxed-btn play_button" onclick="history.back()">Back</button>
                </div>
            </div>
        </div>
    </div>
</main>

<!-- footer&Scroll Up start -->
<%@include file="/WEB-INF/view/inc/footer.jsp" %>
<!-- footer&Scroll Up end -->

<!-- JS here -->
<script src="${pageContext.request.contextPath}/resources/js/modernizr-3.5.0.min.js"></script>
<!-- Jquery, Popper, Bootstrap -->
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
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

<!-- annyang js & speechkitt -->
<script src="${pageContext.request.contextPath}/resources/js/annyang.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/speechkitt.js"></script>
<script>
    if (annyang) {
        // Add our commands to annyang
        annyang.addCommands({
            'hello': function() { alert('Hello world!'); }
        });

        // Tell KITT to use annyang
        SpeechKITT.annyang();

        // Define a stylesheet for KITT to use
        SpeechKITT.setStylesheet('${pageContext.request.contextPath}/resources/js/themes/flat.css');

        // Render KITT's interface
        SpeechKITT.vroom();
    }
</script>

</body>
</html>
