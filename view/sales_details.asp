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
            <!-- ���⳻�� ���� START -->
            <h2>
                <a href="#none" title="�޴�����" class="open_gnb">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu align-self-center"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
                </a>
                <span>���⳻��</span>
            </h2>
            <!-- ���⳻�� ���� END -->

            <div class="page_wrap">
                <!-- ���� START -->
                <form action="" method="get" id="sales_form" class="form_primary">
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

                                <input type="text" name="startDate" value="">
                                ~
                                <input type="text" name="endDate" value="">
                            </p>
                            <!-- �ǸűⰣ END -->

                            <!-- ���ǻ� START -->
                            <p class="brand">
                                <span class="f_title">�귣��</span>
                                <input type="search">
                                <button type="button" class="btn_search"></button> 
                                <input type="text" class="show_name" disabled>
                            </p>
                            <!-- ���ǻ� END -->

                            <!-- ������ START -->
                            <p class="book_name last">
                                <span class="f_title">��ǰ����</span>
                                <select name="">
                                    <option value="" selected>��ǰ��</option>
                                    <option value="">���ڸ�</option>
                                </select>
                                <input type="text">
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
    
                <!-- ���⳻�� START -->
                <div class="table_cont">
                    <h3>���⳻�� ���</h3>

                    <div class="excel_down">
                        ���� �ٿ�ε�
                    </div>

                    <!-- ���� ���� ��� START -->
                    <div id="t_sales_details_wrap">
                        <table id="t_sales_details" class="display">
                            <caption>���� ����</caption>
                            <thead>
                                <th scope="col">��ǰ�ڵ�</th>
                                <th scope="col">����Ÿ��</th>
                                <th scope="col" class="txt_l">������</th>
                                <th scope="col">����</th>
                                <th scope="col">����</th>
                                <th scope="col">�ǸŰ�</th>
                                <th scope="col">�뿩��</th>
                                <th scope="col">���� �뿩</th>
                                <th scope="col">���� Copy</th>
                                <th scope="col">���� ����</th>
                                <th scope="col">����</th>
                                <th scope="col">���� ����</th>
                                <th scope="col">�뿩</th>
                                <th scope="col">�뿩 ����</th>
                                <th scope="col">�����</th>
                            </thead>
                    
                            <tbody>
                                <tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                    <td id="b_author">�� ���帮��</td>
                                    <td id="b_list_price" class="txt_r">15,000</td>
                                    <td id="b_price" class="txt_r">15,000</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rent_num" class="txt_r">35</td>
                                    <td id="b_supply_copy" class="txt_r">2</td>
                                    <td id="b_rent_sales" class="txt_r">30,000</td>
                                    <td id="b_keep_num" class="txt_r">5</td>
                                    <td id="b_keep_sakes" class="txt_r">75,000</td>
                                    <td id="b_rental_num" class="txt_r">5</td>
                                    <td id="b_rental_sales" class="txt_r">37,500</td>
                                    <td id="b_settlement" class="txt_r">29,400</td>
                                </tr>
                    
                                <tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                    <td id="b_author">�� ���帮��</td>
                                    <td id="b_list_price" class="txt_r">15,000</td>
                                    <td id="b_price" class="txt_r">15,000</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rent_num" class="txt_r">35</td>
                                    <td id="b_supply_copy" class="txt_r">2</td>
                                    <td id="b_rent_sales" class="txt_r">30,000</td>
                                    <td id="b_keep_num" class="txt_r">5</td>
                                    <td id="b_keep_sakes" class="txt_r">75,000</td>
                                    <td id="b_rental_num" class="txt_r">5</td>
                                    <td id="b_rental_sales" class="txt_r">37,500</td>
                                    <td id="b_settlement" class="txt_r">29,400</td>
                                </tr>
                                
                                <tr>
                                    <td scope="row" id="b_barcode">E230100112</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">������ ����ġ�� �͸� ���´�</td>
                                    <td id="b_author">����</td>
                                    <td id="b_list_price" class="txt_r">9,000</td>
                                    <td id="b_price" class="txt_r">4,000</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rent_num" class="txt_r">35</td>
                                    <td id="b_supply_copy" class="txt_r">2</td>
                                    <td id="b_rent_sales" class="txt_r">30,000</td>
                                    <td id="b_keep_num" class="txt_r">5</td>
                                    <td id="b_keep_sakes" class="txt_r">75,000</td>
                                    <td id="b_rental_num" class="txt_r">5</td>
                                    <td id="b_rental_sales" class="txt_r">37,500</td>
                                    <td id="b_settlement" class="txt_r">29,400</td>
                                </tr>

                                <tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                    <td id="b_author">�� ���帮��</td>
                                    <td id="b_list_price" class="txt_r">15,000</td>
                                    <td id="b_price" class="txt_r">15,000</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rent_num" class="txt_r">35</td>
                                    <td id="b_supply_copy" class="txt_r">2</td>
                                    <td id="b_rent_sales" class="txt_r">30,000</td>
                                    <td id="b_keep_num" class="txt_r">5</td>
                                    <td id="b_keep_sakes" class="txt_r">75,000</td>
                                    <td id="b_rental_num" class="txt_r">5</td>
                                    <td id="b_rental_sales" class="txt_r">37,500</td>
                                    <td id="b_settlement" class="txt_r">29,400</td>
                                </tr>
                                
                            </tbody>
                        </table>
                    </div>
                    <!-- ���� ���� ��� END -->
                </div>
                <!-- ���⳻�� END -->
            </div>
            
        </main>

        <!-- Ǫ�� & �ϴ� �� & �÷��� START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- Ǫ�� & �ϴ� �� & �÷��� END -->
    </div>
    
    

    <script>
        $(document).ready(function () {
            $('#t_sales_details').DataTable({
                "searching":false,
                
                
                // �� �ʺ� ����
                bAutoWidth:false,
                columnDefs:[
                    {width:"6%",targets:0},
                    {width:"6%",targets:1},
                    {width:"16%",targets:2},
                    {width:"5%",targets:3},
                    {width:"5%",targets:4},
                    {width:"5%",targets:5},
                    {width:"5%",targets:6},
                    {width:"5%",targets:7},
                    {width:"4%",targets:8},
                    {width:"6%",targets:9},
                    {width:"4%",targets:10},
                    {width:"6%",targets:11},
                    {width:"4%",targets:12},
                    {width:"6%",targets:13},
                    {width:"6%",targets:14},
                ]
            });


            $('input[name="startDate"]').daterangepicker(
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

            $('input[name="endDate"]').daterangepicker(
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

        // �� ȭ�鿡 20�� �׸� ���̰� ���� 230306 ����
        // 10447��, 11453��
        
        // ~���� ����� ���� 230306 ����
        // 11888��


        
    </script>
</body>

</html>
