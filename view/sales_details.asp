<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1">

    <title>두플러스 컨텐츠 파트너 : 매출 내역</title>

    <link rel="stylesheet" href="../css/datatables.min.css">
    <link rel="stylesheet" href="../css/common.css">
    <link rel="stylesheet" href="../css/main.css">

    <script src="../js/jquery-1.11.2.min.js"></script>
    <script src="../js/datatables.js"></script>
</head>
<body>
    
    <section class="sales_details">
        
        <!-- 필터 START -->
        <form action="" method="get" id="sales_form">
            <fieldset>
                <table id="f_sales_details">
                    <caption>매출 내역 필터</caption>
                    <tbody>
                        <tr>
                            <th scope="row">판매기간</th>
                            <!--<td colspan="2">[ 시작 월 ] ~ [ 종료 월 ]</td>-->
                            <td colspan="2">
                                <span>
                                    <label for="start">[시작 월]</label><input type="month" id="start">
                                </span>
                                ~
                                <span>
                                    <label for="finish">[종료 월]</label><input type="month" id="finish">
                                </span>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row" rowspan="2">상품정보</th>
                            <td class="b_name txt_l">도서명</td>
                            <td><input type="text" id="i_bname"></td>
                        </tr>
                        <tr>
                            <td class="a_name">저자명</td>
                            <td><input type="text" id="i_aname"></td>
                        </tr>
                    </tbody>
                </table>

                <div class="btn_wrap">
                    <button type="submit">[조회]</button>
                    <button type="reset">[초기화]</button>
                </div>
            </fieldset>
        </form>
        <!-- 필터 END -->

        <!-- 매출내역 START -->
            <div id="t_sales_details_wrap">
                <table id="t_sales_details" class="display">
                    <caption>매출 내역</caption>
                    <thead>
                        <th scope="col">상품코드</th>
                        <th scope="col">파일타입</th>
                        <th scope="col" class="txt_l">도서명</th>
                        <th scope="col">저자</th>
                        <th scope="col">정가</th>
                        <th scope="col">판매가</th>
                        <th scope="col">대여가</th>
                        <th scope="col">구독 대여</th>
                        <th scope="col">공급 Copy</th>
                        <th scope="col">구독 매출</th>
                        <th scope="col">소장</th>
                        <th scope="col">소장 매출</th>
                        <th scope="col">대여</th>
                        <th scope="col">대여 매출</th>
                        <th scope="col">정산액</th>
                    </thead>
            
                    <tbody>
                        <tr>
                            <td scope="row" id="b_barcode">E230100002</td>
                            <td id="b_type">EPUB</td>
                            <td id="b_name" class="txt_l">그리스도인의 초자연적 회복력</td>
                            <td id="b_author">존 엘드리지</td>
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
                            <td id="b_name" class="txt_l">그리스도인의 초자연적 회복력</td>
                            <td id="b_author">존 엘드리지</td>
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
                            <td id="b_name" class="txt_l">그리스도인의 초자연적 회복력</td>
                            <td id="b_author">존 엘드리지</td>
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
                            <td id="b_name" class="txt_l">그리스도인의 초자연적 회복력</td>
                            <td id="b_author">존 엘드리지</td>
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
        <!-- 매출내역 END -->
    </section>
    

    <script>
        $(document).ready(function () {
            $('#t_sales_details').DataTable({
                "searching":false,
                "paging":false,

                
                // 셀 너비 고정
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

        // 한 화면에 20개 항목씩 보이게 수정 230306 혜지
        // 10447줄, 11453줄
        
        // ~개씩 보기로 수정 230306 혜지
        // 11888줄


        
    </script>
</body>

</html>
