<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <title>���÷��� ������ ��Ʈ�� : ���� ����</title>

    <link rel="stylesheet" href="../css/common.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="../css/datatables.min.css">

    <link rel="stylesheet" href="../css/header.css">
    <link rel="stylesheet" href="../css/footer.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>
    <script src="../js/datatables.js"></script>
</head>
<body>
    <header id="header" class="header">
        <div class="header_top">
            <h1><a href="index.asp">DUPLUS <span>PARTNER</span></a></h1>

            <div class="header_info">
                <span><a href="#none" id="u_id"><img src="../img/profile-circle.png" alt="">�ζ��뼭�� (2148204203)��</a></span>
                <span><a href="#none" id="logout">�α׾ƿ�</a></span>
            </div>
        </div>

        <!-- ��� (����) START -->
        <nav class="gnb">
            <h2 class="blind">���θ޴�</h2>
            <ul>
                <li><a href="#none">Ȩȭ��</a>
                    <ul>
                        <li><a href="index.asp">��ú���</a></li>
                        <li><a href="notice.asp">��������</a></li>
                    </ul>
                </li>
                <li><a href="#none">������</a>
                    <ul>
                        <li><a href="content_lookup.asp">������ ��ȸ</a></li>
                        <li><a href="content_regist.asp">������ ���</a></li>
                    </ul>
                </li>
                <li><a href="#none">���</a>
                    <ul>
                        <li><a href="sales_details.asp">���⳻��</a></li>
                        <li><a href="settlement_details.asp">���곻��</a></li>
                    </ul>
                </li>
                <li><a href="#none">����������</a>
                    <ul>
                        <li><a href="my_page.asp">���ǻ� ���� ����</a></li>
                        <li><a href="qna.asp">�����ϱ�</a></li>
                    </ul>
                </li>
            </ul>
        </nav>
        <!-- ��� (����) END -->
    </header>

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
                <!-- ���� START -->
                <form action="" method="get" id="sales_form">
                    <fieldset>
                        <table id="f_sales_details">
                            <caption>���� ���� ����</caption>
                            <tbody>
                                <tr>
                                    <th scope="row">�ǸűⰣ</th>
                                    <!--<td colspan="2">[ ���� �� ] ~ [ ���� �� ]</td>-->
                                    <td colspan="2">
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
                                    <th scope="row" rowspan="2">��ǰ����</th>
                                    <td class="b_name txt_l">������</td>
                                    <td><input type="text" id="i_bname"></td>
                                </tr>
                                <tr>
                                    <td class="a_name">���ڸ�</td>
                                    <td><input type="text" id="i_aname"></td>
                                </tr>
                            </tbody>
                        </table>
        
                        <div class="btn_wrap">
                            <button type="submit">[��ȸ]</button>
                            <button type="reset">[�ʱ�ȭ]</button>
                        </div>
                    </fieldset>
                </form>
                <!-- ���� END -->
        
                <!-- ���⳻�� START -->
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
                                    <td id="b_list_price">15,000</td>
                                    <td id="b_price">15,000</td>
                                    <td id="b_rental_price">7,500</td>
                                    <td id="b_rent_num">35</td>
                                    <td id="b_supply_copy">2</td>
                                    <td id="b_rent_sales">30,000</td>
                                    <td id="b_keep_num">5</td>
                                    <td id="b_keep_sakes">75,000</td>
                                    <td id="b_rental_num">5</td>
                                    <td id="b_rental_sales">37,500</td>
                                    <td id="b_settlement">29,400</td>
                                </tr>
                    
                                <tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                    <td id="b_author">�� ���帮��</td>
                                    <td id="b_list_price">15,000</td>
                                    <td id="b_price">15,000</td>
                                    <td id="b_rental_price">7,500</td>
                                    <td id="b_rent_num">35</td>
                                    <td id="b_supply_copy">2</td>
                                    <td id="b_rent_sales">30,000</td>
                                    <td id="b_keep_num">5</td>
                                    <td id="b_keep_sakes">75,000</td>
                                    <td id="b_rental_num">5</td>
                                    <td id="b_rental_sales">37,500</td>
                                    <td id="b_settlement">29,400</td>
                                </tr>
                              
                                <tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                    <td id="b_author">�� ���帮��</td>
                                    <td id="b_list_price">15,000</td>
                                    <td id="b_price">15,000</td>
                                    <td id="b_rental_price">7,500</td>
                                    <td id="b_rent_num">35</td>
                                    <td id="b_supply_copy">2</td>
                                    <td id="b_rent_sales">30,000</td>
                                    <td id="b_keep_num">5</td>
                                    <td id="b_keep_sakes">75,000</td>
                                    <td id="b_rental_num">5</td>
                                    <td id="b_rental_sales">37,500</td>
                                    <td id="b_settlement">29,400</td>
                                </tr>
        
                                <tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                    <td id="b_author">�� ���帮��</td>
                                    <td id="b_list_price">15,000</td>
                                    <td id="b_price">15,000</td>
                                    <td id="b_rental_price">7,500</td>
                                    <td id="b_rent_num">35</td>
                                    <td id="b_supply_copy">2</td>
                                    <td id="b_rent_sales">30,000</td>
                                    <td id="b_keep_num">5</td>
                                    <td id="b_keep_sakes">75,000</td>
                                    <td id="b_rental_num">5</td>
                                    <td id="b_rental_sales">37,500</td>
                                    <td id="b_settlement">29,400</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                <!-- ���⳻�� END -->
        </main>
    </div>
    
    

    <script>
        $(document).ready(function () {
            $('#t_sales_details').DataTable({
                "searching":false,
                "paging":false,

                
                // �� �ʺ� ����
                bAutoWidth:false,
                columnDefs:[
                    {width:"7%",targets:0},
                    {width:"7%",targets:1},
                    {width:"20%",targets:2},
                    {width:"7%",targets:3},
                    {width:"5%",targets:4},
                    {width:"5%",targets:5},
                    {width:"5%",targets:6},
                    {width:"5%",targets:7},
                    {width:"5%",targets:8},
                    {width:"4%",targets:9},
                    {width:"4%",targets:10},
                    {width:"5%",targets:11},
                    {width:"4%",targets:12},
                    {width:"5%",targets:13},
                    {width:"5%",targets:14},
                ]
            });
        });

        // �� ȭ�鿡 20�� �׸� ���̰� ���� 230306 ����
        // 10447��, 11453��
        
        // ~���� ����� ���� 230306 ����
        // 11888��


        
    </script>
</body>

</html>
