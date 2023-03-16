<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 콘텐츠 등록</title>

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <script>
        // 유효성 검사
        function form_check(){
            const b_name=document.getElementById("b_name");
            const sub_name=document.getElementById("sub_name");
            const brand_name=document.getElementById("brand_name");
            const author_name=document.getElementById("author_name");
            const b_list_price=document.getElementById("b_list_price");
            const eb_list_price=document.getElementById("eb_list_price");
            const isbn_num=document.getElementById("isbn_num");
            const e_isbn_num=document.getElementById("e_isbn_num");
            const page_num=document.getElementById("page_num");

            const book_info=document.getElementById("book_info");
            const book_list=document.getElementById("book_list");
            const author_info=document.getElementById("author_info");
            const category_1=document.getElementById("category_1");
            const category_2=document.getElementById("category_2");

            const b_file_name=document.getElementById("b_file_name");
            const t_file_name=document.getElementById("t_file_name");

            const b_price=document.getElementById("b_price");
            


            /* 도서명 입력 여부 */
            if(b_name.value==""){
                alert("도서명을 입력하세요.");
                b_name.focus();
                return false;
            }

            /* 부제 입력 여부 */
            if(sub_name.value==""){
                alert("부제를 입력하세요.");
                sub_name.focus();
                return false;
            }

            /* 브랜드명 입력 여부 */
            if(brand_name.value==""){
                alert("브랜드명을 입력하세요.");
                brand_name.focus();
                return false;
            }

            /* 저자명 입력 여부 */
            if(author_name.value==""){
                alert("저자명을 입력하세요.");
                author_name.focus();
                return false;
            }


            const regExp = /^[0-9]*$/;

            /* 종이책 정가 입력 여부, 숫자, 13자리 */
            if(b_list_price.value==""){
                alert("종이책 정가를 입력하세요.");
                b_list_price.focus();
                return false;
            } else if (!regExp.test(b_list_price.value)){
                alert("숫자만 입력 가능합니다. 다시 입력해주세요.");
                b_list_price.focus();
                return false;
            }
            

            /* 전자책 정가 입력 여부, 숫자 */
            if(eb_list_price.value==""){
                alert("전자책 정가를 입력하세요.");
                eb_list_price.focus();
                return false;
            } else if (!regExp.test(eb_list_price.value)){
                alert("숫자만 입력 가능합니다. 다시 입력해주세요.");
                eb_list_price.focus();
                return false;
            }

            const regExp2 = /^[0-9]{13,13}$/;

            /* isbn 입력 여부, 숫자만, 13자리인지 확인 */
            if(isbn_num.value==""){
                alert("ISBN을 입력하세요.");
                isbn_num.focus();
                return false;
            } else if(!regExp2.test(isbn_num.value)){
                alert("ISBN 13자리 숫자를 입력하세요.");
                isbn_num.focus();
                return false;
            }

             /* e_isbn 입력 여부, 숫자만, 13자리인지 확인 */
             if(e_isbn_num.value==""){
                alert("E-ISBN을 입력하세요.");
                e_isbn_num.focus();
                return false;
            } else if(!regExp2.test(e_isbn_num.value)){
                alert("E-ISBN 13자리 숫자를 입력하세요.");
                e_isbn_num.focus();
                return false;
            }

            /* 페이지 수 입력 여부, 숫자만 */
            if(page_num.value==""){
                alert("페이지 수를 입력하세요.");
                page_num.focus();
                return false;
            } else if (!regExp.test(page_num.value)){
                alert("숫자만 입력 가능합니다. 다시 입력해주세요.");
                page_num.focus();
                return false;
            }

            /* 책소개 입력 여부 */
            if(book_info.value==""){
                alert("책소개를 입력하세요.");
                book_info.focus();
                return false;
            }

            /* 목차 입력 여부 */
            if(book_list.value==""){
                alert("목차를 입력하세요.");
                book_list.focus();
                return false;
            }

            /* 저자 입력 여부 */
            if(author_info.value==""){
                alert("저자를 입력하세요.");
                author_info.focus();
                return false;
            }

            /* 카테고리1 입력 여부 */
            if(category_1.value==""){
                alert("카테고리1(주제별)을 입력하세요.");
                category_1.focus();
                return false;
            }

            /* 카테고리2 입력 여부 */
            if(category_2.value==""){
                alert("카테고리2(대상별)을 입력하세요.");
                category_2.focus();
                return false;
            }

            /* 도서파일 입력 여부 */
            if(b_file_name.value==""){
                alert("도서파일을 입력하세요.");
                b_file_name.focus();
                return false;
            }

            /* 표지 입력 여부 */
            if(t_file_name.value==""){
                alert("표지를 입력하세요.");
                t_file_name.focus();
                return false;
            }
            
            /* 판매가 입력 여부, 숫자만 */
            if(b_price.value==""){
                alert("판매가를 입력하세요.");
                b_price.focus();
                return false;
            } else if (!regExp.test(b_price.value)){
                alert("숫자만 입력 가능합니다. 다시 입력해주세요.");
                b_price.focus();
                return false;
            }

        }
    </script>

    <!-- 모달 START -->
    <div class="modal">
        <div class="modal_body">
            <p class="title_wrap"><span class="modal_title">소개내용</span><span><img class="btn_close_popup" src="../img/btn_ly_close.png" alt="닫기"></span></p>
            <table class="table_input">
                <colgroup>
                    <col class="th">
                    <col class="td">
                </colgroup>
                <tbody>
                    <th>소개내용</th>
                    <td><textarea name="a_info_txt" id="a_info_txt" cols rows="5"></textarea></td>
                </tbody>
            </table>
            <div class="btn_wrap">
                <button type="button" class="btn_primary btn_md" id="a_info_modal_save">확인</button>
                <button type="button" class="btn_primary btn_md btn_light_gray">닫기</button>
            </div>
        </div>
    </div>
    <!-- 모달 END -->

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

                    <!-- 콘텐츠 등록 START -->
                    <div class="content_regist">
                        <form action="" method="post" id="cont_regist_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">콘텐츠 등록</legend>
    
                                <div class="basic_info table_wrap">
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
                                                        <input type="radio" name="category" id="c_normal" value="normal_book" checked>
                                                        <label for="c_normal">일반도서</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="c_genre" name="category" value="genre_book">
                                                        <label for="c_genre">장르도서</label>
                                                    </span>

                                                    <span class="radio">
                                                        <input type="radio" id="c_audio" name="category" value="audio_book">
                                                        <label for="c_audio">오디오북</label>
                                                    </span>

                                                    <span class="radio">
                                                        <input type="radio" id="c_video" name="category" value="video">
                                                        <label for="c_video">동영상</label>
                                                    </span>
                                                </td>
                                                <th scope="row">상품코드</th>
                                                <td><span id="b_code">(자동으로)</span></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">파일 타입 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <span class="radio">
                                                        <input type="radio" name="file_type" id="type_epub" value="epub" checked>
                                                        <label for="type_epub">EPUB</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="type_pdf" name="file_type" value="pdf">
                                                        <label for="type_pdf">PDF</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>시리즈 여부</th>
                                                <td colspan="3">
                                                    <span class="chk">
                                                        <input type="checkbox" id="series_chk" name="series_chk" value="Y">
                                                        <label for="series_chk">시리즈 여부</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr class="series_add_info add_info">
                                                <th>시리즈명</th>
                                                <td>
                                                    <input type="text" name="series_name">
                                                </td>
                                                <th>권수</th>
                                                <td>
                                                    <input type="text" name="series_num">
                                                    <span class="chk series_complete">
                                                        <input type="checkbox" id="complete" name="complete" value="Y">
                                                        <label for="complete">완간</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>도서명 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="b_name" name="b_name">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>부제 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="sub_name" name="sub_name">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>원서명</th>
                                                <td colspan="3">
                                                    <input type="text" name="origin_name">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>출판사</th>
                                                <td>
                                                    <span id="publisher">(비활성/브랜드 명에 따라 자동)</span>
                                                </td>
                                                <th>브랜드명 <span class="green">*</span></th>
                                                <td class="brand btn_add_wrap">
                                                    <input type="text" id="brand_name" name="brand_name">
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>저자명 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <select name="sel_author_name">
                                                        <option value="author" selected>저자</option>
                                                        <option value="translator">역자</option>
                                                        <option value="painter">그린이</option>
                                                    </select>
                                                    <input type="text" id="author_name" name="author_name">
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
                                                    <input type="text" id="b_list_price" name="b_list_price">
                                                    원
                                                </td>
                                                <th>전자책 정가 <span class="green">*</span></th>
                                                <td>
                                                    <input type="text" id="eb_list_price" name="eb_list_price">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>ISBN 13자리 <span class="green">*</span></th>
                                                <td>
                                                    <input type="text" id="isbn_num" name="isbn_num">
                                                </td>
                                                <th>E-ISBN 13자리 <span class="green">*</span></th>
                                                <td>
                                                    <input type="text" id="e_isbn_num" name="e_isbn_num">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>페이지 수 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="page_num" name="page_num">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>도서 구분 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <span class="radio">
                                                        <input type="radio" name="book_devision" id="book_domestic" value="domestic_book" checked>
                                                        <label for="book_domestic">국내서</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="book_translation" name="book_devision" value="translation_book">
                                                        <label for="book_translation">번역서</label>
                                                    </span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div class="sub_info table_wrap">
                                    <h3 class="sub_t">부가 정보</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">책소개 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols id="book_info" name="book_info_txt"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">출판사서평</th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols name="brand_review"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">목차 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols id="book_list" name="book_list"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">저자 <span class="green">*</span></th>
                                                <td colspan="3" class="author btn_add_wrap">
                                                    <input type="text" id="author_info" name="author_info">

                                                    <button type="button" class="btn_line gray_btn_line btn_open_popup">소개내용</button>

                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                </td>
                                            </tr>
                                            
                                            <tr>
                                                <th>카테고리1 (주제별) <span class="green">*</span></th>
                                                <td class="cat1 btn_add_wrap">
                                                    <input type="text" id="category_1" name="category_1">
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                </td>
                                                <th>카테고리2 (대상별) <span class="green">*</span></th>
                                                <td class="cat2 btn_add_wrap">
                                                    <input type="text" id="category_2" name="category_2">
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>카테고리3 (상황별)</th>
                                                <td colspan="3">
                                                    <span id="category_3">(비활성/추후)</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>검색 키워드</th>
                                                <td colspan="3" class="">
                                                    <input type="text" name="search_key"> 
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <th>홍보 영상</th>
                                                <td>
                                                    <select name="pro_video_sel">
                                                        <option value="youtube" selected>유튜브</option>
                                                        <option value="vimeo">비메오</option>
                                                    </select>
                                                    <input type="text" name="video_url">
                                                </td>
                                                <th>미리보기 여부</th>
                                                <td>
                                                    <select name="preview_sel">
                                                        <option value="Y" selected>Y</option>
                                                        <option value="N">N</option>
                                                    </select>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="resource table_wrap">
                                    <h3 class="sub_t">리소스</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">도서 파일 <span class="green">*</span></th>
                                                <td class="file_box">
                                                    <input type="text" id="b_file_name" name="b_file_name" readonly>
                                                    <label for="b_file">파일선택</label>
                                                    <input type="file" id="b_file">
                                                </td>

                                                <th>다운로드 여부</th>
                                                <td>
                                                    <select name="down_sel">
                                                        <option value="Y" selected>Y</option>
                                                        <option value="N">N</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">파일사이즈</th>
                                                <td colspan="3">
                                                    <span id="file_size">(자동으로 뿌림)</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">표지 <span class="green">*</span></th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" id="t_file_name" name="t_file_name" readonly>
                                                    <label for="t_file">파일선택</label>
                                                    <input type="file" id="t_file" class="under_1mb" accept=".jpg,.png" onchange="setThumbnail(event)">
                                                    <div id="image_container" class="thumb_img"></div>
                                                    <ul class="file_txt">
                                                        <li>지원포맷 : .jpg, .png</li>
                                                        <li>최대용량 : 1MB 이하</li>
                                                        <li>권장사이즈 : 가로 700px</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">상세 이미지</th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" id="d_file_name" name="d_file_name" readonly>
                                                    <label for="d_file">파일선택</label>
                                                    <input type="file" id="d_file" class="under_1mb" accept=".jpg,.png" onchange="setThumbnail2(event)">
                                                    <div id="image_container2" class="thumb_img"></div>
                                                    <ul class="file_txt">
                                                        <li>지원포맷 : .jpg, .png</li>
                                                        <li>최대용량 : 1MB 이하</li>
                                                        <li>권장사이즈 : 가로 860px</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">체험판 등록</th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" id="f_file_name" name="f_file_name" readonly>
                                                    <label for="f_file">파일선택</label>
                                                    <input type="file" id="f_file" class="under_30mb">
                                                    <ul class="file_txt" style="margin-top:10px;">
                                                        <li>최대용량 : 30MB 이하</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="sale_info table_wrap">
                                    <h3 class="sub_t">판매 정보</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">판매 형태 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <select name="sale_type_sel">
                                                        <option value="all" selected>전체</option>
                                                        <option value="keep">소장</option>
                                                        <option value="rent">대여</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">판매가 <span class="green">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="b_price" name="b_price">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">대여가</th>
                                                <td>
                                                    <input type="text" id="b_rental_price" name="b_rental_price">
                                                    원
                                                </td>
                                                <th scope="row">대여기간</th>
                                                <td>
                                                    <input type="text" id="rental_period" name="rental_period">
                                                    일
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">서비스 여부 <span class="green">*</span></th>
                                                <td>
                                                    <span class="radio">
                                                        <input type="radio" name="service" id="now" value="now" checked>
                                                        <label for="now">즉시</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="appointed" value="appointed" name="service" >
                                                        <label for="appointed">지정</label>
                                                    </span>
                                                </td>

                                                <th>서비스 시작일</th>
                                                <td class="regist_date">
                                                    <input type="text" name="serviceDate" autocomplete="off"> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="message table_wrap">
                                    <h3 class="sub_t">전달사항</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">전달사항</th>
                                                <td colspan="3">
                                                    <textarea name="message" id="" cols rows="5" placeholder="참고사항, 수정된 내용 등 관리자에게 알려주시면 감사하겠습니다."></textarea>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <!-- 초기 작성 시 하단 버튼 START -->
                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">저장하기</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray">취소(초기화)</button>
                                    <!--<button type="submit" class="btn_md btn_primary">승인신청</button>-->
                                </div>
                                <!-- 초기 작성 시 하단 버튼 END -->

                                <!-- 승인 완료 이후 도서 목록에서 들어왔을 때 하단 버튼 START -->
                                <!--<div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">수정하기</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray">판매중지요청</button>
                                </div>-->
                                <!-- 승인 완료 이후 도서 목록에서 들어왔을 때 하단 버튼 END -->
                                 
                                <!-- 저장 후 도서 정보 view 화면에서 하단 버튼 START -->
                                <!--<div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">승인신청</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray">수정하기</button>
                                </div>-->
                                <!-- 저장 후 도서 정보 view 화면에서 하단 버튼 END -->
                                

                            </fieldset>
                        </form>
                    </div>
                    <!-- 콘텐츠 등록 END -->                    
                </div>

            </section>
        </main>
        

        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->

    </div>
    
    
    

    <script>

        // 파일 업로드-표지
        function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }

      // 파일 업로드-상세
      function setThumbnail2(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container2").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
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
            

            $('input[name="bookDate"],input[name="ebookDate"],input[name="serviceDate"]').daterangepicker(
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
            $(".series_add_info").hide();
            $("input:checkbox[name='series_chk']").click(function(){
                if($(this).is(":checked")){
                    $(".series_add_info").show();
                }else{
                    $(".series_add_info").hide();
                }
            });

            // 브랜드명 추가, 삭제 버튼
            var fieldHtml='<div><input type="text" class="add_ipt"><button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';

            $(".brand .add_btn").click(function(){
                $(".brand.btn_add_wrap").append(fieldHtml);
            });

            $(".brand .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".brand.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });

            // 저자 추가, 삭제 버튼
            var fieldHtml2='<div><input type="text" class="add_ipt"><button type="button" class="btn_line gray_btn_line mg btn_open_popup">소개내용</button><button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';

            $(".author .add_btn").click(function(){
                $(".author.btn_add_wrap").append(fieldHtml2);
            });

            $(".author .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".author.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });

            // 카테고리1 추가, 삭제 버튼
            $(".cat1 .add_btn").click(function(){
                $(".cat1.btn_add_wrap").append(fieldHtml);
            });

            $(".cat1 .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".cat1.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });

            // 카테고리2 추가, 삭제 버튼
            $(".cat2 .add_btn").click(function(){
                $(".cat2.btn_add_wrap").append(fieldHtml);
            });

            $(".cat2 .remove_btn").click(function(){
                $(this).parent('div').remove();
            })

            $(".cat2.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                $(this).parent('div').remove();
            });


            // modal 띄우기
            $(".btn_open_popup").click(function(){
                $(".modal").css({
                    "display":"block",
                });
                $("body").css({
                    "overflow":"hidden",
                })

                $(".btn_close_popup,.modal .btn_wrap button").click(function(){
                    $(".modal").css({
                        "display":"none",
                    });
                    $("body").css({
                        "overflow":"auto",
                    });
                })
            })
        });

        // input=file 파일명 연결
        $("#b_file").on('change',function(){
            var fileName = $(this).val();
            $("#b_file_name").val(fileName);
        });
        
        $("#t_file").on('change',function(){
            var fileName = $(this).val();
            $("#t_file_name").val(fileName);
        });
        $("#d_file").on('change',function(){
            var fileName = $(this).val();
            $("#d_file_name").val(fileName);
        });
        $("#f_file").on('change',function(){
            var fileName = $(this).val();
            $("#f_file_name").val(fileName);
        });

        // 파일 1mb 제한
        $(".under_1mb").bind( 'change', function (e)
        {
            if( !$(this).val() ) return;
             
            var f = this.files[0];
            var size = f.size || f.fileSize;
             
            var limit = 1000000;
                         
            if( size > limit )
            {
                alert( '파일용량은 1mb 를 넘을수 없습니다.' );
                $(this).val('');
                return;
            }
        });

        // 파일 30mb 제한
        $(".under_30mb").bind( 'change', function (e)
        {
            if( !$(this).val() ) return;
             
            var f = this.files[0];
            var size = f.size || f.fileSize;
             
            var limit = 30000000;
                         
            if( size > limit )
            {
                alert( '파일용량은 30mb 를 넘을수 없습니다.' );
                $(this).val('');
                return;
            }
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
