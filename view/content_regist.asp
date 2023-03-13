<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 콘텐츠 등록</title>

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <script>
        function form_check(){
            var b_name=document.getElementById("b_name");
            var b_isbn=document.getElementById("b_isbn");
            var b_e_isbn=document.getElementById("b_e_isbn");


            /* 도서명 입력 여부 */
            if(b_name.value==""){
                alert("도서명을 입력하세요.");
                b_name.focus();
                return false;
            }
        }
    </script>

    <div class="page_right">
        <main id="content" class="content p_content_regist">
            <section class="">
                <!-- 제목 START -->
                <h2>
                    <a href="#none" title="메뉴열기" class="open_gnb">
                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-menu align-self-center"><line x1="3" y1="12" x2="21" y2="12"></line><line x1="3" y1="6" x2="21" y2="6"></line><line x1="3" y1="18" x2="21" y2="18"></line></svg>
                    </a>
                    <span>콘텐츠 등록</span>
                </h2>
                <!-- 제목 END -->
    
                <div class="page_wrap">

                    <!-- 기본정보 START -->
                    <div class="base_tab">
                        <form action="" method="post" id="base_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">콘텐츠 등록</legend>
    
                                <h3 class="sub_t">기본 정보</h3>
                                
                                <table class="table_input">
                                    <colgroup>
                                        <col class="th">
                                        <col class="td">
                                        <col class="th">
                                        <col class="td">
                                    </colgroup>
                                    <tbody>
                                        <tr>
                                            <th scope="row">구분</th>
                                            <td>
                                                <span class="radio">
                                                    <input type="radio" name="category" id="c_normal" checked>
                                                    <label for="c_normal">일반도서</label>
                                                </span>
                
                                                <span class="radio">
                                                    <input type="radio" id="c_genre" name="category" >
                                                    <label for="c_genre">장르도서</label>
                                                </span>

                                                <span class="radio">
                                                    <input type="radio" id="c_audio" name="category" >
                                                    <label for="c_audio">오디오북</label>
                                                </span>

                                                <span class="radio">
                                                    <input type="radio" id="c_video" name="category" >
                                                    <label for="c_video">동영상</label>
                                                </span>
                                            </td>
                                            <th scope="row">상품코드</th>
                                            <td>(자동으로)</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">파일 타입 <span class="green">*</span></th>
                                            <td colspan="3">
                                                <span class="radio">
                                                    <input type="radio" name="file_type" id="type_epub" checked>
                                                    <label for="type_epub">EPUB</label>
                                                </span>
                
                                                <span class="radio">
                                                    <input type="radio" id="type_pdf" name="file_type" >
                                                    <label for="type_pdf">PDF</label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>시리즈 여부</th>
                                            <td colspan="3">
                                                <span class="chk">
                                                    <input type="checkbox" id="series_chk" name="series_chk" checked>
                                                    <label for="series_chk">시리즈 여부</label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr class="series_add_info add_info">
                                            <th>시리즈명</th>
                                            <td>
                                                <input type="text">
                                            </td>
                                            <th>권수</th>
                                            <td>
                                                <input type="text">
                                                <span class="chk series_complete">
                                                    <input type="checkbox" id="complete" name="complete" >
                                                    <label for="complete">완간</label>
                                                </span>
                                            </td>
                                        </tr>
                                        <tr class="long_input">
                                            <th>도서명 <span class="green">*</span></th>
                                            <td colspan="3">
                                                <input type="text" id="b_name">
                                            </td>
                                        </tr>
                                        <tr class="long_input">
                                            <th>부제 <span class="green">*</span></th>
                                            <td colspan="3">
                                                <input type="text">
                                            </td>
                                        </tr>
                                        <tr class="long_input">
                                            <th>원서명</th>
                                            <td colspan="3">
                                                <input type="text">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>출판사</th>
                                            <td>
                                                (비활성/브랜드 명에 따라 자동)
                                            </td>
                                            <th>브랜드명 <span class="green">*</span></th>
                                            <td class="brand btn_add_wrap">
                                                <input type="text">
                                    
                                                <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>저자명 <span class="green">*</span></th>
                                            <td colspan="3">
                                                <select name="">
                                                    <option value="" selected>저자</option>
                                                    <option value="">역자</option>
                                                    <option value="">그린이</option>
                                                </select>
                                                <input type="text">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>종이책 출간일 <span class="green">*</span></th>
                                            <td class="regist_date">
                                                <input type="text" name="bookDate" value="" autocomplete="off"> 
                                            </td>
                                            <th>전자책 출간일 <span class="green">*</span></th>
                                            <td class="regist_date">
                                                <input type="text" name="ebookDate" value="" autocomplete="off">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>종이책 정가 <span class="green">*</span></th>
                                            <td>
                                                <input type="text">
                                                원
                                            </td>
                                            <th>전자책 정가 <span class="green">*</span></th>
                                            <td>
                                                <input type="text">
                                                원
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>ISBN 13자리 <span class="green">*</span></th>
                                            <td>
                                                <input type="text" id="b_isbn">
                                            </td>
                                            <th>E-ISBN 13자리 <span class="green">*</span></th>
                                            <td>
                                                <input type="text" id="b_e_isbn">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>페이지 수 <span class="green">*</span></th>
                                            <td colspan="3">
                                                <input type="text">
                                            </td>
                                        </tr>
                                        <tr>
                                            <th>도서 구분 <span class="green">*</span></th>
                                            <td colspan="3">
                                                <span class="radio">
                                                    <input type="radio" name="book_devision" id="book_domestic" checked>
                                                    <label for="book_domestic">국내서</label>
                                                </span>
                
                                                <span class="radio">
                                                    <input type="radio" id="book_translation" name="book_devision" >
                                                    <label for="book_translation">번역서</label>
                                                </span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>


                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">조회</button>
                                </div>
                            </fieldset>
                        </form>
                    </div>
                    <!-- 기본정보 END -->
                            






                   
                            
                   
    
                    
                </div>
                
            </section>
        </main>
        
        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->
    </div>
    

    

    <script>
        // 체크박스 전체 클릭시
        function selectAll(selectAll)  {
        const checkboxes 
            = document.getElementsByName('goods');
        
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked;
        })
        }

        $(document).ready(function () {
            $('#t_b_list_all').DataTable({
                aaSorting : [],
                "searching":false,

                // 세로 스크롤
                // scrollY: '489px',
                // scrollCollapse: true,

                // 셀 너비 고정
                bAutoWidth:false,
                columnDefs:[
                    {width:"4%",targets:0},
                    {width:"6%",targets:1},
                    {width:"7%",targets:2},
                    {width:"16%",targets:3},
                    {width:"8%",targets:4},
                    {width:"5%",targets:5},
                    {width:"10%",targets:6},
                    {width:"4%",targets:7},
                    {width:"5%",targets:8},
                    {width:"5%",targets:9},
                    {width:"6%",targets:10},
                    {width:"6%",targets:11},
                    {width:"5%",targets:12},
                    {width:"10%",targets:13},
                ]
            });
            

            $('input[name="startDate"],input[name="endDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                
                locale: {
                    format: "YYYY-MM-DD",
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

            $('input[name="bookDate"],input[name="ebookDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                
                locale: {
                    format: "YYYY-MM-DD",
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
            
            // 시리즈 정보 추가
            //$(".series_add_info").hide();
            $("input:checkbox[name='series_chk']").click(function(){
                if($(this).is(":checked")){
                    $(".series_add_info").show();
                }else{
                    $(".series_add_info").hide();
                }
            });

            // 추가, 삭제 버튼
            var fieldHtml='<div><input type="text" class="add_ipt"><button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';

            $(".add_btn").click(function(){
                $(".btn_add_wrap").append(fieldHtml);
            });

            $(".remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });
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
