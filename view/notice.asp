<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : ��������</title>

    <!-- ��� START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <div class="page_right">
        <main id="content" class="content p_book_list">
            <section class="book_list_wrap">
                <!-- ���� START -->
                <h2>
                    <a href="#none" title="�޴�����" class="open_gnb">
                        <span>��������</span> 
                    </a>
                </h2>
                <!-- ���� END -->
    
                <div class="page_wrap">
                    <!-- �������� ���� START -->
                    <form action="" method="post" id="notice_form" class="form_primary">
                        <fieldset>
                            <legend class="blind">�������� ��ȸ ����</legend>
    
                            <div class="filter_wrap">
                                <!-- �Ⱓ START -->
                                <p class="regist_date">
                                    <span class="f_title">�Ⱓ</span>
    
                                    <input type="text" name="txtDate" value="" autocomplete="off" id="txtDate">
    
                                </p>
                                <!-- �Ⱓ END -->
    
                                <div class="form_c_wrap last">
                                    <!-- ���� START -->
                                    <p class="brand">
                                        <span class="f_title">����</span>
                                        <select name="notice_cate_sel" id="notice_cate_sel">
                                            <option value="all" selected>��ü</option>
                                            <option value="guide">�ȳ�</option>
                                            <option value="alarm">�˸�</option>
                                            <option value="notice">����</option>
                                        </select>
                                    </p>
                                    <!-- ���� END -->
    
                                    <!-- ���� START -->
                                    <p class="name_wrap">
                                        <span class="f_title">����</span>
                                        <input type="text" name="notice_name">
                                    </p>
                                    <!-- ���� END -->
                                </div>
                            </div>
                            
                            <div class="btn_wrap">
                                <button type="submit" class="btn_md btn_primary">��ȸ</button>
                            </div>
                            
                        </fieldset>
                    </form>
                    <!-- �������� ���� END -->
    
                    <div class="table_cont">
                        <h3 class="sub_t">��������</h3>

                        <div class="tab_bwrap">
                            
                            <!-- �������� ��� START -->
                            <div id="t_b_list_all_wrap">
                                <table id="t_b_list_all" class="display">
                                    <caption>���� ���</caption>
                                    <thead>
                                        <th scope="col">No.</th>
                                        <th scope="col">��������</th>
                                        <th scope="col">����</th>
                                        <th scope="col">�������</th>
                                        <th scope="col">��ȸ��</th>
                                    </thead>
                            
                                    <tbody>
                                        <tr>
                                            <td scope="row" id="num">1</td>
                                            <td id="b_barcode">�ȳ�</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD���� TIP] ���۱��� �����ǽó���? (��Ʈ, ����, �̹��� ��)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>
                            
                                        <tr>
                                            <td scope="row" id="num">2</td>
                                            <td id="b_barcode">�ȳ�</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD���� TIP] ���۱��� �����ǽó���? (��Ʈ, ����, �̹��� ��)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>

                                        <tr>
                                            <td scope="row" id="num">3</td>
                                            <td id="b_barcode">����</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD���� TIP] ���۱��� �����ǽó���? (��Ʈ, ����, �̹��� ��)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>

                                        <tr>
                                            <td scope="row" id="num">4</td>
                                            <td id="b_barcode">����</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD���� TIP] ���۱��� �����ǽó���? (��Ʈ, ����, �̹��� ��)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>

                                        <tr>
                                            <td scope="row" id="num">5</td>
                                            <td id="b_barcode">�˸�</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD���� TIP] ���۱��� �����ǽó���? (��Ʈ, ����, �̹��� ��)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <!-- �������� ��� END -->
    
                        </div>
                    </div>
                    
                </div>
                
            </section>
        </main>
        
        <!-- Ǫ�� & �ϴ� �� & �÷��� START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- Ǫ�� & �ϴ� �� & �÷��� END -->
    </div>
    

    

    <script>
     

        $(document).ready(function () {
            $('#t_b_list_all').DataTable({
                aaSorting : [],
                "searching":false,
                "pageLength":10,
                "lengthMenu":[10,20,50,100],

                // ���� ��ũ��
                // scrollY: '489px',
                // scrollCollapse: true,

                // �� �ʺ� ����
                bAutoWidth:false,
                columnDefs:[
                    {width:"5%",targets:0},
                    {width:"10%",targets:1},
                    {width:"40%",targets:2},
                    {width:"10%",targets:3},
                    {width:"10%",targets:4},
                ]
            });
            

            $('input[name="txtDate"]').daterangepicker(
                {
                autoApply:true,
                
                locale: {
                    "separator": " ~ ",
                    format: "YYYY-MM",
                    applyLabel: "Ȯ��",
                    cancelLabel: "���",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    startDate:'2020-02',
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
            
            // ���� ��¥ ����
            $('input[name="txtDate"]').data('daterangepicker').setStartDate('2020-01');
            
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
