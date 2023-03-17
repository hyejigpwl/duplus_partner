<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 로그인</title>

    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">

    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>
    <script>
        // 유효성 검사
        function form_check(){
            const u_id=document.getElementById("u_id");
            const u_pw=document.getElementById("u_pw");

            /* 아이디 입력 여부 */
            if(u_id.value==""){
                var txt=document.getElementById("txt_err");
                txt.textContent="아이디를 입력하세요.";
                u_id.focus();
                return false;
            }

            /* 비밀번호 입력 여부 */
            if(u_pw.value==""){
                var txt=document.getElementById("txt_err");
                txt.textContent="비밀번호를 입력하세요.";
                u_pw.focus();
                return false;
            } else if(u_pw.value!=u_pw.value){
                txt.textContent="비밀번호 오류입니다. 다시 로그인해주세요";
                u_pw.focus();
                return false;
            }
        }
    </script>
</head>

<body style="overflow-y:hidden;">
    <main id="content" class="content p_login">
        <div class="login_wrap">
            <form id="login_form" action="" method="post" onsubmit="return form_check()">
                <h1>
                    <p><img src="../img/du_logo.svg" alt=""></p>
                    <p>두플러스 콘텐츠 파트너 시스템</p>
                </h1>
                <p>
                    <input type="text" placeholder="아이디" id="u_id" name="u_id" autocomplete="off">
                </p>
                <p>
                    <input type="password" placeholder="비밀번호" id="u_pw"
                    name="u_pw" autocomplete="off">
                </p>
                <p class="flex">
                    <span>
                        <input type="checkbox" id="id_chk" name="id_chk" value="Y">
                        <label for="id_chk">
                            아이디 저장
                        </label>
                    </span>
                    
                    <span><a href="pw_reset.asp">비밀번호 재설정</a></span>
                </p>
                
                <button type="submit" class="btn_login">로그인</button>

                <p id="txt_err"></p>
                <p class="bottom_txt">로그인 및 이용 관련 문의는 duplus@duranno.com<br>또는 제휴 담당자에게 연락 바랍니다.</p>
            </form>
           
        </div>

        <div class="btm_bg">
            <img src="../img/img_loginbg.svg" alt="">
        </div>
    </main>

    <footer id="footer" class="footer login">
        <!--<div class="btn_wrap">
            <button type="button" class=" btn_md">문의하기</button>
            <button type="button" class=" btn_md">제휴안내</button>
        </div>-->
    
        <div class="footer_wrap">
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
        
    </footer>

    <script>
        
        
    </script>
</body>

</html>
