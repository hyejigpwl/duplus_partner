<%

	'-----------------------------------------
 	' 2023 ���÷��� cms
	' Update Date :	2023-03
	'-----------------------------------------


Response.CharSet="euc-kr"
'Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"

'if position  = "" then position = "main" 

%>

    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">

    <link rel="stylesheet" href="../css/jquery-ui.min.css">
    <link rel="stylesheet" href="../css/datatables.min.css">
    <link rel="stylesheet" href="../css/daterangepicker.css">
    <link rel="stylesheet" href="../css/jquery.monthpicker-0.1.css">
    


    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/moment.min.js"></script>
    <script src="../js/datatables.js"></script>
    <script src="../js/daterangepicker.js"></script>
    <script src="../js/jquery.ui.monthpicker.js"></script>
<%

%>
</head>
<body>
    <header id="header" class="header">
        <div class="header_top">
            <h1><a href="index.asp"><img src="../img/logo.svg" alt="���÷��� �ΰ�">Contents Partner System</a></h1>

            <div class="header_info">
                <span><a href="#none" id="u_id"><img src="../img/profile-circle.png" alt="">�ζ��뼭�� (2148204203)��</a></span>
                <span id="logout"><a href="login.asp">�α׾ƿ�</a></span>
            </div>
        </div>

        <!-- ��� (����) START -->
        <nav class="gnb">
            <h2 class="blind">���θ޴�</h2>
            <ul>
                <li><a href="#none">Ȩȭ��</a>
                    <ul>
                        <li><a href="index.asp"><span></span>��ú���</a></li>
                        <li><a href="notice.asp"><span></span>��������</a></li>
                    </ul>
                </li>
                <li><a href="#none"><span></span>������</a>
                    <ul>
                        <li><a href="content_lookup.asp"><span></span>������ ��ȸ</a></li>
                        <li class="on"><a href="content_regist.asp"><span></span>������ ���</a></li>
                    </ul>
                </li>
                <li><a href="#none">���</a>
                    <ul>
                        <li><a href="sales_details.asp"><span></span>���⳻��</a></li>
                        <li><a href="settlement_details.asp"><span></span>���곻��</a></li>
                    </ul>
                </li>
                <li><a href="#none">����������</a>
                    <ul>
                        <li><a href="my_page.asp"><span></span>���ǻ� ���� ����</a></li>
                        <li><a href="qna.asp"><span></span>�����ϱ�</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- ��� (����) END -->
    </header>

    <script>
        $(document).ready(function(){
            // gnb ����
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