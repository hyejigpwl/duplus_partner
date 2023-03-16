<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 정산 내역</title>

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <div class="page_right">
        <main id="content" class="content p_sales_details">
            <!-- 제목 START -->
            <h2>
                <a href="#none" title="메뉴열기" class="open_gnb">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu align-self-center"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
                </a>
                <span>정산내역</span>
            </h2>
            <!-- 제목 END -->

            <div class="page_wrap">
                <!-- 필터 START -->
                <form action="" method="get" id="settlement_form" class="form_primary">
                    <fieldset>
                        <!--<div class="filter_wrap">
                            <table id="f_sales_details">
                                <caption>매출 내역 필터</caption>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="f_title">판매기간</th>-->
                                        <!--<td colspan="2">[ 시작 월 ] ~ [ 종료 월 ]</td>-->
                                        <!--<td colspan="2">
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
                                        <th scope="row" rowspan="2" class="f_title">상품정보</th>
                                        <td class="b_name txt_l">도서명</td>
                                        <td><input type="text" id="i_bname"></td>
                                    </tr>
                                    <tr>
                                        <td class="a_name">저자명</td>
                                        <td><input type="text" id="i_aname"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>-->
                        
                        <div class="filter_wrap">
                            
                            <!-- 판매기간 START -->
                            <p class="regist_date">
                                <span class="f_title">판매기간</span>

                                <input type="text" name="startDate" value="" autocomplete="off">
                                ~
                                <input type="text" name="endDate" value="" autocomplete="off">
                            </p>
                            <!-- 판매기간 END -->

                            <!-- 출판사 START -->
                            <p class="brand">
                                <span class="f_title">브랜드</span>
                                <input type="search" id="brand_srh" name="brand_srh">
                                <button type="button" class="btn_search"></button> 
                                <input type="text" class="show_name" name="show_name" disabled>
                            </p>
                            <!-- 출판사 END -->

                            <!-- 도서명 START -->
                            <p class="book_name last">
                                <span class="f_title">상품정보</span>
                                <select name="goods_info_sel">
                                    <option value="book_name" selected>도서명</option>
                                    <option value="author_name">저자명</option>
                                </select>
                                <input type="text" name="goods_name_txt">
                            </p>
                            <!-- 도서명 END -->

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

                    <div class="excel_down">
                        엑셀 다운로드
                    </div>

                    <!-- 정산 내역 목록 START -->
                    <div id="t_sales_details_wrap">
                        <table id="t_sales_details" class="display">
                            <caption>정산 내역</caption>
                            <thead>
                                <th scope="col">정산기간</th>
                                <th scope="col">매출 기간</th>
                                <th scope="col" class="">구독 대여</th>
                                <th scope="col">공급 Copy</th>
                                <th scope="col">구독매출</th>
                                <th scope="col">소장</th>
                                <th scope="col">소장 매출</th>
                                <th scope="col">대여</th>
                                <th scope="col">대여 매출</th>
                                <th scope="col">정산 금액</th>
                                <th scope="col">지금 금액</th>
                                <th scope="col">정산 여부</th>
                                <th scope="col">정산일</th>
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
                                    <td id="">미완료</td>
                                    <td id="" class="">_</td>
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
                
                
                // 셀 너비 고정
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
