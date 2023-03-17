<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : �α���</title>

    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">

    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>
    <script>
        // ��ȿ�� �˻�
        function form_check(){
            const u_id=document.getElementById("u_id");
            const u_pw=document.getElementById("u_pw");

            /* ���̵� �Է� ���� */
            if(u_id.value==""){
                var txt=document.getElementById("txt_err");
                txt.textContent="���̵� �Է��ϼ���.";
                u_id.focus();
                return false;
            }

            /* ��й�ȣ �Է� ���� */
            if(u_pw.value==""){
                var txt=document.getElementById("txt_err");
                txt.textContent="��й�ȣ�� �Է��ϼ���.";
                u_pw.focus();
                return false;
            } else if(u_pw.value!=u_pw.value){
                txt.textContent="��й�ȣ �����Դϴ�. �ٽ� �α������ּ���";
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
                    <p>���÷��� ������ ��Ʈ�� �ý���</p>
                </h1>
                <p>
                    <input type="text" placeholder="���̵�" id="u_id" name="u_id" autocomplete="off">
                </p>
                <p>
                    <input type="password" placeholder="��й�ȣ" id="u_pw"
                    name="u_pw" autocomplete="off">
                </p>
                <p class="flex">
                    <span>
                        <input type="checkbox" id="id_chk" name="id_chk" value="Y">
                        <label for="id_chk">
                            ���̵� ����
                        </label>
                    </span>
                    
                    <span><a href="pw_reset.asp">��й�ȣ �缳��</a></span>
                </p>
                
                <button type="submit" class="btn_login">�α���</button>

                <p id="txt_err"></p>
                <p class="bottom_txt">�α��� �� �̿� ���� ���Ǵ� duplus@duranno.com<br>�Ǵ� ���� ����ڿ��� ���� �ٶ��ϴ�.</p>
            </form>
           
        </div>

        <div class="btm_bg">
            <img src="../img/img_loginbg.svg" alt="">
        </div>
    </main>

    <footer id="footer" class="footer login">
        <!--<div class="btn_wrap">
            <button type="button" class=" btn_md">�����ϱ�</button>
            <button type="button" class=" btn_md">���޾ȳ�</button>
        </div>-->
    
        <div class="footer_wrap">
            <div class="footer_left">
                <img src="../img/img_logo_footer.svg" alt="���÷���">
                <p class="bold">���÷��� ������ ��Ʈ�� �ý���</p>
            </div>
            <div class="footer_right">
    
                <div class="flex">
                    <p>��ǥ�� : ������</p>
                    <address>���� ��걸 ������� 65�� 38</address>
                    <p class="bold">��ǥ��ȭ : 02-2078-3234</p>
                </div>
                
                <div class="flex">
                    <p>����ڵ�Ϲ�ȣ : 214-82-04203 ��ܹ��� �ζ��뼭��</p>
                    <p>�����и����ú��� ���÷�����</p>
                </div>
    
                <p>COPYRIGHT&copy; duplus ALL RIGHTS RESERVED</p>
            </div>
        </div>
        
    </footer>

    <script>
        
        
    </script>
</body>

</html>
