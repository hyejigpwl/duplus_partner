
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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
<%
' 상품 코드가 있으면 수정모드.   

guid = Uguid()

pCode = request("pCode")
if pCode <> ""  then
 
end if 

' 카테고리1  셀렉트 박스(주제별)  PrCMS_ContentCategoryType_1
' 카테고리2  셀렉트 박스(대상별)  PrCMS_ContentCategoryType_2
' 브랜드  PrCMS_PublisherBrand  @
' 브랜드를 선택하면  해당 출판사명도  display 

' <검색>
' PrCMS_TbCms_Content_Contentno_Q    -- Contentno 로 검색할 때
' PrCMS_TbCms_Content_cms_id_Q     --- cms_id 로 검색할 때 

' <추가검색>
' TBCMS_AUTHOR
' TBCMS_CATEGORY


' <입력>
' PrCMS_Content_I   --  insert  TBCMS_CONTENT
' PrCMS_Author_I    -- insert  TBCMS_author   -- 저자가 있으면 1:다
'  PrCMS_Author_U   --update TBCMS_AUTHOR  
' #NAME?

' prCMS_Content_U   -- UPDATE TBCMS_CONTENT

' 좀더 추가하고 보완할 부분은 있는데.. 전체 흐름 검토하시면 될 것 같습니다.

' 카테고리 주제별 
 
set rs=dbh.RunSPReturnRS("PrCMS_ContentCategoryType_1","" , conn_duplus)	
if not (rs.eof or rs.bof) then 
category1 = rs.getRows()
end if 
rs.close 


    
              'response.end 

