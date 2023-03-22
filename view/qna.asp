<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : �����ϱ�</title>

    <!-- ��� START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <script>
        // ��ȿ�� �˻�
        function form_check(){
            const qna_title=document.getElementById("qna_title");
            const qna_cont=document.getElementById("qna_cont");
         
            /* �������� �Է� ���� */
            if(qna_title.value==""){
                alert("���� ������ �Է��ϼ���.");
                qna_title.focus();
                return false;
            }

            /* ���ǳ��� �Է� ���� */
            if(qna_cont.value==""){
                alert("���� ������ �Է��ϼ���.");
                qna_cont.focus();
                return false;
            }
        };
    </script>
    

    <div class="page_right">
        <main id="content" class="content p_qna">
            <section class="">
                <!-- ���� START -->
                <h2>
                    <a href="#none" title="�޴�����" class="open_gnb">
                        <span>�����ϱ�</span>
                    </a>
                    
                </h2>
                <!-- ���� END -->
    
                <div class="page_wrap">

                    <!-- ���� ��� START -->
                    <div class="qna_wrap">
                        <form action="" method="post" id="qna_regist_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">�����ϱ� ���� ���</legend>

                                <div class="basic_info table_wrap">
                                    <h3 class="sub_t">���� ���</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">���� ����</th>
                                                <td>
                                                    <input type="text" name="qna_title" id="qna_title">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���� ����</th>
                                                <td>
                                                    <textarea name="qna_cont" id="qna_cont" cols rows="5"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���� ÷��</th>
                                                <td class="file_box">
                                                    <input type="text" id="qna_file_name" name="qna_file_name" readonly>
                                                    <label for="qna_file">���ϼ���</label>
                                                    <input type="file" id="qna_file">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
        
                                <!-- ����ϱ� ��ư START -->
                                <div class="btn_wrap" style="text-align:center; margin-top:50px;">
                                    <button type="submit" class="btn_md btn_primary" >����ϱ�</button>
                                </div>
                                <!-- ����ϱ� ��ư END -->
                        </form>
                    </div>
                    <!-- ���� ��� END -->             
                    
                    
                    <!-- ���� ��� START -->
                    <section class="qna">
                        <h3 class="sub_t">���� ���</h3>
                        <table id="t_qna" class="display t_acco">
                            <thead>
                                <th scope="col">No</th>
                                <th scope="col">����</th>
                                <th scope="col">�ۼ���</th>
                            </thead>

                            <tbody>
                                <tr>    
                                    <td scope="row">1</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�亯�Ϸ�] [POD���� TIP] ���۱��� �����ǽó���? (��Ʈ, ����, �̹��� ��)</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-03-09</td>
                                </tr>

                                <tr>    
                                    <td scope="row">2</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�亯�Ϸ�] [POD���� TIP] POD ��� ��, �������� ����/ǥ�� ������ �� ������ �ʿ��ϼ���?</a>
                                        
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-03-02</td>
                                </tr>

                                <tr>    
                                    <td scope="row">3</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">	[�亯�Ϸ�] [POD���� TIP] POD ��� ��, ���� �ݷ��Ǿ� ��Ȳ�ϼ̳���? �� ���� Ȯ�����ּ���</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-02-21</td>
                                </tr>

                                <tr>    
                                    <td scope="row">4</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">	[�̴亯] ������ �Ǹű��� ó�� �ȳ�</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-13</td>
                                </tr>

                                <tr>    
                                    <td scope="row">5</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�̴亯] POD ���곻�� �Ͻ� ��ȸ �Ұ� �ȳ� (10/11~)</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-11</td>
                                </tr>

                            </tbody>
                        </table>
                    </section>
                    <!-- ���� ��� END -->
                </div>

            </section>
        </main>
        

        <!-- Ǫ�� & �ϴ� �� & �÷��� START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- Ǫ�� & �ϴ� �� & �÷��� END -->

    </div>

    <script>
        $(document).ready(function(){
             // input=file ���ϸ� ����
            $("#qna_file").on('change',function(){
                var fileName = $(this).val();
                $("#qna_file_name").val(fileName);
            });

             // ��������, �����ϱ� ǥ
             $('#t_qna').DataTable({
                "searching":false,
                pageLength:5,
                "lengthChange":false,
                paging:false,
                info:false,

                // �� �ʺ� ����
                bAutoWidth:false,
                columnDefs:[
                    {width:"10%",targets:0},
                    {width:"75%",targets:1},
                    {width:"15%",targets:2},
                ]
            });

            // �������� �����ϱ� ���ڵ�� ��
            $(".faq_answer").hide();
            $(".faq_container a").click(function(){
                $(this).parent().find('.faq_answer').slideToggle('fast')
            });
        })
    </script>
    </body>
    </html>