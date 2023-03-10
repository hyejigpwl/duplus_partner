<%

	'-----------------------------------------
 	' 2023 두플러스 cms
	' Update Date :	2023-03
	'-----------------------------------------


Response.CharSet="euc-kr"
'Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"

'if position  = "" then position = "main" 

%>

    <link rel="stylesheet" href="../css/common.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../css/datatables.min.css">
    <link rel="stylesheet" href="../css/daterangepicker.css">

    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>
    <script src="../js/moment.min.js"></script>
    <script src="../js/datatables.js"></script>
    <script src="../js/daterangepicker.js"></script>
<%

%>
</head>
<body>
    <header id="header" class="header">
        <div class="header_top">
            <h1><a href="index.asp">DUPLUS <span>PARTNER</span></a></h1>

            <div class="header_info">
                <span><a href="#none" id="u_id"><img src="../img/profile-circle.png" alt="">두란노서원 (2148204203)님</a></span>
                <span><a href="#none" id="logout">로그아웃</a></span>
            </div>
        </div>

        <!-- 헤더 (좌측) START -->
        <nav class="gnb">
            <h2 class="blind">메인메뉴</h2>
            <ul>
                <li><a href="#none">홈화면</a>
                    <ul>
                        <li><a href="index.asp">대시보드</a></li>
                        <li><a href="notice.asp">공지사항</a></li>
                    </ul>
                </li>
                <li><a href="#none">콘텐츠</a>
                    <ul>
                        <li><a href="content_lookup.asp">콘텐츠 조회</a></li>
                        <li><a href="content_regist.asp">콘텐츠 등록</a></li>
                    </ul>
                </li>
                <li><a href="#none">결산</a>
                    <ul>
                        <li><a href="sales_details.asp">매출내역</a></li>
                        <li><a href="settlement_details.asp">정산내역</a></li>
                    </ul>
                </li>
                <li><a href="#none">마이페이지</a>
                    <ul>
                        <li><a href="my_page.asp">출판사 정보 관리</a></li>
                        <li><a href="qna.asp">문의하기</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- 헤더 (좌측) END -->
    </header>

    <script>
        $(document).ready(function(){
            // gnb 열기
            $(".open_gnb").click(function(){
                $('.gnb').toggle();
                if($('.gnb').css("display")=="none"){
                    $(".page_right").css('width','100%')
                }else{
                    $(".page_right").css('width','89.7%')
                }
            });
        });
    </script>