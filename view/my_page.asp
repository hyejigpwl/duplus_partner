<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : ���ǻ� ���� ����</title>

    <!-- ��� START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <script>
        // ��ȿ�� �˻�
        function form_check(){
            const u_pw=document.getElementById("u_pw");
            const u_pw_chk=document.getElementById("u_pw_chk");

            /* ��й�ȣ ��ġ ���� */
            if(u_pw.value!==u_pw_chk.value){
                alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
                u_pw_chk.focus();
                return false;
            }
        }
    </script>


    <div class="page_right">
        <main id="content" class="content p_content_regist">
            <section class="">
                <!-- ���� START -->
                <h2>
                    <a href="#none" title="�޴�����" class="open_gnb">
                        <span>���ǻ� ���� ����</span>
                    </a>
                    
                </h2>
                <!-- ���� END -->
    
                <div class="page_wrap">

                    <!-- ���ǻ� ���� ���� START -->
                    <div class="content_regist">
                        <form action="" method="post" id="my_page_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">���ǻ� ���� ����</legend>
    
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
                                                <th scope="row">���̵�</th>
                                                <td colspan="3">
                                                    <input type="text" value="2148204203" name="u_id" disabled>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">��й�ȣ ����</th>
                                                <td>
                                                    <input type="password" name="u_pw" id="u_pw">
                                                </td>
                                                <th scope="row">��й�ȣ Ȯ��</th>
                                                <td>
                                                    <input type="password" name="u_pw_chk" id="u_pw_chk">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>���ǻ��</th>
                                                <td colspan="3">
                                                    <input type="text" value="�ζ��뼭��" name="brand_name" disabled>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <th>��ǥ�ڸ�</th>
                                                <td>
                                                    <input type="text" value="�Ͽ���" name="repre_name" disabled>
                                                </td>
                                                <th>����ڹ�ȣ</th>
                                                <td>
                                                    <input type="text" value="2148204203" name="business_num" disabled>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <th>�ּ�</th>
                                                <td colspan="3">
                                                    <p>
                                                        <input type="text" id="address" name="address">
                                                        <button type="button" class="btn_line gray_btn_line">�ּҰ˻�</button>
                                                    </p>
                                                    
                                                    <p class="middle_input last">
                                                        <input type="text" id="basic_address" name="basic_address" value="���� ��걸 �������65�� 38">
                                                        <input type="text" id="detail_address" name="detail_address" value="�ζ������ 501ȣ (��) �ζ��뼭��">
                                                    </p> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div class="content_mgr table_wrap">
                                    <h3 class="sub_t">������ �����</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">�̸�</th>
                                                <td colspan="3">
                                                    <input type="text" id="cont_m_name" name="cont_m_name" value="������">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">��ȭ��ȣ</th>
                                                <td>
                                                    <input type="text" id="cont_m_phe" name="cont_m_phe" value="000-0000-0000">
                                                    <span class="chk">
                                                        <input type="checkbox" id="cont_phone_rec" name="cont_phone_rec" value="Y">
                                                        <label for="cont_phone_rec">���� ����</label>
                                                    </span>
                                                </td>
                                                <th scope="row">�̸���</th>
                                                <td>
                                                    <input type="text" id="cont_m_eml" name="cont_m_eml" value="000-0000-0000">
                                                    <span class="chk">
                                                        <input type="checkbox" id="cont_mail_rec" name="cont_mail_rec" value="Y">
                                                        <label for="cont_mail_rec">���� ����</label>
                                                    </span>
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </div>

                                <div class="cal_mgr table_wrap">
                                    <h3 class="sub_t">���� �����</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">�̸�</th>
                                                <td colspan="3">
                                                    <input type="text" id="cal_m_name" name="cal_m_name" value="������">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">��ȭ��ȣ</th>
                                                <td>
                                                    <input type="text" id="cal_m_phe" name="cal_m_phe" value="000-0000-0000">
                                                    <span class="chk">
                                                        <input type="checkbox" id="cal_phone_rec" name="cal_phone_rec" value="Y">
                                                        <label for="cal_phone_rec">���� ����</label>
                                                    </span>
                                                </td>
                                                <th scope="row">�̸���</th>
                                                <td>
                                                    <input type="text" id="cal_m_eml" name="cal_m_eml" value="000-0000-0000">
                                                    <span class="chk">
                                                        <input type="checkbox" id="cal_mail_rec" name="cal_mail_rec" value="Y">
                                                        <label for="cal_mail_rec">���� ����</label>
                                                    </span>
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </div>

                                <div class="stmt_info table_wrap">
                                    <div class="flex" style="align-items: center;">
                                        <h3 class="sub_t">���� ����</h3>
                                        <p class="title_txt">�������� ���� ��, duplus@duranno.com �Ǵ� ���� ����ڿ��� ���� �ٶ��ϴ�. (����ڵ����, ����纻 �ʼ�)</p>
                                    </div>
                                    
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
                                                <td colspan="3">
                                                    <input type="text" id="bank" name="bank" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���¹�ȣ</th>
                                                <td colspan="3">
                                                    <input type="text" id="account_num" name="account_num" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">������</th>
                                                <td colspan="3">
                                                    <input type="text" id="account_hdr" name="account_hdr" value="">
                                                </td>
                                            </tr>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div class="contract_info table_wrap">
                                    <h3 class="sub_t">��� ����</h3>
                                    
                                    <table class="table_input">
                                        <colgroup>
                                            <col style="width:8.8%;">
                                            <col style="width:8.8%;">
                                            <col style="width:20%;">
                                            <col style="width:10%;">
                                            <col style="width:20%;">
                                            <col style="width:20%;">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">��� �����</th>
                                                <td colspan="2">
                                                    <input type="text" id="ctt_date" name="ctt_date" value="20100126">
                                                </td>
                                                <th scope="row">��� �����</th>
                                                <td colspan="2">
                                                    <input type="text" id="ctt_mgr" name="ctt_mgr" value="">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" rowspan="3">������</th>
                                                <th>����</th>
                                                <td colspan="4">
                                                    <span id="stm_sb">12ȸ ���� �� 1 Copy 80%</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>����/�뿩</th>
                                                <td colspan="4">
                                                    <span id="stm_rt">�ǸŰ� 70%</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">���� ���</th>
                                                <td colspan="4">
                                                    <span id="stm_pd">����������</span>
                                                </td>
                                            </tr>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div class="add_info table_wrap">
                                    <h3 class="sub_t">�߰� ����</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">���ǻ� �ΰ�</th>
                                                <td class="file_box">
                                                    <input type="text" id="l_file_name" name="l_file_name" readonly>
                                                    <label for="l_file">���ϼ���</label>
                                                    <input type="file" id="l_file" onchange="setThumbnail(event)">
                                                    <div id="image_container" class="thumb_img"></div>

                                                    <ul class="file_txt">
                                                        <li>�������� : .jpg, .png</li>
                                                        <li>�ִ�뷮 : 1MB ����</li>
                                                        <li>��������� : ���� 860px</li>
                                                    </ul>
                                                </td>

                                                <th scope="row">ȫ�� �̹���</th>
                                                <td class="file_box">
                                                    <input type="text" id="p_file_name" name="p_file_name" readonly>
                                                    <label for="p_file">���ϼ���</label>
                                                    <input type="file" id="p_file" onchange="setThumbnail2(event)">
                                                    <div id="image_container2" class="thumb_img"></div>

                                                    <ul class="file_txt">
                                                        <li>�������� : .jpg, .png</li>
                                                        <li>�ִ�뷮 : 1MB ����</li>
                                                        <li>��������� : ���� 860px</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        
                                        </tbody>
                                    </table>
                                </div>

                                <!-- �ϴ� ��ư START -->
                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">�����ϱ�</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray">���(�ʱ�ȭ)</button>
                                </div>
                                <!-- �ϴ� ��ư END -->

                            </fieldset>
                        </form>
                    </div>
                    <!-- ���ǻ� ���� ���� END -->                    
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
            
       
        });

        // input=file ���ϸ� ����
        $("#l_file").on('change',function(){
            var fileName = $(this).val();
            $("#l_file_name").val(fileName);
        });
        
        $("#p_file").on('change',function(){
            var fileName = $(this).val();
            $("#p_file_name").val(fileName);
        });


        
    </script>
</body>

</html>
