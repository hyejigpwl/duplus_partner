<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : ������ ���</title>

    <!-- ��� START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <script>
        // ��ȿ�� �˻�
        function form_check(){
            const b_name=document.getElementById("b_name");
            const sub_name=document.getElementById("sub_name");
            const brand_name=document.getElementById("brand_name");
            const author_name=document.getElementById("author_name");
            const b_list_price=document.getElementById("b_list_price");
            const eb_list_price=document.getElementById("eb_list_price");
            const isbn_num=document.getElementById("isbn_num");
            const e_isbn_num=document.getElementById("e_isbn_num");
            const page_num=document.getElementById("page_num");


            /* ������ �Է� ���� */
            if(b_name.value==""){
                alert("�������� �Է��ϼ���.");
                b_name.focus();
                return false;
            }

            /* ���� �Է� ���� */
            if(sub_name.value==""){
                alert("������ �Է��ϼ���.");
                sub_name.focus();
                return false;
            }

            /* �귣��� �Է� ���� */
            if(brand_name.value==""){
                alert("�귣����� �Է��ϼ���.");
                brand_name.focus();
                return false;
            }

            /* ���ڸ� �Է� ���� */
            if(author_name.value==""){
                alert("���ڸ��� �Է��ϼ���.");
                author_name.focus();
                return false;
            }


            const regExp = /^[0-9]*$/;

            /* ����å ���� �Է� ����, ����, 13�ڸ� */
            if(b_list_price.value==""){
                alert("����å ������ �Է��ϼ���.");
                b_list_price.focus();
                return false;
            } else if (!regExp.test(b_list_price.value)){
                alert("���ڸ� �Է� �����մϴ�. �ٽ� �Է����ּ���.");
                b_list_price.focus();
                return false;
            }
            

            /* ����å ���� �Է� ����, ���� */
            if(eb_list_price.value==""){
                alert("����å ������ �Է��ϼ���.");
                eb_list_price.focus();
                return false;
            } else if (!regExp.test(eb_list_price.value)){
                alert("���ڸ� �Է� �����մϴ�. �ٽ� �Է����ּ���.");
                eb_list_price.focus();
                return false;
            }

            const regExp2 = /^[0-9]{13,13}$/;

            /* isbn �Է� ����, ���ڸ�, 13�ڸ����� Ȯ�� */
            if(isbn_num.value==""){
                alert("ISBN�� �Է��ϼ���.");
                isbn_num.focus();
                return false;
            } else if(!regExp2.test(isbn_num.value)){
                alert("ISBN 13�ڸ� ���ڸ� �Է��ϼ���.");
                isbn_num.focus();
                return false;
            }

             /* e_isbn �Է� ����, ���ڸ�, 13�ڸ����� Ȯ�� */
             if(e_isbn_num.value==""){
                alert("E-ISBN�� �Է��ϼ���.");
                e_isbn_num.focus();
                return false;
            } else if(!regExp2.test(e_isbn_num.value)){
                alert("E-ISBN 13�ڸ� ���ڸ� �Է��ϼ���.");
                e_isbn_num.focus();
                return false;
            }

            /* ������ �� �Է� ����, ���ڸ� */
            if(page_num.value==""){
                alert("������ ���� �Է��ϼ���.");
                page_num.focus();
                return false;
            } else if (!regExp.test(page_num.value)){
                alert("���ڸ� �Է� �����մϴ�. �ٽ� �Է����ּ���.");
                page_num.focus();
                return false;
            }
        }
    </script>

    <!-- ��� START -->
    <div class="modal">
        <div class="modal_body">
            <p class="title_wrap"><span class="modal_title">�Ұ�����</span><span><img class="btn_close_popup" src="../img/btn_ly_close.png" alt="�ݱ�"></span></p>
            <table class="table_input">
                <colgroup>
                    <col class="th">
                    <col class="td">
                </colgroup>
                <tbody>
                    <th>�Ұ�����</th>
                    <td><textarea name="" id="" cols rows="5"></textarea></td>
                </tbody>
            </table>
            <div class="btn_wrap">
                <button type="submit" class="btn_primary btn_md">Ȯ��</button>
                <button type="reset" class="btn_primary btn_md btn_light_gray">�ݱ�</button>
            </div>
        </div>
    </div>
    <!-- ��� END -->

    <div class="page_right">
        <main id="content" class="content p_content_regist">
            <section class="">
                <!-- ���� START -->
                <h2>
                    <a href="#none" title="�޴�����" class="open_gnb">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu align-self-center"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
                    </a>
                    <span>������ ���</span>
                </h2>
                <!-- ���� END -->
    
                <div class="page_wrap">

                    <!-- ������ ��� START -->
                    <div class="content_regist">
                        <form action="" method="post" id="base_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">������ ���</legend>
    
                                <div class="basic_info table_wrap">
                                    <h3 class="sub_t">�⺻ ����</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">����</th>
                                                <td>
                                                    <span class="radio">
                                                        <input type="radio" name="category" id="c_normal" checked>
                                                        <label for="c_normal">�Ϲݵ���</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="c_genre" name="category" >
                                                        <label for="c_genre">�帣����</label>
                                                    </span>

                                                    <span class="radio">
                                                        <input type="radio" id="c_audio" name="category" >
                                                        <label for="c_audio">�������</label>
                                                    </span>

                                                    <span class="radio">
                                                        <input type="radio" id="c_video" name="category" >
                                                        <label for="c_video">������</label>
                                                    </span>
                                                </td>
                                                <th scope="row">��ǰ�ڵ�</th>
                                                <td>(�ڵ�����)</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���� Ÿ�� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <span class="radio">
                                                        <input type="radio" name="file_type" id="type_epub" checked>
                                                        <label for="type_epub">EPUB</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="type_pdf" name="file_type" >
                                                        <label for="type_pdf">PDF</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>�ø��� ����</th>
                                                <td colspan="3">
                                                    <span class="chk">
                                                        <input type="checkbox" id="series_chk" name="series_chk" >
                                                        <label for="series_chk">�ø��� ����</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr class="series_add_info add_info">
                                                <th>�ø����</th>
                                                <td>
                                                    <input type="text">
                                                </td>
                                                <th>�Ǽ�</th>
                                                <td>
                                                    <input type="text">
                                                    <span class="chk series_complete">
                                                        <input type="checkbox" id="complete" name="complete" >
                                                        <label for="complete">�ϰ�</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>������ <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="b_name">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>���� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="sub_name">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>������</th>
                                                <td colspan="3">
                                                    <input type="text">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>���ǻ�</th>
                                                <td>
                                                    (��Ȱ��/�귣�� �� ���� �ڵ�)
                                                </td>
                                                <th>�귣��� <span class="green">*</span></th>
                                                <td class="brand btn_add_wrap">
                                                    <input type="text" id="brand_name">
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ �߰�</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>���ڸ� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <select name="">
                                                        <option value="" selected>����</option>
                                                        <option value="">����</option>
                                                        <option value="">�׸���</option>
                                                    </select>
                                                    <input type="text" id="author_name">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>����å �Ⱓ�� <span class="green">*</span></th>
                                                <td class="regist_date">
                                                    <input type="text" name="bookDate" value="" autocomplete="off"> 
                                                </td>
                                                <th>����å �Ⱓ�� <span class="green">*</span></th>
                                                <td class="regist_date">
                                                    <input type="text" name="ebookDate" value="" autocomplete="off">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>����å ���� <span class="green">*</span></th>
                                                <td>
                                                    <input type="text" id="b_list_price">
                                                    ��
                                                </td>
                                                <th>����å ���� <span class="green">*</span></th>
                                                <td>
                                                    <input type="text" id="eb_list_price">
                                                    ��
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>ISBN 13�ڸ� <span class="green">*</span></th>
                                                <td>
                                                    <input type="text" id="isbn_num">
                                                </td>
                                                <th>E-ISBN 13�ڸ� <span class="green">*</span></th>
                                                <td>
                                                    <input type="text" id="e_isbn_num">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>������ �� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="page_num">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>���� ���� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <span class="radio">
                                                        <input type="radio" name="book_devision" id="book_domestic" checked>
                                                        <label for="book_domestic">������</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="book_translation" name="book_devision" >
                                                        <label for="book_translation">������</label>
                                                    </span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div class="sub_info table_wrap">
                                    <h3 class="sub_t">�ΰ� ����</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">å�Ұ� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���ǻ缭��</th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���� <span class="green">*</span></th>
                                                <td colspan="3" class="author btn_add_wrap">
                                                    <input type="text">

                                                    <button type="button" class="btn_line gray_btn_line btn_open_popup">�Ұ�����</button>

                                                    <button type="button" class="btn_line b_btn_line add_btn">+ �߰�</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <th>ī�װ�1 (������) <span class="green">*</span></th>
                                                <td class="cat1 btn_add_wrap">
                                                    <input type="text" id="brand_name">
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ �߰�</button>
                                                </td>
                                                <th>ī�װ�2 (���) <span class="green">*</span></th>
                                                <td class="cat2 btn_add_wrap">
                                                    <input type="text" id="brand_name">
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ �߰�</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>ī�װ�3 (��Ȳ��)</th>
                                                <td colspan="3">
                                                    (��Ȱ��/����)
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>�˻� Ű����</th>
                                                <td colspan="3" class="">
                                                    <input type="text"> 
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <th>ȫ�� ����</th>
                                                <td>
                                                    <select name="">
                                                        <option value="" selected>��Ʃ��</option>
                                                        <option value="">��޿�</option>
                                                    </select>
                                                    <input type="text" id="author_name">
                                                </td>
                                                <th>�̸����� ����</th>
                                                <td>
                                                    <select name="">
                                                        <option value="" selected>Y</option>
                                                        <option value="">N</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="resource table_wrap">
                                    <h3 class="sub_t">���ҽ�</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">���� ���� <span class="green">*</span></th>
                                                <td class="file_box">
                                                    <input type="text" class="b_file_name" readonly>
                                                    <label for="b_file">���ϼ���</label>
                                                    <input type="file" id="b_file">
                                                </td>

                                                <th>�ٿ�ε� ����</th>
                                                <td>
                                                    <select name="">
                                                        <option value="" selected>Y</option>
                                                        <option value="">N</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���ϻ�����</th>
                                                <td colspan="3">
                                                    (�ڵ����� �Ѹ�)
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">ǥ�� <span class="green">*</span></th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" class="t_file_name" readonly>
                                                    <label for="t_file">���ϼ���</label>
                                                    <input type="file" id="t_file" class="under_1mb" accept=".jpg,.png" onchange="setThumbnail(event)">
                                                    <div id="image_container" class="thumb_img"></div>
                                                    <ul class="file_txt">
                                                        <li>�������� : .jpg, .png</li>
                                                        <li>�ִ�뷮 : 1MB ����</li>
                                                        <li>��������� : ���� 700px</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">�� �̹���</th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" class="d_file_name" readonly>
                                                    <label for="d_file">���ϼ���</label>
                                                    <input type="file" id="d_file" class="under_1mb" accept=".jpg,.png" onchange="setThumbnail2(event)">
                                                    <div id="image_container2" class="thumb_img"></div>
                                                    <ul class="file_txt">
                                                        <li>�������� : .jpg, .png</li>
                                                        <li>�ִ�뷮 : 1MB ����</li>
                                                        <li>��������� : ���� 860px</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">ü���� ���</th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" class="f_file_name" readonly>
                                                    <label for="f_file">���ϼ���</label>
                                                    <input type="file" id="f_file" class="under_30mb">
                                                    <ul class="file_txt" style="margin-top:10px;">
                                                        <li>�ִ�뷮 : 30MB ����</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="sale_info table_wrap">
                                    <h3 class="sub_t">�Ǹ� ����</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">�Ǹ� ���� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <select name="">
                                                        <option value="" selected>��ü</option>
                                                        <option value="">����</option>
                                                        <option value="">�뿩</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">�ǸŰ� <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="b_list_price">
                                                    ��
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">�뿩��</th>
                                                <td>
                                                    <input type="text" id="b_list_price">
                                                    ��
                                                </td>
                                                <th scope="row">�뿩�Ⱓ</th>
                                                <td>
                                                    <input type="text" id="b_list_price">
                                                    ��
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���� ���� <span class="green">*</span></th>
                                                <td>
                                                    <span class="radio">
                                                        <input type="radio" name="service" id="c_normal" checked>
                                                        <label for="c_normal">���</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="c_genre" name="service" >
                                                        <label for="c_genre">����</label>
                                                    </span>
                                                </td>

                                                <th>���� ������</th>
                                                <td class="regist_date">
                                                    <input type="text" name="serviceDate" value="" autocomplete="off"> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="message table_wrap">
                                    <h3 class="sub_t">���޻���</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">���޻���</th>
                                                <td colspan="3">
                                                    <textarea name="" id="" cols rows="5" placeholder="�������, ������ ���� �� �����ڿ��� �˷��ֽø� �����ϰڽ��ϴ�."></textarea>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">��ȸ</button>
                                </div>

                                

                            </fieldset>
                        </form>
                    </div>
                    <!-- ������ ��� END -->                    
                </div>

            </section>
        </main>
        

        <!-- Ǫ�� & �ϴ� �� & �÷��� START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- Ǫ�� & �ϴ� �� & �÷��� END -->

    </div>
    
    
    

    <script>

        // ���� ���ε�-ǥ��
        function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }

      // ���� ���ε�-��
      function setThumbnail2(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container2").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }

        $(document).ready(function () {
            $('#t_b_list_all').DataTable({
                aaSorting : [],
                "searching":false,

                // ���� ��ũ��
                // scrollY: '489px',
                // scrollCollapse: true,

                // �� �ʺ� ����
                bAutoWidth:false,
                columnDefs:[
                    {width:"4%",targets:0},
                    {width:"6%",targets:1},
                    {width:"7%",targets:2},
                    {width:"16%",targets:3},
                    {width:"8%",targets:4},
                    {width:"5%",targets:5},
                    {width:"10%",targets:6},
                    {width:"4%",targets:7},
                    {width:"5%",targets:8},
                    {width:"5%",targets:9},
                    {width:"6%",targets:10},
                    {width:"6%",targets:11},
                    {width:"5%",targets:12},
                    {width:"10%",targets:13},
                ]
            });
            

            $('input[name="bookDate"],input[name="ebookDate"],input[name="serviceDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                
                locale: {
                    format: "YYYY-MM-DD",
                    applyLabel: "Ȯ��",
                    cancelLabel: "���",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["��", "��", "ȭ", "��", "��", "��", "��"],
                    monthNames: [
                    "1��",
                    "2��",
                    "3��",
                    "4��",
                    "5��",
                    "6��",
                    "7��",
                    "8��",
                    "9��",
                    "10��",
                    "11��",
                    "12��",
                    ],
                },
                
                },
            );
            
            // �ø��� ���� �߰�
            $(".series_add_info").hide();
            $("input:checkbox[name='series_chk']").click(function(){
                if($(this).is(":checked")){
                    $(".series_add_info").show();
                }else{
                    $(".series_add_info").hide();
                }
            });

            // �귣��� �߰�, ���� ��ư
            var fieldHtml='<div><input type="text" class="add_ipt"><button type="button" class="btn_line g_btn_line remove_btn">- ����</button></div>';

            $(".brand .add_btn").click(function(){
                $(".brand.btn_add_wrap").append(fieldHtml);
            });

            $(".brand .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".brand.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });

            // ���� �߰�, ���� ��ư
            var fieldHtml2='<div><input type="text" class="add_ipt"><button type="button" class="btn_line gray_btn_line mg btn_open_popup">�Ұ�����</button><button type="button" class="btn_line g_btn_line remove_btn">- ����</button></div>';

            $(".author .add_btn").click(function(){
                $(".author.btn_add_wrap").append(fieldHtml2);
            });

            $(".author .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".author.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });

            // ī�װ�1 �߰�, ���� ��ư
            $(".cat1 .add_btn").click(function(){
                $(".cat1.btn_add_wrap").append(fieldHtml);
            });

            $(".cat1 .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".cat1.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });

            // ī�װ�2 �߰�, ���� ��ư
            $(".cat2 .add_btn").click(function(){
                $(".cat2.btn_add_wrap").append(fieldHtml);
            });

            $(".cat2 .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".cat2.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });


            // modal ����
            $(".btn_open_popup").click(function(){
                $(".modal").css({
                    "display":"block",
                });
                $("body").css({
                    "overflow":"hidden",
                })

                $(".btn_close_popup,.modal .btn_wrap button").click(function(){
                    $(".modal").css({
                        "display":"none",
                    });
                    $("body").css({
                        "overflow":"auto",
                    });
                })
            })
        });

        // input=file ���ϸ� ����
        $("#b_file").on('change',function(){
            var fileName = $(this).val();
            $(".b_file_name").val(fileName);
        });
        
        $("#t_file").on('change',function(){
            var fileName = $(this).val();
            $(".t_file_name").val(fileName);
        });
        $("#d_file").on('change',function(){
            var fileName = $(this).val();
            $(".d_file_name").val(fileName);
        });
        $("#f_file").on('change',function(){
            var fileName = $(this).val();
            $(".f_file_name").val(fileName);
        });

        // ���� 1mb ����
        $(".under_1mb").bind( 'change', function (e)
        {
            if( !$(this).val() ) return;
             
            var f = this.files[0];
            var size = f.size || f.fileSize;
             
            var limit = 1000000;
                         
            if( size > limit )
            {
                alert( '���Ͽ뷮�� 1mb �� ������ �����ϴ�.' );
                $(this).val('');
                return;
            }
        });

        // ���� 30mb ����
        $(".under_30mb").bind( 'change', function (e)
        {
            if( !$(this).val() ) return;
             
            var f = this.files[0];
            var size = f.size || f.fileSize;
             
            var limit = 30000000;
                         
            if( size > limit )
            {
                alert( '���Ͽ뷮�� 30mb �� ������ �����ϴ�.' );
                $(this).val('');
                return;
            }
        });



        // datatables.js ����
        // �� ȭ�鿡 20�� �׸� ���̰� ���� 230306 ����
        // 10447��, 11453��
        
        // ~���� ����� ���� 230306 ����
        // 11888��

        // ���̺� �ؿ� ��ǰ �� ���� ��� 230307 ����
        // 11725��

        
    </script>
</body>

</html>
