<OBJECT PROGID=ASP.PagingHelperMall 		ID=phm  RunAt=Server></OBJECT>
<OBJECT PROGID=Scripting.FileSystemObject   	id=fso 		RUNAT=server> </OBJECT>
<OBJECT PROGID=DAL.DBHelper id=dbh RUNAT=server> </OBJECT>
<!--#include file="connect.asp"-->
<%
Response.CharSet="utf-8"
'Session.codepage="949"
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"

' 테스트로 회원 정보 가져와 보자 ..

	'-----------------------------------------
 	' 2023 두플러스 cms
	' Update Date :	2023-03
	'-----------------------------------------
  '*********************************************	
              paramInfo = Array( _
                dbh.mp( "@id",		advarchar, 	16,     "2148204203") _
              )
              set rs=dbh.RunSPReturnRS("up_sel_ptn_ContentPublisher",paramInfo , conn_duplus)	
              if not (rs.eof or rs.bof) then 
              data = rs.getRows()
              end if 
              rs.close 
              set rs = nothing

              if isArray(data) then 
                for i = 0 to Ubound(data,2)
                    ' response.write data(0,0) & "<br>"
                    ' response.write data(1,0) & "<br>"
                    ' response.write data(2,0) & "<br>"
                    ' response.write data(3,0) & "<br>"
                next
              end if 
              'response.end 


            	





'if position  = "" then position = "main" 

%>
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/noto_sans_kr.css">
    <link rel="stylesheet" href="../css/roboto.css">
    <!--<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">-->

    <link rel="stylesheet" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" href="../css/datatables.min.css">
    <link rel="stylesheet" href="../css/daterangepicker.css">
    <link rel="stylesheet" href="../css/jquery.monthpicker-0.1.css">
    <link rel="stylesheet" href="../css/buttons.dataTables.min.css">

    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/moment.min.js"></script>
    <script src="../js/datatables.js"></script>
    <script src="../js/daterangepicker.js"></script>
    <script src="../js/jquery.ui.monthpicker.js"></script>
    <!--<script src="https://cdn.jsdelivr.net/npm/chart.js@3.4.1"></script>-->
    <script src="../js/chart.js"></script>

     <!-- 엑셀 다운로드 START -->
     <script src="../js/dataTables.buttons.min.js"></script>
     <script src="../js/jszip.min.js"></script>
     <script src="../js/pdfmake.min.js"></script>
     <script src="../js/vfs_fonts.js"></script>
      <script src="../js/buttons.html5.min.js"></script>
      <script src="../js/buttons.print.min.js"></script>
      <!-- 엑셀 다운로드 END -->
    
<%

%>
</head>
<body>
    <header id="header" class="header">
        <div class="header_top">
            <h1><a href="index.asp"><img src="../img/logo.svg" alt="두플러스 로고">Contents Partner System</a></h1>

            <div class="header_info">
                <span><a href="my_page.asp" id="u_id"><img src="../img/img_profile.svg" alt="">두란노서원 (2148204203)님</a></span>
                <span id="logout"><a href="login.asp">로그아웃</a></span>
            </div>
        </div>

        <!-- 헤더 (좌측) START -->
        <nav class="gnb">
            <h2 class="blind">메인메뉴</h2>
            <ul>
                <li><a href="#none"><img src="../img/icon_home.svg" alt="">홈화면</a>
                    <ul>
                        <li><a href="index.asp"><span></span>대시보드</a></li>
                        <li><a href="notice.asp"><span></span>공지사항</a></li>
                    </ul>
                </li>
                <li><a href="#none"><img src="../img/icon_contents.svg" alt="">콘텐츠</a>
                    <ul>
                        <li><a href="content_lookup.asp"><span></span>콘텐츠 조회</a></li>
                        <li class="on"><a href="content_regist.asp"><span></span>콘텐츠 등록</a></li>
                    </ul>
                </li>
                <li><a href="#none"><img src="../img/icon_graph.svg" alt="">결산</a>
                    <ul>
                        <li><a href="sales_details.asp"><span></span>매출내역</a></li>
                        <li><a href="settlement_details.asp"><span></span>정산내역</a></li>
                    </ul>
                </li>
                <li><a href="#none"><img src="../img/icon_my.svg" alt="">마이페이지</a>
                    <ul>
                        <li><a href="my_page.asp"><span></span>출판사 정보</a></li>
                        <li><a href="qna.asp"><span></span>문의하기</a></li>
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
                $(this).toggleClass("on");
                $('.gnb').toggle();                
                if($('.gnb').css("display")=="none"){
                    $(".page_right").css('width','100%')
                    localStorage.setItem("open_gnb", "close");
                }else{
                    $(".page_right").css('width','89.7%')
                    localStorage.setItem("open_gnb", "open");
                }
            });


            let open_gnb = localStorage.getItem("open_gnb");
            if(open_gnb =='close'){
                    $(".page_right").css('width','100%')
                    $('.gnb').css("display","none")
                    $(".open_gnb").addClass("on")
            }else{
                    $('.gnb').css("display","block")
                    $(".open_gnb").removeClass('on')
                    $(".page_right").css('width','89.7%')
            }


            // gnb 스타일
            $("nav ul li ul li").removeClass('on');
            $("nav ul li ul li").click(function(){
                $(this).addClass('on')
            })
        });
    </script>