<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <!--<meta name="description" content="두플러스 콘텐츠 파트너 시스템" />
    <meta name="keywords" content="두플러스, 두플, 두란노, 복음, 콘텐츠, 오리지널, 오디오북, 전자책, 강의, 구독, 큐티, 신앙, 교회, 목회" />
    <meta name="author" content="duranno" />-->
    <title>두플러스 콘텐츠 파트너 시스템</title>
    <link rel="icon" href="//www.duranno.com/duplus/img/core/favicon-16x16.png" type="/duranno/image/x-icon"> <!-- 파비콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"><!-- //구글 아이콘폰트 --> 
    <!-- sns tag -->
	<!--<meta property="og:type" content="website">
	<meta property="og:site_name" content="두플러스 콘텐츠 파트너 시스템">
	<meta property="og:title" content="두플러스 콘텐츠 파트너 시스템">
	<meta property="og:url" content="https://www.du.plus/duplus.html">
	<meta property="og:image" content="http://www.duranno.com/duplus/img/intro/thumbnail.jpg">
	<meta property="og:description" content="두플러스 콘텐츠 파트너 시스템">-->

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <div class="page_right">
        <main id="content" class="content p_sales_details">
            <!-- 제목 START -->
            <h2>
                <a href="#none" title="메뉴열기" class="open_gnb">
                    <span>정산내역</span>
                </a>
            </h2>
            <!-- 제목 END -->

            <div class="page_wrap">
                <!-- 필터 START -->
                <form action="" method="get" id="settlement_form" class="form_primary">
                    <fieldset>
                        
                        <div class="filter_wrap">
                            
                            <!-- 판매기간 START -->
                            <p class="regist_date">
                                <span class="f_title">판매기간</span>

                                <input type="text" name="startDate" value="" autocomplete="off">
                                ~
                                <input type="text" name="endDate" value="" autocomplete="off">
                            </p>
                            <!-- 판매기간 END -->

                            <!-- 도서명 START -->
                            <p class="book_name">
                                <span class="f_title">상품정보</span>
                                <select name="goods_info_sel">
                                    <option value="book_name" selected>도서명</option>
                                    <option value="author_name">저자명</option>
                                </select>
                                <input type="text" name="goods_name_txt">
                            </p>
                            <!-- 도서명 END -->

                            <!-- 출판사 START -->
                            <p class="brand last">
                                <span class="f_title">브랜드</span>
                                <select name="sel_brand" style="width:328px;"><option value="" selected>두란노</option><option value="">성서학연구소</option><option value="">두란노</option></select>
                            </p>
                            <!-- 출판사 END -->

                        </div>
        
                        <div class="btn_wrap">
                            <button type="submit" class="btn_primary btn_md">조회</button>
                            <button type="reset" class="btn_primary btn_md btn_light_gray">초기화</button>
                        </div>
                    </fieldset>
                </form>
                <!-- 필터 END -->
    
                <!-- 정산내역 START -->
                <div class="table_cont">
                    <h3 class="sub_t">정산내역 목록</h3>

                    <!-- 매출내역, 정산내역은 12개씩 리스트 -->

                    <!-- 정산 내역 목록 START -->
                    <div id="t_sales_details_wrap">
                        <table id="t_sales_details" class="display">
                            <caption>정산 내역</caption>
                            <thead>
                                <th scope="col"><!--정산기간-->발생일</th>
                                <th scope="col"><!--매출 기간-->대상기간</th>
                                <th scope="col" class=""><!--구독 대여-->구분</th>
                                <th scope="col"><!--공급 Copy-->제작</th>
                                <th scope="col">구독매출</th>
                                <!--<th scope="col">소장</th>-->
                                <th scope="col">소장 매출</th>
                                <!--<th scope="col">대여</th>-->
                                <th scope="col">대여 매출</th>
                                <!--<th scope="col">정산 금액</th>-->
                                <th scope="col">지금 금액</th>
                                <th scope="col"><!--정산 여부-->미정산잔액</th>
                                <th scope="col"><!--정산일-->비고</th>
                            </thead>
                    
                            <tbody>
                                <tr>
                                    <td scope="row" id="d_ocr" ></td>
                                    <td id="target_prd"></td>
                                    <td id="dsn" class="">이전잔액</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" >2023-03-01</td>
                                    <td id="target_prd">2023-02</td>
                                    <td id="dsn" class="">제작비</td>
                                    <td id="pdc" class="txt_r">300,000</td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">300,000</td>
                                    <td id="note" class="">전자책제작</td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" >2023-03-01</td>
                                    <td id="target_prd">2023-02</td>
                                    <td id="dsn" class="">매출</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r">120,000</td>
                                    <td id="c_sales" class="txt_r">50,000</td>
                                    <td id="r_sales" class="txt_r">30,000</td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">100,000</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" >2023-04-01</td>
                                    <td id="target_prd">2023-03</td>
                                    <td id="dsn" class="">매출</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r">150,000</td>
                                    <td id="c_sales" class="txt_r">70,000</td>
                                    <td id="r_sales" class="txt_r">30,000</td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">150,000</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" >2023-04-10</td>
                                    <td id="target_prd">2023-03</td>
                                    <td id="dsn" class="">지급</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r">150,000</td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>
                              
                                <tr>
                                    <td scope="row" id="d_ocr" >2023-05-01</td>
                                    <td id="target_prd">2023-04</td>
                                    <td id="dsn" class="">매출</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r">150,000</td>
                                    <td id="c_sales" class="txt_r">70,000</td>
                                    <td id="r_sales" class="txt_r">30,000</td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">250,000</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" >2023-05-10</td>
                                    <td id="target_prd">2023-04</td>
                                    <td id="dsn" class="">지급</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r">250,000</td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" ></td>
                                    <td id="target_prd"></td>
                                    <td id="dsn" class="">현잔액</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" >2023-04-10</td>
                                    <td id="target_prd">2023-03</td>
                                    <td id="dsn" class="">지급</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r">150,000</td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>
                              
                                <tr>
                                    <td scope="row" id="d_ocr" >2023-05-01</td>
                                    <td id="target_prd">2023-04</td>
                                    <td id="dsn" class="">매출</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r">150,000</td>
                                    <td id="c_sales" class="txt_r">70,000</td>
                                    <td id="r_sales" class="txt_r">30,000</td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">250,000</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" >2023-05-10</td>
                                    <td id="target_prd">2023-04</td>
                                    <td id="dsn" class="">지급</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r">250,000</td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" ></td>
                                    <td id="target_prd"></td>
                                    <td id="dsn" class="">현잔액</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>

                                
                                <tr>
                                    <td scope="row" id="d_ocr" >2023-05-10</td>
                                    <td id="target_prd">2023-04</td>
                                    <td id="dsn" class="">지급</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r">250,000</td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>

                                <tr>
                                    <td scope="row" id="d_ocr" ></td>
                                    <td id="target_prd"></td>
                                    <td id="dsn" class="">현잔액</td>
                                    <td id="pdc" class="txt_r"></td>
                                    <td id="s_sales" class="txt_r"></td>
                                    <td id="c_sales" class="txt_r"></td>
                                    <td id="r_sales" class="txt_r"></td>
                                    <td id="pm_at" class="txt_r"></td>
                                    <td id="unset_blc" class="txt_r">-</td>
                                    <td id="note" class=""></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- 정산 내역 목록 END -->
                </div>
                <!-- 정산내역 END -->
            </div>
            
        </main>

        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->
    </div>
    
    

    <script>
        // 달력 input 값 현재달로 설정
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
                "pageLength":12,

                dom:'Bfrtip',
                
                buttons: [
                    {
                        extend: 'excel'
                        ,text: '엑셀다운로드'
                        ,filename: '정산내역 목록'
				        ,title: '엑셀파일 안에 쓰일 제목'
                    },
                ],
                
                // 셀 너비 고정
                bAutoWidth:false,
                columnDefs:[
                    {width:"7%",targets:0},
                    {width:"9%",targets:1},
                    {width:"8%",targets:2},
                    {width:"8%",targets:3},
                    {width:"10%",targets:4},
                    {width:"10%",targets:5},
                    {width:"10%",targets:6},
                    {width:"10%",targets:7},
                    {width:"10%",targets:8},
                    {width:"10%",targets:9},
                ]
            });


            /*$('input[name="startDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                locale: {
                    format: "YYYY-MM",
                    applyLabel: "확인",
                    cancelLabel: "취소",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
                    monthNames: [
                    "1월",
                    "2월",
                    "3월",
                    "4월",
                    "5월",
                    "6월",
                    "7월",
                    "8월",
                    "9월",
                    "10월",
                    "11월",
                    "12월",
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
                    applyLabel: "확인",
                    cancelLabel: "취소",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
                    monthNames: [
                    "1월",
                    "2월",
                    "3월",
                    "4월",
                    "5월",
                    "6월",
                    "7월",
                    "8월",
                    "9월",
                    "10월",
                    "11월",
                    "12월",
                    ],
                },
                },
            );*/

            
            $('input[name="startDate"],input[name="endDate"]').monthpicker({
                pattern:"yy-mm",
                monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
                dateFormat:'yy-mm',
                yearRange:'c-10:c+10',
              
            });

            var default_date = new Date(2023, 10, 1);
            $('input[name="startDate"],input[name="endDate"]').datepicker("setDate", default_date);

        });

        // 한 화면에 20개 항목씩 보이게 수정 230306 혜지
        // 10447줄, 11453줄
        
        // ~개씩 보기로 수정 230306 혜지
        // 11888줄


        
    </script>
</body>

</html>
