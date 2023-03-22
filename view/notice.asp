<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 공지사항</title>

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <div class="page_right">
        <main id="content" class="content p_book_list">
            <section class="book_list_wrap">
                <!-- 제목 START -->
                <h2>
                    <a href="#none" title="메뉴열기" class="open_gnb">
                        <span>공지사항</span> 
                    </a>
                </h2>
                <!-- 제목 END -->
    
                <div class="page_wrap">
                    <!-- 공지사항 필터 START -->
                    <form action="" method="post" id="notice_form" class="form_primary">
                        <fieldset>
                            <legend class="blind">공지사항 조회 필터</legend>
    
                            <div class="filter_wrap">
                                <!-- 기간 START -->
                                <p class="regist_date">
                                    <span class="f_title">기간</span>
    
                                    <input type="text" name="txtDate" value="" autocomplete="off" id="txtDate">
    
                                </p>
                                <!-- 기간 END -->
    
                                <div class="form_c_wrap last">
                                    <!-- 구분 START -->
                                    <p class="brand">
                                        <span class="f_title">구분</span>
                                        <select name="notice_cate_sel" id="notice_cate_sel">
                                            <option value="all" selected>전체</option>
                                            <option value="guide">안내</option>
                                            <option value="alarm">알림</option>
                                            <option value="notice">공지</option>
                                        </select>
                                    </p>
                                    <!-- 구분 END -->
    
                                    <!-- 제목 START -->
                                    <p class="name_wrap">
                                        <span class="f_title">제목</span>
                                        <input type="text" name="notice_name">
                                    </p>
                                    <!-- 제목 END -->
                                </div>
                            </div>
                            
                            <div class="btn_wrap">
                                <button type="submit" class="btn_md btn_primary">조회</button>
                            </div>
                            
                        </fieldset>
                    </form>
                    <!-- 공지사항 필터 END -->
    
                    <div class="table_cont">
                        <h3 class="sub_t">공지사항</h3>

                        <div class="tab_bwrap">
                            
                            <!-- 공지사항 목록 START -->
                            <div id="t_b_list_all_wrap">
                                <table id="t_b_list_all" class="display">
                                    <caption>도서 목록</caption>
                                    <thead>
                                        <th scope="col">No.</th>
                                        <th scope="col">공지구분</th>
                                        <th scope="col">제목</th>
                                        <th scope="col">등록일자</th>
                                        <th scope="col">조회수</th>
                                    </thead>
                            
                                    <tbody>
                                        <tr>
                                            <td scope="row" id="num">1</td>
                                            <td id="b_barcode">안내</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD관리 TIP] 저작권이 걱정되시나요? (폰트, 내용, 이미지 등)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>
                            
                                        <tr>
                                            <td scope="row" id="num">2</td>
                                            <td id="b_barcode">안내</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD관리 TIP] 저작권이 걱정되시나요? (폰트, 내용, 이미지 등)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>

                                        <tr>
                                            <td scope="row" id="num">3</td>
                                            <td id="b_barcode">공지</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD관리 TIP] 저작권이 걱정되시나요? (폰트, 내용, 이미지 등)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>

                                        <tr>
                                            <td scope="row" id="num">4</td>
                                            <td id="b_barcode">공지</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD관리 TIP] 저작권이 걱정되시나요? (폰트, 내용, 이미지 등)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>

                                        <tr>
                                            <td scope="row" id="num">5</td>
                                            <td id="b_barcode">알림</td>
                                            <td id="b_type" class="txt_l"><a href="notice_detail.asp">[POD관리 TIP] 저작권이 걱정되시나요? (폰트, 내용, 이미지 등)</a></td>
                                            <td id="b_name">2023-03-09</td>
                                            <td id="b_author">158</td>
                                          
                                        </tr>
                                        
                                    </tbody>
                                </table>
                            </div>
                            <!-- 공지사항 목록 END -->
    
                        </div>
                    </div>
                    
                </div>
                
            </section>
        </main>
        
        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->
    </div>
    

    

    <script>
     

        $(document).ready(function () {
            $('#t_b_list_all').DataTable({
                aaSorting : [],
                "searching":false,
                "pageLength":10,
                "lengthMenu":[10,20,50,100],

                // 세로 스크롤
                // scrollY: '489px',
                // scrollCollapse: true,

                // 셀 너비 고정
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
                    applyLabel: "확인",
                    cancelLabel: "취소",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    startDate:'2020-02',
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
            
            // 시작 날짜 고정
            $('input[name="txtDate"]').data('daterangepicker').setStartDate('2020-01');
            
        });

        
    
        // datatables.js 수정
        // 한 화면에 20개 항목씩 보이게 수정 230306 혜지
        // 10447줄, 11453줄
        
        // ~개씩 보기로 수정 230306 혜지
        // 11888줄

        // 테이블 밑에 상품 총 개수 명시 230307 혜지
        // 11725줄

        
    </script>
</body>

</html>
