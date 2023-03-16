<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : ���� ����</title>

    <!-- ��� START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <div class="page_right">
        <main id="content" class="content p_sales_details">
            <!-- ���� START -->
            <h2>
                <a href="#none" title="�޴�����" class="open_gnb">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu align-self-center"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
                </a>
                <span>���곻��</span>
            </h2>
            <!-- ���� END -->

            <div class="page_wrap">
                <!-- ���� START -->
                <form action="" method="get" id="settlement_form" class="form_primary">
                    <fieldset>
                        <!--<div class="filter_wrap">
                            <table id="f_sales_details">
                                <caption>���� ���� ����</caption>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="f_title">�ǸűⰣ</th>-->
                                        <!--<td colspan="2">[ ���� �� ] ~ [ ���� �� ]</td>-->
                                        <!--<td colspan="2">
                                            <span>
                                                <label for="start">[���� ��]</label><input type="month" id="start">
                                            </span>
                                            ~
                                            <span>
                                                <label for="finish">[���� ��]</label><input type="month" id="finish">
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" rowspan="2" class="f_title">��ǰ����</th>
                                        <td class="b_name txt_l">������</td>
                                        <td><input type="text" id="i_bname"></td>
                                    </tr>
                                    <tr>
                                        <td class="a_name">���ڸ�</td>
                                        <td><input type="text" id="i_aname"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>-->
                        
                        <div class="filter_wrap">
                            
                            <!-- �ǸűⰣ START -->
                            <p class="regist_date">
                                <span class="f_title">�ǸűⰣ</span>

                                <input type="text" name="startDate" value="" autocomplete="off">
                                ~
                                <input type="text" name="endDate" value="" autocomplete="off">
                            </p>
                            <!-- �ǸűⰣ END -->

                            <!-- ���ǻ� START -->
                            <p class="brand">
                                <span class="f_title">�귣��</span>
                                <input type="search" id="brand_srh" name="brand_srh">
                                <button type="button" class="btn_search"></button> 
                                <input type="text" class="show_name" name="show_name" disabled>
                            </p>
                            <!-- ���ǻ� END -->

                            <!-- ������ START -->
                            <p class="book_name last">
                                <span class="f_title">��ǰ����</span>
                                <select name="goods_info_sel">
                                    <option value="book_name" selected>������</option>
                                    <option value="author_name">���ڸ�</option>
                                </select>
                                <input type="text" name="goods_name_txt">
                            </p>
                            <!-- ������ END -->

                        </div>
        
                        <div class="btn_wrap">
                            <button type="submit" class="btn_primary btn_md">��ȸ</button>
                            <button type="reset" class="btn_primary btn_md btn_light_gray">�ʱ�ȭ</button>
                        </div>
                    </fieldset>
                </form>
                <!-- ���� END -->
    
                <!-- ���곻�� START -->
                <div class="table_cont">
                    <h3 class="sub_t">���곻�� ���</h3>

                    <div class="excel_down">
                        ���� �ٿ�ε�
                    </div>

                    <!-- ���� ���� ��� START -->
                    <div id="t_sales_details_wrap">
                        <table id="t_sales_details" class="display">
                            <caption>���� ����</caption>
                            <thead>
                                <th scope="col">����Ⱓ</th>
                                <th scope="col">���� �Ⱓ</th>
                                <th scope="col" class="">���� �뿩</th>
                                <th scope="col">���� Copy</th>
                                <th scope="col">��������</th>
                                <th scope="col">����</th>
                                <th scope="col">���� ����</th>
                                <th scope="col">�뿩</th>
                                <th scope="col">�뿩 ����</th>
                                <th scope="col">���� �ݾ�</th>
                                <th scope="col">���� �ݾ�</th>
                                <th scope="col">���� ����</th>
                                <th scope="col">������</th>
                            </thead>
                    
                            <tbody>
                                <tr>
                                    <td scope="row" id="" >2023-03</td>
                                    <td id="">2023-02</td>
                                    <td id="" class="txt_r">327</td>
                                    <td id="" class="txt_r">10</td>
                                    <td id="" class="txt_r">82,320</td>
                                    <td id="" class="txt_r">100</td>
                                    <td id="" class="txt_r">O O O</td>
                                    <td id="" class="txt_r">2</td>
                                    <td id="" class="txt_r">O O O</td>
                                    <td id="" class="txt_r">92,320</td>
                                    <td id="" class="txt_r">_</td>
                                    <td id="">�̿Ϸ�</td>
                                    <td id="" class="">_</td>
                                </tr>
                    
                         
                            </tbody>
                        </table>
                    </div>
                    <!-- ���� ���� ��� END -->
                </div>
                <!-- ���곻�� END -->
            </div>
            
        </main>

        <!-- Ǫ�� & �ϴ� �� & �÷��� START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- Ǫ�� & �ϴ� �� & �÷��� END -->
    </div>
    
    

    <script>
        // �޷� input �� ����޷� ����
        const startDate =  document.querySelector('input[name="startDate"]');
        const endDate =  document.querySelector('input[name="endDate"]');

        const year=new Date().getFullYear();
        const month=new Date().getMonth()+1;
        const now_month=`${year}-${month >= 10 ? month: '0'+ month}`

        startDate.value=now_month;
        endDate.value=now_month;

        $(document).ready(function () {
            $('#t_sales_details').DataTable({
                "searching":false,
                
                
                // �� �ʺ� ����
                bAutoWidth:false,
                columnDefs:[
                    {width:"6%",targets:0},
                    {width:"6%",targets:1},
                    {width:"5%",targets:2},
                    {width:"6%",targets:3},
                    {width:"6%",targets:4},
                    {width:"6%",targets:5},
                    {width:"6%",targets:6},
                    {width:"5%",targets:7},
                    {width:"6%",targets:8},
                    {width:"6%",targets:9},
                    {width:"6%",targets:10},
                    {width:"6%",targets:11},
                    {width:"6%",targets:12},
                ]
            });


            /*$('input[name="startDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                locale: {
                    format: "YYYY-MM",
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

            $('input[name="endDate"]').daterangepicker(
                {
                
                singleDatePicker: true,
                autoApply:true,
                locale: {
                    format: "YYYY-MM",
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
            );*/

            
            $('input[name="startDate"],input[name="endDate"]').monthpicker({
                pattern:"yy-mm",
                monthNames:['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
                monthNamesShort:['1��','2��','3��','4��','5��','6��','7��','8��','9��','10��','11��','12��'],
                dateFormat:'yy-mm',
                yearRange:'c-10:c+10',
              
            });

            var default_date = new Date(2023, 10, 1);
            $('input[name="startDate"],input[name="endDate"]').datepicker("setDate", default_date);

        });

        // �� ȭ�鿡 20�� �׸� ���̰� ���� 230306 ����
        // 10447��, 11453��
        
        // ~���� ����� ���� 230306 ����
        // 11888��


        
    </script>
</body>

</html>
