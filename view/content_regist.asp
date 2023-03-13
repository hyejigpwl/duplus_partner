<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : ������ ���</title>

    <!-- ��� START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <script>
        function form_check(){
            var b_name=document.getElementById("b_name");
            var b_isbn=document.getElementById("b_isbn");
            var b_e_isbn=document.getElementById("b_e_isbn");


            /* ������ �Է� ���� */
            if(b_name.value==""){
                alert("�������� �Է��ϼ���.");
                b_name.focus();
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
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu align-self-center"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
                    </a>
                    <span>������ ���</span>
                </h2>
                <!-- ���� END -->
    
                <div class="page_wrap">

                    <!-- �⺻���� START -->
                    <div class="base_tab">
                        <form action="" method="post" id="base_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">������ ���</legend>
    
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
                                                    <input type="checkbox" id="series_chk" name="series_chk" checked>
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
                                                <input type="text">
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
                                                <input type="text">
                                    
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
                                                <input type="text">
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
                                                <input type="text">
                                                ��
                                            </td>
                                            <th>����å ���� <span class="green">*</span></th>
                                            <td>
                                                <input type="text">
                                                ��
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>ISBN 13�ڸ� <span class="green">*</span></th>
                                            <td>
                                                <input type="text" id="b_isbn">
                                            </td>
                                            <th>E-ISBN 13�ڸ� <span class="green">*</span></th>
                                            <td>
                                                <input type="text" id="b_e_isbn">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>������ �� <span class="green">*</span></th>
                                            <td colspan="3">
                                                <input type="text">
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


                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">��ȸ</button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <!-- �⺻���� END -->
                            






                   
                            
                   
    
                    
                </div>
                
            </section>
        </main>
        
        <!-- Ǫ�� & �ϴ� �� & �÷��� START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- Ǫ�� & �ϴ� �� & �÷��� END -->
    </div>
    

    

    <script>
        // üũ�ڽ� ��ü Ŭ����
        function selectAll(selectAll)  {
        const checkboxes 
            = document.getElementsByName('goods');
        
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked;
        })
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
            

            $('input[name="startDate"],input[name="endDate"]').daterangepicker(
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

            $('input[name="bookDate"],input[name="ebookDate"]').daterangepicker(
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
            //$(".series_add_info").hide();
            $("input:checkbox[name='series_chk']").click(function(){
                if($(this).is(":checked")){
                    $(".series_add_info").show();
                }else{
                    $(".series_add_info").hide();
                }
            });

            // �߰�, ���� ��ư
            var fieldHtml='<div><input type="text" class="add_ipt"><button type="button" class="btn_line g_btn_line remove_btn">- ����</button></div>';

            $(".add_btn").click(function(){
                $(".btn_add_wrap").append(fieldHtml);
            });

            $(".remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });
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