set rs = nothing
%>

    <!-- 저자 소개내용 모달 START -->
    <div class="modal a_modal">
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
    <!-- 저자 소개내용 모달 END -->

    <!-- 판매중지 모달 START -->
    <div class="modal s_modal">
        <form action="" method="post" id="stop_sell_form" class="form_primary">
        <div class="modal_body">
            <p class="title_wrap"><span class="modal_title">판매중지사유</span><span><img class="btn_close_popup" src="../img/btn_ly_close.png" alt="닫기"></span></p>
            <table class="table_input">
                <colgroup>
                    <col class="th">
                    <col class="td">
                </colgroup>
                <tbody>
                    <th>판매중지사유</th>
                    <td>
                            <p class="radio" style="margin-top:10px;">
                                <input type="radio" name="reason" id="expire" value="expire" checked>
                                <label for="expire">저작권 만료로 판매중단 예정입니다.</label>
                            </p>

                            <p class="radio">
                                <input type="radio" name="reason" id="revision" value="revision">
                                <label for="revision">개정판을 업로드 할 예정입니다.</label>
                            </p>

                            <p class="radio" style="margin-bottom:0 !important;">
                                <input type="radio" name="reason" id="etc" value="etc">
                                <label for="etc">기타</label> 
                                <p class="" style="margin-top:10px; margin-bottom:0px !important"><textarea rows="5" cols id="etc_txt" name="reason"></textarea></p>
                            </p>

                    </td>
                </tbody>
            </table>
            <div class="btn_wrap">
                <button type="submit" class="btn_primary btn_md" id="a_info_modal_save">확인</button>
                <button type="button" class="btn_primary btn_md btn_light_gray">닫기</button>
            </div>
        </form>
        </div>
    </div>
    <!-- 판매중지 모달 END -->

    <div class="page_right">
        <main id="content" class="content p_content_regist">
            <section class="">
                <!-- 제목 START -->
                <h2>
                    <a href="#none" title="메뉴열기" class="open_gnb">
                        <span>콘텐츠 등록</span>
                    </a>
                    
                </h2>
                <!-- 제목 END -->
    
                <div class="page_wrap">

                    <!-- 콘텐츠 등록 START -->
                    <div class="content_regist">
                        <form action="regOk.asp" method="post" id="cont_regist_form" class="form_primary" onsubmit="return form_check()">
                        <input type="hidden" id="HIddenGuid" value="<%=guid%>">
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
                                                <th scope="row">파일 타입 <span class="orange">*</span></th>
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
                                                        <input type="checkbox" id="series_chk" name="series_chk" value="N">
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
                                                <th>도서명 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="b_name" name="b_name"  value="테스트북명">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>부제 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="sub_name" name="sub_name" value="테스트북부제">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>원서명</th>
                                                <td colspan="3">
                                                    <input type="text" name="origin_name" value="테스트북원서명">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>출판사</th>
                                                <td>
                                                    <span id="publisher">(비활성/브랜드 명에 따라 자동)</span>
                                                </td>
                                                <th>브랜드명 <span class="orange">*</span></th>
                                                <td class="brand btn_add_wrap">
                                                    <select name="sel_brand" style="width:200px;"><option value="" selected>두란노</option><option value="">한국성서학연구소</option><option value="">두란노</option></select>
                                                </td>
                                            </tr>
                                            <!--<tr>
                                                <th>저자명 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <select name="sel_author_name">
                                                        <option value="author" selected>저자</option>
                                                        <option value="translator">역자</option>
                                                        <option value="painter">그린이</option>
                                                    </select>
                                                    <input type="text" id="author_name" name="author_name">
                                                </td>
                                            </tr>-->

                                            <tr>
                                                <th scope="row">저자 <span class="orange">*</span></th>
                                                <td colspan="3" class="author btn_add_wrap">
                                                    <select name="sel_author_name">
                                                        <option value="author" selected>저자</option>
                                                        <option value="translator">역자</option>
                                                        <option value="painter">그린이</option>
                                                    </select>
                                                    <input type="text" id="author_info" name="author_info" value="테스트북저자">

                                                    <button type="button" class="btn_line gray_btn_line a_open_popup">소개내용</button>

                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>종이책 출간일 <span class="orange">*</span></th>
                                                <td class="regist_date">
                                                    <input type="text" name="bookDate" value="2023-05-01" autocomplete="off"> 
                                                </td>
                                                <th>전자책 출간일 <span class="orange">*</span></th>
                                                <td class="regist_date">
                                                    <input type="text" name="ebookDate" value="2023-05-01" autocomplete="off">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>종이책 정가 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="b_list_price" name="b_list_price" value="10,000">
                                                    원
                                                </td>
                                                <th>전자책 정가 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="eb_list_price" name="eb_list_price" value="10,000">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>ISBN 13자리 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="isbn_num" name="isbn_num" value="123456789123">
                                                </td>
                                                <th>E-ISBN 13자리 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="e_isbn_num" name="e_isbn_num" value="E23456789123">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>페이지 수 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="page_num" name="page_num" value="530"> Pages
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>도서 구분 <span class="orange">*</span></th>
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
                                                <th scope="row">책소개 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols id="book_info" name="book_info_txt"> 책 소개 
                                                    이것이 책소개다 
                                                    이것이 책소개다 
                                                    이것이 책소개다 
                                                    
                                                    </textarea>
                                                    <div class="col-md-10" id="summernote" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">출판사서평</th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols name="brand_review">
                                                    이것이 출판사 서평이다. 
                                                    이것이 출판사 서평이다. 
                                                    이것이 출판사 서평이다. 
                                                    </textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">목차 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <textarea rows="5" cols id="book_list" name="book_list">
                                                    이것이 목차이다.
                                                    이것이 목차이다.
                                                    이것이 목차이다.

                                                    </textarea>
                                                </td>
                                            </tr>
                                           
                                            
                                            <tr>
                                                <th>카테고리1 (주제별) <span class="orange">*</span></th>
                                                <td class="cat1 btn_add_wrap">
                                                    <!--<input type="text" id="category_1" name="category_1">-->

                                                    <select name="category_1" id="category_1" style="width:200px;">
                                                    <%if isArray(category1) then %>
                                                            <option value="0" selected>선택해 주세요</option>
                                                            <% for i = 0 to Ubound(category1,2)%>
                                                            <option value="<%=category1(0,i)%>"  ><%=category1(1,i)%></option>
                                                            <%
                                                        next
                                                    end if %>
                                                    
                                                    </select>
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                </td>
                                                <th>카테고리2 (대상별) <span class="orange">*</span></th>
                                                <td class="cat2 btn_add_wrap">
                                                    <!--<input type="text" id="category_2" name="category_2">-->

                                                    <select name="category_2" id="category_2" style="width:200px;"><option value="" selected>두란노</option><option value="">한국성서학연구소</option><option value="">두란노</option></select>
                                        
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
                                                <td colspan="3" class="key btn_add_wrap">
                                                    <!--<input type="text" name="search_key"> -->

                                                    <select name="search_key" id="search_key" style="width:200px;"><option value="" selected>두란노</option><option value="">한국성서학연구소</option><option value="">두란노</option></select>
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
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

                                  <div class="form-group row">
                                    <label class="col-form-label col-md-2" style="float: left;text-align: center;"><span style="color: red">*</span>파일</label>
                                    <div class="col-md-4" id="file-uploaderMedia" style=" padding: 0px; margin-top: -12px;"></div>
                                    <label class="col-md-1" id="MediaName"></label>
                                    <div class="col-md-5">
                                        <a class="btn btn-primary btn-sm" id="mediaDownload" href="#">다운로드</a>
                                    </div>
                                </div>

                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">도서 파일 <span class="orange">*</span></th>
                                                <td class="file_box">
                                                    <input type="text" id="b_file_name" name="b_file_name" readonly>
                                                    <label for="b_file">파일선택</label>
                                                    <input type="file" id="b_file" onchange="checkFile(event)">
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
                                                <th scope="row">표지 <span class="orange">*</span></th>
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
                                        <!--<colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>-->

                                        <colgroup>
                                            <col style="width:8.8%;">
                                            <col style="width:8.8%;">
                                            <col style="width:30%;">
                                            <col style="width:10%;">
                                            <col style="width:20%;">
                                            <col style="width:20%;">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">판매 형태 <span class="orange">*</span></th>
                                                <td colspan="5">
                                                    <select name="sale_type_sel">
                                                        <option value="all" selected>전체</option>
                                                        <option value="keep">소장</option>
                                                        <option value="rent">대여</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">판매가 <span class="orange">*</span></th>
                                                <td colspan="5">
                                                    <input type="text" id="b_price" name="b_price">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">대여가</th>
                                                <td colspan="2">
                                                    <input type="text" id="b_rental_price" name="b_rental_price">
                                                    원
                                                </td>
                                                <th scope="row">대여기간</th>
                                                <td colspan="2">
                                                    <input type="text" id="rental_period" name="rental_period">
                                                    일
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">서비스 여부 <span class="orange">*</span></th>
                                                <td colspan="2">
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
                                                <td class="regist_date" colspan="2">
                                                    <input type="text" name="serviceDate" autocomplete="off"> 
                                                </td>
                                            </tr>

                                            <!-- 정산율 START -->
                                            <tr>
                                                <th scope="row" rowspan="3">정산율</th>
                                                <th>구독정산(매입)가</th>
                                                <td colspan="1">
                                                    <input type="text" id="sub_set" name="sub_set">
                                                    원
                                                </td>

                                                <th>구독정산 기준 판매수량</th>
                                                <td colspan="3">
                                                    <input type="text" id="sales_qt" name="sales_qt">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>소장정산(매입)가</th>
                                                <td colspan="1">
                                                    <input type="text" id="col_set" name="col_set">
                                                    원
                                                </td>

                                                <th>대여정산(매입)가</th>
                                                <td colspan="3">
                                                    <input type="text" id="rent_set" name="rent_set">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">제작 등록</th>
                                                <td colspan="1">
                                                    <!--<span id="stm_pd">ㄹㅇㄹㅇㄹ</span>-->

                                                    <span class="chk">
                                                        <input type="checkbox" id="pd_rgt" name="pd_rgt" value="Y">
                                                        <label for="pd_rgt">리소스제작위탁 여부</label>
                                                    </span>
                                                </td>

                                                <th scope="row">독점기간</th>
                                                <td class="regist_date" colspan="3">
                                                    <span class="chk">
                                                        <input type="text" name="ecs_prd" autocomplete="off"> 까지 
                                                    </span>
                                                </td>
                                            </tr>      
                                            <!-- 정산율 END -->
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

                                <!-- 최초 저장 이후 도서 정보 view 화면에서(입력한 정보가 저장된 상태) 활성화되는 버튼 START -->
                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">승인신청</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray">수정하기</button>
                                </div>
                                <!-- 최초 저장 이후 도서 정보 view 화면에서(입력한 정보가 저장된 상태) 활성화되는 버튼 END -->
                                 
                                <!-- 승인 완료 이후 도서 목록에서 들어왔을 때 하단 버튼 START -->
                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">수정하기</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray s_open_popup">판매중지요청</button>
                                </div>
                                <!-- 승인 완료 이후 도서 목록에서 들어왔을 때 하단 버튼 END -->
                                

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
function checkFile(event) {
  const file = event.target.files[0];
  const reader = new FileReader();
  reader.onloadend = function() {
    const content = reader.result;
    const sizeInBytes = content.length;
    const sizeInKilobytes = sizeInBytes / 1024;
    console.log(`File size: ${sizeInKilobytes} KB`);
    $("#file_size").html(byteCalculation(sizeInBytes))
  }
  reader.readAsText(file);


        var imageForm = new FormData();
        imageForm.append("file", file);
        imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
        imageForm.append("fileName", file.name);


//  $.ajax({ 
//             url: "https://prd-dplus-bos-krc.azurewebsites.net/System/FileUpload"
 



}

