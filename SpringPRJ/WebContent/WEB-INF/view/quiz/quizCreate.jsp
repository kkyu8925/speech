<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    List<String> rUserQuizContList = (List<String>) request.getAttribute("rUserQuizContList");

    if (rUserQuizContList == null) {
        rUserQuizContList = new ArrayList<>();
    }

    String quiz_title = CmmUtil.nvl((String) request.getAttribute("quiz_title"));
%>
<html>
<head>
    <!-- head Start -->
    <%@include file="/WEB-INF/view/inc/head.jsp" %>
    <!-- head end -->

    <style>
        #table_button_box {
            display: flex;
            justify-content: space-around;
            padding-top: 50px;
        }

        #table_button_box button {
            font-weight: bold;
        }

        .history_button {
            color: #1f2b7b;
            border-color: #1f2b7b;
        }

        .history_button:hover, .history_button:focus {
            background-color: #1f2b7b;
            border-color: #1f2b7b;
            color: white;
        }

        .practice_button {
            color: #4cd3e3;
            border-color: #4cd3e3;
        }

        .practice_button:hover, .practice_button:focus {
            background-color: #4cd3e3;
            border-color: #4cd3e3;
            color: white;
        }

        .delete_button {
            color: #f44a40;
            border-color: #f44a40;
        }

        .delete_button:hover, .delete_button:focus {
            background-color: #f44a40;
            border-color: #f44a40;
            color: white;
        }

        .list_button {
            height: 40px;
            width: 70px;
            text-align: center;
            padding: 0;
        }

        .update_button {
            margin-right: 30px;
        }

        .table-row:hover {
            background-color: bisque;
        }

        .input_title {
            margin-bottom: 30px;
            width: 30%;
        }

        @media screen and (max-width: 990px) {
            .input_title {
                width: 50%;
            }
        }

        .plus_table_row {
            justify-content: center;
            font-weight: bold;
            color: mediumorchid;
            cursor: pointer;
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

    <div class="whole-wrap">
        <div class="container box_1170">
            <div class="section-top-border">

                <% if (quiz_title.equals("")) { %>
                <!-- insert QUiZ form -->
                <form id="quizForm" method="post" action="${pageContext.request.contextPath}/insertQuiz.do"
                      onsubmit="return submitCreateHandler();">
                    <input class="form-control valid input_title" name="quiz_title" id="title" type="text"
                           placeholder="Enter title">

                    <!-- quizCreateForm Area Start-->
                    <%@include file="/WEB-INF/view/quiz/inc/quizCreateForm.jsp" %>
                    <!-- quizCreateForm Area end-->

                </form>
                <% } else {%>
                <!-- update QUiZ form -->
                <form id="quizForm" method="post"
                      action="${pageContext.request.contextPath}/updateUserQuiz.do?quiz_title=<%=quiz_title%>"
                      onsubmit="submitUpdateHandler();">
                    <h3 id="getQuizTitle"></h3>

                    <!-- quizCreateForm Area Start-->
                    <%@include file="/WEB-INF/view/quiz/inc/quizCreateForm.jsp" %>
                    <!-- quizCreateForm Area end-->

                </form>
                <% }%>


            </div>

        </div>
    </div>
</main>
<!-- footer&Scroll Up start -->
<%@include file="/WEB-INF/view/inc/footer.jsp" %>
<!-- footer&Scroll Up end -->

<!-- js file start -->
<%@include file="/WEB-INF/view/inc/jsfile.jsp" %>
<!-- js file end -->

<script type="text/javascript">
    // 유저 퀴스 수정시 init
    let _quiz_title_ = '<%=quiz_title%>';
    let _checkQuizList_ = [];
    if (_quiz_title_ !== "") {
        $("#getQuizTitle").text(_quiz_title_);
        resetQuizContNo();
        _checkQuizList_ = makeQuizList();
        console.log(_checkQuizList_);
    }

    // 문제 중복 체크용 리스트 생성
    function makeQuizList() {
        let _quizList = $(".quizList");
        let checkQuizList = []
        for (let i = 0; i < _quizList.length; i++) {
            checkQuizList.push(_quizList[i].innerHTML)
        }
        return checkQuizList;
    }

    function createQuizHandler() {
        let _input = prompt("문제를 입력하세요.");

        _checkQuizList_ = makeQuizList();

        // 문제 중복 체크
        if (_checkQuizList_.includes(_input)) {
            alert("중복인 문제입니다.");
        } else if (_input !== null && _input !== "") {
            let resHTML = "";
            resHTML += '<div class="table-row">';
            resHTML += '<div class="serial quizContNo"></div>';
            resHTML += '<div class="country quizList">' + _input + '</div>';
            resHTML += '<div class="percentage">';
            resHTML += '<button onclick="updateClickHandler(this)" type="button" class="boxed-btn list_button update_button">수정</button>';
            resHTML += '<button onclick="deleteClickHandler(this)" type="button" class="boxed-btn list_button delete_button">삭제</button>';
            resHTML += '</div>';
            resHTML += '</div>';
            $(".plus_table_row").before(resHTML);
            resetQuizContNo();
            _checkQuizList_ = makeQuizList();
        }

    }

    function deleteClickHandler(e) {
        let root = e.parentNode.parentNode;
        root.remove();
        resetQuizContNo();
        _checkQuizList_ = makeQuizList();
    }

    // 문제 번호 입력
    function resetQuizContNo() {
        let quizContList = $(".quizContNo");

        for (let i = 0; i < quizContList.length; i++) {
            let no = i + 1;
            quizContList[i].innerHTML = no < 10 ? "0" + String(no) : no;
        }
    }

    function updateClickHandler(e) {
        let _input = prompt("문제를 입력하세요.");

        if (_checkQuizList_.includes(_input)) {
            alert("중복인 문제입니다.");
        } else {
            let root = e.parentNode.parentNode;
            root.querySelector(".country").innerHTML = _input;
            _checkQuizList_ = makeQuizList();
        }
    }

    function submitCreateHandler() {
        let _title = $("#title").val();
        let quizContList = $(".quizContNo").length;
        let flag = false;

        if (_title === "") {
            alert("제목을 입력해주세요");
            $("#title").focus();
            return false;
        } else if (quizContList === 0) {
            alert("문제를 생성해주세요.");
            return false;
        } else {
            // 퀴즈 제목 중복 확인 ajax
            $.ajax({
                url: "/isQuizTitleExistForAJAX.do",
                type: "get",
                dataType: "JSON",
                async: false,
                data: {"quiz_title": _title},
                success: function (json) {
                    let _res = json.res;

                    if (_res === "true") {
                        alert("이미 존재하는 퀴즈제목입니다.");
                        flag = false;
                    } else {
                        flag = true;
                    }
                }
            });

            // ajax 끝나면 실행
            if (flag) {
                let rQuizList = $(".quizList");
                let quizLength = rQuizList.length;
                let pQuizList = [];

                for (let i = 0; i < quizLength; i++) {
                    let _quiz = rQuizList[i].innerHTML
                    pQuizList.push(_quiz);
                }
                let strQuizList = pQuizList.toString();
                $("#quizListHiddenInput").val(strQuizList);
                return true;
            } else {
                return false;
            }
        }
    }

    function submitUpdateHandler() {
        let rQuizList = $(".quizList");
        let quizLength = rQuizList.length;
        let pQuizList = [];

        for (let i = 0; i < quizLength; i++) {
            let _quiz = rQuizList[i].innerHTML
            pQuizList.push(_quiz);
        }
        let strQuizList = pQuizList.toString();
        $("#quizListHiddenInput").val(strQuizList);
    }
</script>

</body>
</html>