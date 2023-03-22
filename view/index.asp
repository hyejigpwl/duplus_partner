<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 대시보드</title>

    
    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <div class="page_right">
        <main id="content" class="content p_dash_board">
            <!-- 제목 START -->
            <h2>
                <a href="#none" title="메뉴열기" class="open_gnb">
                    <span>대시보드</span>
                </a>
            </h2>
            <!-- 제목 END -->

            <div class="page_wrap">
                <!-- 디지털 콘텐츠 현황 START -->
                <section class="cont_current">
                    <h3 class="blind">디지털 콘텐츠 현황</h3>
                    <ul>
                        <li><a href="content_lookup.asp"><span>임시저장</span><span id="save_num">1</span></a></li>
                        <li><a href="content_lookup.asp"><span>승인대기</span><span id="stand_num">16</span></a></li>
                        <li><a href="content_lookup.asp"><span>보류</span><span id="hold_num">1</span></a></li>
                        <li><a href="content_lookup.asp"><span>판매중지</span><span id="stop_num">1</span></a></li>
                        <li><a href="content_lookup.asp"><span>등록완료</span><span id="complete_num">856</span></a></li>
                    </ul>
                </section>
                <!-- 디지털 콘텐츠 현황 END -->


                <div class="flex graph_wrap">
                    <!-- 디지털 콘텐츠 매출 현황 START -->
                    <section class="sales_current">
                        <h3 class="sub_t">디지털콘텐츠 매출 현황</h3>
                        <p style="font-size:10px;">(단위:천원)</p>
                        <canvas id="myChart_1" style="width:100%;"></canvas>   
                    </section>
                    <!-- 디지털 콘텐츠 매출 현황 END -->

                    <!-- 디지털콘텐츠 판매 수익 START -->
                    <section class="sales_revenue">
                        <h3 class="sub_t">디지털콘텐츠 판매 수익</h3>
                        <p style="font-size:10px;">(단위:천원)</p>
                        <canvas id="myChart_2" style="width:100%;"></canvas>  
                    </section>
                    <!-- 디지털콘텐츠 판매 수익 END -->
                </div>


                <div class="flex notice_wrap">
                    <!-- 공지사항 START -->
                    <section class="notice">
                        <h3 class="sub_t">공지사항<a href="notice.asp" class="more">더보기</a></h3>
                        <table id="t_notice" class="display t_acco">
                            <thead>
                                <th scope="col">No</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성일</th>
                            </thead>

                            <tbody>
                                <tr>    
                                    <td scope="row">1</td>
                                    <td class="txt_l ">
                                        <div class="faq_container">
                                            <a href="#none">[안내] [POD관리 TIP] 저작권이 걱정되시나요? (폰트, 내용, 이미지 등)</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-03-09</td>
                                </tr>


                                <tr>    
                                    <td scope="row">2</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[알림] [POD관리 TIP] POD 등록 전, 전문적인 원고/표지 디자인 및 편집이 필요하세요?</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-03-02</td>
                                </tr>

                                <tr>    
                                    <td scope="row">3</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[공지] [POD관리 TIP] POD 등록 후, 승인 반려되어 당황하셨나요? 이 글을 확인해주세요</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-02-21</td>
                                </tr>

                                <tr>    
                                    <td scope="row">4</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[공지] 콘텐츠 판매금지 처리 안내</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-13</td>
                                </tr>

                                <tr>    
                                    <td scope="row">5</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[안내] POD 정산내역 일시 조회 불가 안내 (10/11~)</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-11</td>
                                </tr>

                            </tbody>
                        </table>
                    </section>
                    <!-- 공지사항 END -->

                    <!-- 문의하기 START -->
                    <section class="qna">
                        <h3 class="sub_t">문의하기<a href="notice.asp" class="more">더보기</a></h3>
                        <table id="t_qna" class="display t_acco">
                            <thead>
                                <th scope="col">No</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성일</th>
                            </thead>

                            <tbody>
                                <tr>    
                                    <td scope="row">1</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[답변완료] [POD관리 TIP] 저작권이 걱정되시나요? (폰트, 내용, 이미지 등)</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-03-09</td>
                                </tr>

                                <tr>    
                                    <td scope="row">2</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[답변완료] [POD관리 TIP] POD 등록 전, 전문적인 원고/표지 디자인 및 편집이 필요하세요?</a>
                                        
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-03-02</td>
                                </tr>

                                <tr>    
                                    <td scope="row">3</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">	[답변완료] [POD관리 TIP] POD 등록 후, 승인 반려되어 당황하셨나요? 이 글을 확인해주세요</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2023-02-21</td>
                                </tr>

                                <tr>    
                                    <td scope="row">4</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">	[미답변] 콘텐츠 판매금지 처리 안내</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-13</td>
                                </tr>

                                <tr>    
                                    <td scope="row">5</td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[미답변] POD 정산내역 일시 조회 불가 안내 (10/11~)</a>
                                            <div class="faq_answer">
                                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore
                                                et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut
                                                aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum
                                                dolore eu fugiat nulla pariatur.</p>
                                                <br>
                                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est
                                                laborum.</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td>2022-10-11</td>
                                </tr>

                            </tbody>
                        </table>
                    </section>
                    <!-- 문의하기 END -->
                </div>
                
            </div>

            
        </main>

        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->
    </div>

    <script>
        var ctx1 = document.getElementById('myChart_1');
        var myChart1 = new Chart(ctx1, {
            type: 'line',
            data: {
                labels: ['2022-03', '2022-04', '2022-05', '2022-06', '2022-07', '2022-08', '2022-09', '2022-10', '2022-11', '2022-12', '2023-01','2023-02'],
                datasets: [{
                    label: '',
                    data: [10000, 11000, 9000, 11000, 9500, 10000, 10200, 9100, 8500, 9500, 13002, 10500],
                    backgroundColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                    ],
                        
                    borderWidth: 2,
                    tension:0.3,
                }]
            },
            options: {
                responsive: false,
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true,
                            max:14000,
                        }
                    }]
                },
                plugins:{
                    filler:{
                        propagate: false,
                    },
                    legend:{
                        display:false
                    },
                   
                },
                interaction: {
                    intersect: false,
                }
            }
        });

        var ctx2 = document.getElementById('myChart_2');
        var myChart2 = new Chart(ctx2, {
            type: 'line',
            data: {
                labels: ['2022-03', '2022-04', '2022-05', '2022-06', '2022-07', '2022-08', '2022-09', '2022-10', '2022-11', '2022-12', '2023-01','2023-02'],
                datasets: [{
                   
                    data: [5750, 6500, 5250, 6500, 5500, 6000, 6250, 5500, 5250, 6000, 7750, 6250],
                    backgroundColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        
                    ],
                    borderColor: [
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                        'rgba(255, 99, 132, 1)',
                    ],
                        
                    borderWidth: 2,
                    tension:0.3,
                }]
            },
            options: {
                responsive: false,
                scales: {
                    yAxes: [{
                        ticks: {
                            beginAtZero: true,
                        }
                    }]
                },
                plugins:{
                    filler:{
                        propagate: false,
                    },
                    legend:{
                        display:false
                    },
                   
                },
                interaction: {
                    intersect: false,
                }
            }
        });

       


        $(document).ready(function(){
            // 공지사항, 문의하기 표
            $('#t_notice,#t_qna').DataTable({
                "searching":false,
                pageLength:5,
                "lengthChange":false,
                paging:false,
                info:false,

                // 셀 너비 고정
                bAutoWidth:false,
                columnDefs:[
                    {width:"10%",targets:0},
                    {width:"75%",targets:1},
                    {width:"15%",targets:2},
                ]
            });

            // 공지사항 문의하기 아코디언 탭
            $(".faq_answer").hide();
            $(".faq_container a").click(function(){
                $(this).parent().find('.faq_answer').slideToggle('fast')
            });
        })
    </script>


</body>
</head>
</html>
