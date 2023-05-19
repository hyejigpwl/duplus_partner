<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <!--<meta name="description" content="두플러스 콘텐츠 파트너 시스템" />
    <meta name="keywords" content="두플러스, 두플, 두란노, 복음, 콘텐츠, 오리지널, 오디오북, 전자책, 강의, 구독, 큐티, 신앙, 교회, 목회" />
    <meta name="author" content="duranno" />-->
    <title>두플러스 콘텐츠 파트너 시스템</title>
    <link rel="icon" href="//www.duranno.com/duplus/img/core/favicon-16x16.png" type="/duranno/image/x-icon"> <!-- 파비콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"><!-- //구글 아이콘폰트 --> 
    <!-- sns tag -->
	<!--<meta property="og:type" content="website">
	<meta property="og:site_name" content="두플러스 콘텐츠 파트너 시스템">
	<meta property="og:title" content="두플러스 콘텐츠 파트너 시스템">
	<meta property="og:url" content="https://www.du.plus/duplus.html">
	<meta property="og:image" content="http://www.duranno.com/duplus/img/intro/thumbnail.jpg">
	<meta property="og:description" content="두플러스 콘텐츠 파트너 시스템">-->

    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/noto_sans_kr.css">

    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>

    <script>
        // 유효성 검사
        function form_check(){
            const u_pw=document.getElementById("u_pw");
            const u_pw_chk=document.getElementById("u_pw_chk");
            const cert_num=document.getElementById("cert_num");
            const my_page_form=document.getElementById("my_page_form");
            const pw_fin_modal=document.getElementById("pw_fin_modal");
            const pw_fin_btn=document.getElementById("pw_fin_btn");

            /* 비밀번호 입력 여부 */
            if (u_pw.value == ""){
                var txt=document.getElementById("err_pwd");
                txt.textContent="비밀번호를 입력해주세요.";
                u_pw.focus();
                return false;
            }

             /*비밀번호 확인*/
             if (u_pw.value!=u_pw_chk.value){
                var txt=document.getElementById("err_repwd");
                txt.textContent="비밀번호가 일치하지 않습니다.";
                u_pw_chk.focus();
                return false;
            };

            // 완료 팝업 띄우기
            pw_fin_modal.style.display="block";

            // 팝업에서 로그인 페이지로 클릭시 submit 되게
            pw_fin_btn.addEventListener('click',submit);
            function submit(){
                my_page_form.submit();
                location.href="login.asp";
            }
           
        }

    
    </script>
