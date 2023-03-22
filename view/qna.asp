<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 문의하기</title>

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <script>
        // 유효성 검사
        function form_check(){
            const qna_title=document.getElementById("qna_title");
            const qna_cont=document.getElementById("qna_cont");
         
            /* 문의제목 입력 여부 */
            if(qna_title.value==""){
                alert("문의 제목을 입력하세요.");
                qna_title.focus();
                return false;
            }

            /* 문의내용 입력 여부 */
            if(qna_cont.value==""){
                alert("문의 내용을 입력하세요.");
                qna_cont.focus();
                return false;
            }
        };
    </script>
    

    <div class="page_right">
        <main id="content" class="content p_qna">
            <section class="">
                <!-- 제목 START -->
                <h2>
                    <a href="#none" title="메뉴열기" class="open_gnb">
                        <span>문의하기</span>
                    </a>
                    
                </h2>
                <!-- 제목 END -->
    
                <div class="page_wrap">

                    <!-- 질문 등록 START -->
                    <div class="qna_wrap">
                        <form action="" method="post" id="qna_regist_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">문의하기 질문 등록</legend>

                                <div class="basic_info table_wrap">
                                    <h3 class="sub_t">질문 등록</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">문의 제목</th>
                                                <td>
                                                    <input type="text" name="qna_title" id="qna_title">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">문의 내용</th>
                                                <td>
                                                    <textarea name="qna_cont" id="qna_cont" cols rows="5"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">파일 첨부</th>
                                                <td class="file_box">
                                                    <input type="text" id="qna_file_name" name="qna_file_name" readonly>
                                                    <label for="qna_file">파일선택</label>
                                                    <input type="file" id="qna_file">
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
        
                                <!-- 등록하기 버튼 START -->
                                <div class="btn_wrap" style="text-align:center; margin-top:50px;">
                                    <button type="submit" class="btn_md btn_primary" >등록하기</button>
                                </div>
                                <!-- 등록하기 버튼 END -->
                        </form>
                    </div>
                    <!-- 질문 등록 END -->             
                    
                    
                    <!-- 질문 목록 START -->
                    <section class="qna">
                        <h3 class="sub_t">질문 목록</h3>
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
                    <!-- 질문 목록 END -->
                </div>

            </section>
        </main>
        

        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->

    </div>

    <script>
        $(document).ready(function(){
             // input=file 파일명 연결
            $("#qna_file").on('change',function(){
                var fileName = $(this).val();
                $("#qna_file_name").val(fileName);
            });

             // 공지사항, 문의하기 표
             $('#t_qna').DataTable({
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
    </html>