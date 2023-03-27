<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : ��й�ȣ �缳��</title>

    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap">

    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>

    <script>
        // ��ȿ�� �˻�
        function form_check(){
            const u_pw=document.getElementById("u_pw");
            const u_pw_chk=document.getElementById("u_pw_chk");
            const cert_num=document.getElementById("cert_num");

            /* ��й�ȣ �Է� ���� */
            if (u_pw.value == ""){
                var txt=document.getElementById("err_pwd");
                txt.textContent="��й�ȣ�� �Է����ּ���.";
                u_pw.focus();
                return false;
            }

             /*��й�ȣ Ȯ��*/
             if (u_pw.value!=u_pw_chk.value){
                var txt=document.getElementById("err_repwd");
                txt.textContent="��й�ȣ�� ��ġ���� �ʽ��ϴ�.";
                u_pw_chk.focus();
                return false;
            };

            /* �������� �Է� ���� */
            if (cert_num.value == ""){
                var txt=document.getElementById("err_cert");
                txt.textContent="������ȣ�� �Է����ּ���.";
                cert_num.focus();
                return false;
            }
        }
    </script>
</head>
<body>
    <header id="header" class="header">
        <div class="header_top" style="margin:0 auto; max-width:768px;">
            <h1><a href="#none"><img src="../img/logo.svg" alt="���÷��� �ΰ�">Contents Partner System</a></h1>

            <!--<div class="header_info">
                <span><a href="my_page.asp" id="u_id"><img src="../img/img_profile.svg" alt="">�ζ��뼭�� (2148204203)��</a></span>
                <span id="logout"><a href="login.asp">�α׾ƿ�</a></span>
            </div>-->
        </div>
    </header>

    <main id="content" class="content p_pw_reset">
        <!-- ���ǻ� ���� ���� START -->
        <div class="content_regist">
            <form action="pw_fin.asp" method="post" id="my_page_form" class="form_primary" onsubmit="return form_check()">
                <fieldset>
                    <legend class="blind">��й�ȣ �缳��</legend>

                    <div class="basic_info table_wrap">
                        <h3 class="sub_t">��й�ȣ �缳��</h3>
                        <table class="table_input">
                            <colgroup>
                                <col class="th">
                                <col class="td">
                                <col class="th">
                                <col class="td">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">��й�ȣ</th>
                                    <td colspan="3">
                                        <input type="password" name="u_pw" id="u_pw" placeholder="������ ��й�ȣ">
                                        <p class="info_txt">* ��й�ȣ�� ���� �빮�� �� �ҹ���, ����, Ư������ �� 2������ �����ϴ� ��� 10�ڸ�, 3������ �����ϴ� ��� 8�ڸ� �̻����� �����Ǿ�� �մϴ�.</p>
                                        <p id="err_pwd" class="info_txt err_txt"></p>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">��й�ȣ ����</th>
                                    <td colspan="3">
                                        <input type="password" name="u_pw_chk" id="u_pw_chk" placeholder="������ ��й�ȣ ���Է�">
                                        <p id="err_repwd" class="info_txt err_txt"></p>
                                    </td>
                                 
                                </tr>
                              
                            </tbody>
                        </table>
                    </div>
                    
                    <div class="email_wrap table_wrap">
                        <h3 class="sub_t">�̸��� ����</h3>
                        <table class="table_input">
                            <colgroup>
                                <col class="th">
                                <col class="td">
                                <col class="th">
                                <col class="td">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th scope="row">�̸���</th>
                                    <td colspan="3">
                                        <input type="text" id="u_email" name="u_email" value="" placeholder="��ϵ� �̸���">

                                        <button type="button" class="btn_line gray_btn_line">��ȣ �߼�</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">������ȣ</th>
                                    <td colspan="3">
                                        <input type="text" id="cert_num" name="cert_num" value="" placeholder="������ȣ">

                                        <button type="button" class="btn_line gray_btn_line">����</button>

                                        <p id="err_cert" class="info_txt err_txt"></p>

                                        <!-- �̸��� ���� ���� �� ��ư START -->
                                        <!--<button type="button" class="btn_line gray_btn_line">������</button>-->
                                         <!-- �̸��� ���� ���� �� ��ư END -->
                                    </td>
                                   
                                </tr>
                               
                            </tbody>
                        </table>
                    </div>


                    <!-- �ϴ� ��ư START -->
                    <div class="btn_wrap">
                        <button type="submit" class="btn_md btn_primary btn_open_popup">�����ϱ�</button>
                        <button type="reset" class="btn_md btn_primary btn_light_gray" onclick="location.href='login.asp'">�α��� ��������</button>
                    </div>
                    <!-- �ϴ� ��ư END -->


                </fieldset>
            </form>
        </div>
        <!-- ���ǻ� ���� ���� END -->                    
    </main>

    <footer id="footer" class="footer login" style="padding-top:0;">
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