</head>
<body>

    <!-- 비밀번호 완료 모달 START -->
    <div class="modal a_modal" id="pw_fin_modal">
        <div class="modal_body">
            <p class="title_wrap"><span class="modal_title">비밀번호 변경이 완료되었습니다.</span><span><!--<img class="btn_close_popup" src="../img/btn_ly_close.png" alt="닫기">--></span></p>
            <!--<table class="table_input">
                <colgroup>
                    <col class="th">
                    <col class="td">
                </colgroup>
                <tbody>
                    <th>소개내용</th>
                    <td><textarea name="a_info_txt" id="a_info_txt" cols rows="5"></textarea></td>
                </tbody>
            </table>-->
            <div class="btn_wrap">
                <button type="button" class="btn_primary btn_md" id="pw_fin_btn">로그인 페이지로</button>
            </div>
        </div>
    </div>
    <!-- 비밀번호 완료 모달 END -->

    <header id="header" class="header">
        <div class="header_top" style="margin:0 auto; max-width:768px;">
            <h1><a href="#none"><img src="../img/logo.svg" alt="두플러스 로고">Contents Partner System</a></h1>

            <!--<div class="header_info">
                <span><a href="my_page.asp" id="u_id"><img src="../img/img_profile.svg" alt="">두란노서원 (2148204203)님</a></span>
                <span id="logout"><a href="login.asp">로그아웃</a></span>
            </div>-->
        </div>
    </header>

    <main id="content" class="content p_pw_reset">
        <!-- 출판사 정보 관리 START -->
        <div class="content_regist">
            <form action="" method="post" id="my_page_form" class="form_primary">
                <fieldset>
                    <legend class="blind">비밀번호 재설정</legend>

                    <div class="email_wrap table_wrap">
                        <h3 class="sub_t">본인 인증</h3>
                        <table class="table_input">
                            <colgroup>
                                <col class="th">
                                <col class="td">
                                <col class="th">
                                <col class="td">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">아이디</th>
                                    <td colspan="3">
                                        <input type="text" id="u_id" name="u_id" value="" placeholder="아이디">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">이메일</th>
                                    <td colspan="3">
                                        <input type="text" id="u_email" name="u_email" value="" placeholder="등록된 이메일">

                                        <button type="button" class="btn_line gray_btn_line" id="send_num_btn" onclick="sendNum()">번호 발송</button>
                                    </td>
                                </tr>

                                <tr id="cert_num_wrap">
                                    <th scope="row">인증번호</th>
                                    <td colspan="3">
                                        <input type="text" id="cert_num" name="cert_num" value="" placeholder="인증번호">

                                        <button type="button" class="btn_line gray_btn_line" id="cert_btn" onclick="cert()">인증</button>

                                        <!-- 이메일 인증 실패 시 버튼 START -->
                                        <!--<button type="button" class="btn_line gray_btn_line">재인증</button>-->
                                         <!-- 이메일 인증 실패 시 버튼 END -->
                                    </td>
                                   
                                </tr>
                            
                            </tbody>
                        </table>
                    </div>

                    <div class="table_wrap" id="pw_reset_wrap">
                        <h3 class="sub_t">비밀번호 재설정</h3>
                        <table class="table_input">
                            <colgroup>
                                <col class="th">
                                <col class="td">
                                <col class="th">
                                <col class="td">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">새 비밀번호</th>
                                    <td colspan="3">
                                        <input type="password" name="u_pw" id="u_pw" placeholder="새 비밀번호">
                                        <p class="info_txt">* 비밀번호는 영문 대문자 및 소문자, 숫자, 특수문자 중 2종류를 포함하는 경우 10자리, 3종류를 포함하는 경우 8자리 이상으로 구성되어야 합니다.</p>
                                        <p id="err_pwd" class="info_txt err_txt"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">새 비밀번호 재입력</th>
                                    <td colspan="3">
                                        <input type="password" name="u_pw_chk" id="u_pw_chk" placeholder="새 비밀번호 재입력">
                                        <p id="err_repwd" class="info_txt err_txt"></p>
                                    </td>
                                 
                                </tr>
                              
                            </tbody>
                        </table>
                    </div>

                    <!-- 하단 버튼 START -->
                    <div class="btn_wrap">
                        <button type="button" class="btn_md btn_primary btn_open_popup" onclick="form_check() ">변경하기</button>
                        <button type="reset" class="btn_md btn_primary btn_light_gray" onclick="location.href='login.asp'">로그인 페이지로</button>
                    </div>
                    <!-- 하단 버튼 END -->


                </fieldset>
            </form>
        </div>
        <!-- 출판사 정보 관리 END -->                    
    </main>

    <!--<footer id="footer" class="footer login" style="padding-top:0;">-->
        <!--<div class="btn_wrap">
            <button type="button" class=" btn_md">문의하기</button>
            <button type="button" class=" btn_md">제휴안내</button>
        </div>-->
    
        <!--<div class="footer_wrap">
            <div class="footer_left">
                <img src="../img/img_logo_footer.svg" alt="두플러스">
                <p class="bold">두플러스 콘텐츠 파트너 시스템</p>
            </div>
            <div class="footer_right">
    
                <div class="flex">
                    <p>대표자 : 이형기</p>
                    <address>서울 용산구 서빙고로 65길 38</address>
                    <p class="bold">대표전화 : 02-2078-3234</p>
                </div>
                
                <div class="flex">
                    <p>사업자등록번호 : 214-82-04203 사단법인 두란노서원</p>
                    <p>디지털마케팅본부 두플러스팀</p>
                </div>
    
                <p>COPYRIGHT&copy; duplus ALL RIGHTS RESERVED</p>
            </div>
        </div>
        
    </footer>-->

    <script>
        // '번호 발송'을 클릭했을 때
        const u_id=document.getElementById("u_id");
        const u_email=document.getElementById("u_email");
        const cert_num_wrap=document.getElementById("cert_num_wrap");

        function sendNum(){
            // 아이디, 이메일이 존재할 경우
            if(u_id.value!="" && u_email.value!=""){
                alert("등록된 이메일로 인증번호를 발송했습니다.");
                cert_num_wrap.style.display="table-row";

            } else{
                alert("등록된 정보가 없습니다.")
            }
        }


        // '인증'을 클릭했을 때
        const cert_num=document.getElementById("cert_num");
        const pw_reset_wrap=document.getElementById("pw_reset_wrap");

        function cert(){
            if(cert_num.value!=""){
                alert("인증되었습니다.");
                pw_reset_wrap.style.display="block";
            } else{
                alert(" 잘못된 인증번호입니다. 다시 입력해주세요.");
                cert_num.focus();
            }
        }


        $(document).ready(function(){

        })
    </script>
</body>
</html>