function AzureUpload(a,b,c){

            $.ajax({
                url: "https://prd-dplus-bos-krc.azurewebsites.net/System/FileUpload",
                type: "POST",
                data: imageForm,
                async: false,
                success: function (data) {
                    console.log(data)
                    
                   // 아래가 Data 값.. 
                    //thumbnails/DurannoPlus.Web.Bos/CM/Content/78C644E4-CA8C-4D00-B380-824B2E381C78/20230428114040_d6e10270-2f1c-44cc-9b0c-edddcd7af777.허현.jpg
                    
                    // if (editor != null) {
                    //     $(editor).summernote('pasteHTML', "<img src='" + "@Configuration.GetSection("AzureUrl").Value" + data + "' style='width:200px;' />");
                    // }

                    // if (imageType == "main") {
                    //     fileData = "@Configuration.GetSection("AzureUrl").Value" + data;
                    // } else if (imageType == "thumbnail") {
                    //     fileData2 = "@Configuration.GetSection("AzureUrl").Value" + data;
                    // } else if (imageType == "webView") {
                    //     fileData4 = "@Configuration.GetSection("AzureUrl").Value" + data;
                    // } else if (imageType == "promotion") {
                    //     fileData3 = "@Configuration.GetSection("AzureUrl").Value" + data;
                    // } else if (imageType == "AudioThumnail") {
                    //     fileData6 = "@Configuration.GetSection("AzureUrl").Value" + data;
                    // } else if (imageType == "ClassThumnail") {
                    //     fileData7 = "@Configuration.GetSection("AzureUrl").Value" + data;
                    // } else if (imageType == "file") {
                    //     AttachFileData[i] = "@Configuration.GetSection("AzureUrl").Value" + data;
                    //     i++;
                    // }

                },
                contentType: false,
                processData: false,
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    if (errorThrown == "Unauthorized") {

                        alertBox("인증 기한 만료. 로그인 페이지로 돌아갑니다.");
                       // location.href = "/Account/Login";
                    }
                    else {
                        alertBox("error : " + textStatus);
                    }
                }

            }); 

    }

 //파일 등록 열기6 (도서)
    function FileOpenMedia() {


        $("#file-uploaderMedia").dxFileUploader({
            selectButtonText: "파일 선택",
            accept: "*",
            uploadMode: "UseForm",
            multiple: false,
            chunkSize: 200000,
            onValueChanged: function (e) {



                if (e.value.length != 0) {


                    file = [];

                    file[0] = e.value;
                    file[1] = "book";

                    fileAll[4] = file;

                    var f = e.value;

                    BookFileName = f[0].name;
                    booksize = f[0].size;
                    //파일 사이즈 바인딩
                    var size = byteCalculation(f[0].size);
                    $("#fileSize").html(size);


                        var last = e.value[0].name.substring(e.value[0].name.lastIndexOf('.') + 1);

                    if ($("input[name='fileType']:checked").val() == "epub") { // 001

                        if (last != "epub") {
                            alertBox("EPUB 파일을 등록해주세요.");
                            $("#file-uploaderMedia").dxFileUploader("instance").reset();
                            $("#fileSize").html("");

                        }
                    } else if ($("input[name='fileType']:checked").val() == "pdf") {  //002 

                        if (last != "pdf") {
                            alertBox("PDF 파일을 등록해주세요.");
                            $("#file-uploaderMedia").dxFileUploader("instance").reset();
                            $("#fileSize").html("");

                        }
                    }
                    // }else if ($("input[name='fileType']:checked").val() == "004") {

                    //     if (last != "zip") {
                    //         alertBox("ZIP 파일을 등록해주세요.");
                    //         $("#file-uploaderMedia").dxFileUploader("instance").reset();
                    //         $("#fileSize").html("");

                    //     } else {

                    //         mediafile = [];
                    //         mediafile[0] = f[0];
                    //         mediafile[1] = "zip";
                    //         mediafile[2] = f[0].size;
                    //         handleFileSelect();
                    //         mediaAll.push(mediafile);
                    //     }
                    // }

                } else {
                    fileAll.splice(4, 1);
                    mediaAll = [];
                    BookFileName = "";
                    booksize = 0;
                    $("#fileSize").html("");

                }

                var f = e.value;

        //    @*     if (f.length > 0) {
        //             BookFileName = f[0].name;

        //             booksize = f[0].size;
        //             //파일 사이즈 바인딩
        //             var size = byteCalculation(f[0].size);
        //             $("#fileSize").html(size);

        //         } else {

        //             BookFileName = "";
        //             booksize = 0;
        //             $("#fileSize").html("");

        //          //   $("#dropzone-image3").attr("src", "");

        //         };*@
            }
        });

    }
