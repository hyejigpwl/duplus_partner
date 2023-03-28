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
                                <th scope="col"></th>
                            </thead>

                            <tbody>
                                <tr>    
                                    <td scope="row">1</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�̴亯] [POD���� TIP] ���۱��� �����ǽó���? (��Ʈ, ����, �̹��� ��)</a>
                                            <!-- ���� ���� START -->
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">���� ����</th>
                                                            <td id="question_type">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="question_book">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="q_list_cont" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <!-- ���� ���� END -->

                                            <!-- [�̴亯]�϶��� ��ϵ� �亯 ���� -->
                                            <!-- ��ϵ� �亯 START -->
                                            <!--<div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="a_list_cont" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>-->
                                            <!-- ��ϵ� �亯 END -->
                                        </div>
                                    </td>
                                    <td>2023-03-09 10:01:00</td>
                                    <!-- �����ڰ� �亯 �ϱ� �� '����' ���� -->
                                    <td><a href="#none">[����]</a></td>
                                </tr>
                                

                                <tr>    
                                    <td scope="row">2</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�̴亯] [POD���� TIP] POD ��� ��, �������� ����/ǥ�� ������ �� ������ �ʿ��ϼ���?</a>
                                        
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title"> 
                                                            <th scope="row">���� ����</th>
                                                            <td id="">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                             <!-- [�̴亯]�϶��� ��ϵ� �亯 ���� -->
                                            <!-- ��ϵ� �亯 START -->
                                            <!--<div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="a_list_cont" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>-->
                                            <!-- ��ϵ� �亯 END -->
                                        </div>
                                    </td>
                                    <td>2023-03-02 10:01:00</td>
                                    <td><a href="#none">[����]</a></td>
                                </tr>

                                <tr>    
                                    <td scope="row">3</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�Ϸ�] [POD���� TIP] POD ��� ��, ���� �ݷ��Ǿ� ��Ȳ�ϼ̳���? �� ���� Ȯ�����ּ���</a>
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">���� ����</th>
                                                            <td id="">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="a_list_cont" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-02-21 10:01:00</td>
                                    <td><a href="#none"><!--[����]--></a></td>
                                </tr>

                                <tr>    
                                    <td scope="row">4</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">	[�Ϸ�] ������ �Ǹű��� ó�� �ȳ�</a>
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">���� ����</th>
                                                            <td id="">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-13 10:01:00</td>
                                    <td><a href="#none"><!--[����]--></a></td>
                                </tr>

                                <tr>    
                                    <td scope="row">5</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�Ϸ�] POD ���곻�� �Ͻ� ��ȸ �Ұ� �ȳ� (10/11~)</a>
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">���� ����</th>
                                                            <td id="">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-11 10:01:00</td>
                                    <td><a href="#none"><!--[����]--></a></td>
                                </tr>

                                <tr>    
                                    <td scope="row">6</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�Ϸ�] POD ���곻�� �Ͻ� ��ȸ �Ұ� �ȳ� (10/11~)</a>
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">���� ����</th>
                                                            <td id="">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="a_list_cont" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-11 10:01:00</td>
                                    <td><a href="#none"><!--[����]--></a></td>
                                </tr>

                                <tr>    
                                    <td scope="row">7</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�Ϸ�] POD ���곻�� �Ͻ� ��ȸ �Ұ� �ȳ� (10/11~)</a>
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">���� ����</th>
                                                            <td id="">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="a_list_cont" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-11 10:01:00</td>
                                    <td><a href="#none"><!--[����]--></a></td>
                                </tr>

                                <tr>    
                                    <td scope="row">8</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[�Ϸ�] POD ���곻�� �Ͻ� ��ȸ �Ұ� �ȳ� (10/11~)</a>
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">���� ����</th>
                                                            <td id="">��Ÿ ����</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">���� ����</th>
                                                            <td id="">()</td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row">���� ����</th>
                                                            <td id="" class="q_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">��ϵ� �亯</th>
                                                            <td><span id="answerer">������</span id="answer_time">2023-03-23 10:01:00<span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">�亯 ����</th>
                                                            <td id="a_list_cont" class="a_cont">���� ����Ʈ ���� ������ ���� �ȳ��� �ް� �ͽ��ϴ�.
                                                            �Ϻ� ���ǻ縦 ������� ���������� ��Ͻô���, �ƴϸ� ��� ���ǻ絵 ������� ������ ��� �� ���񽺿� ���� �ȳ��� �ޱ� ����ϱ���
                                                            �亯 �Ǵ� ���� ��û�帳�ϴ�.
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-11 10:01:00</td>
                                    <td><a href="#none"><!--[����]--></a></td>
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

             // �����ϱ� ǥ
             $('#t_qna').DataTable({
                "searching":false,
                pageLength:5,
                "lengthChange":false,
                info:false,
                'paging':true,
             

                // �� �ʺ� ����
                bAutoWidth:false,
                columnDefs:[
                    {width:"10%",targets:0},
                    {width:"55%",targets:1},
                    {width:"20%",targets:2},
                    {width:"5%",targets:3},
                ],

                // DataTables �ʱ�ȭ �ɼ�, ���ڵ����
                "drawCallback": function() {
                    $("#t_qna_wrapper .faq_answer").hide();
                    $("#t_qna_wrapper .faq_container a").off('click').on('click',function(){
                        $(this).parent().find('.faq_answer').slideToggle('fast');
                    });
                }
            });



        })
    </script>
    </body>
    </html>