FileOpenMedia()
</script>

<%' 혜지가 만들어 준 유효성 검사 form %>

    <script>
 

        // 유효성 검사
        function form_check(){

            console.log("form_check 시작 ")
   //              return false; 

            

            const b_name=document.getElementById("b_name");
            const sub_name=document.getElementById("sub_name");
            //const brand_name=document.getElementById("brand_name");
            //const author_name=document.getElementById("author_name");
            const author_info=document.getElementById("author_info");
            const b_list_price=document.getElementById("b_list_price");
            const eb_list_price=document.getElementById("eb_list_price");
            const isbn_num=document.getElementById("isbn_num");
            const e_isbn_num=document.getElementById("e_isbn_num");
            const page_num=document.getElementById("page_num");

            const book_info=document.getElementById("book_info");
            const book_list=document.getElementById("book_list");
            const category_1=document.getElementById("category_1");
            const category_2=document.getElementById("category_2");

            const b_file_name=document.getElementById("b_file_name");
            const t_file_name=document.getElementById("t_file_name");

            const b_price=document.getElementById("b_price");
            
                // test region
            /* 도서파일 입력 여부 */
            if(b_file_name.value==""){
                alert("도서파일을 입력하세요.");
                b_file_name.focus();
                return false;
            }
        
                // test region

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


             /* 저자 입력 여부 */
             if(author_info.value==""){
                alert("저자를 입력하세요.");
                author_info.focus();
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


        $(document).ready(function () {
            $('#t_b_list_all').DataTable({
                aaSorting : [],
                "searching":false,

                dom:'Bfrtip',
                
                buttons: [
                    {
                        extend: 'excel'
                        ,text: '엑셀다운로드'
                        ,filename: '콘텐츠 목록'
				        ,title: '엑셀파일 안에 쓰일 제목'
                    },
                ],

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
            

            $('input[name="bookDate"],input[name="ebookDate"],input[name="endDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                autoUpdateInput: false,
                
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
            
            
        });
    </script>

</body>

</html>
