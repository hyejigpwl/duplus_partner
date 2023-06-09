<%@ codepage="65001" language="VBScript" %>
<%
' position code gnb 표시용 
Pcode = "0202"
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 
    <title>두플러스 콘텐츠 파트너 시스템</title>
    <link rel="icon" href="//www.duranno.com/duplus/img/core/favicon-16x16.png" type="/duranno/image/x-icon"> <!-- 파비콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"><!-- //구글 아이콘폰트 --> 
<!-- include libraries(jQuery, bootstrap) -->

<!--script src="https://code.jquery.com/jquery-3.5.1.min.js"></!--script-->



    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="../js/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet">
    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <!-- include summernote css/js -->
    <script src="../js/summernote-0.8.18-dist/summernote.min.js"></script>
 


<%
' 상품 코드가 있으면 수정모드.   

guid = Uguid()

cmsID = request("cmsID")
if cmsID <> ""  then
    paramInfo = Array( _
    dbh.mp("@cms_contentno",	advarchar,	10,	cmsID) )	
    set rs=dbh.RunSPReturnRS("[PrCMS_TbCms_Content_cms_id_Q]",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    CMS_ID=rs("CMS_ID")
    CMS_Contentno=rs("CMS_Contentno")  ' contentno
    CMS_State_code=rs("CMS_State_code") ' 상태코드 
    'CMS_CodeNameKor=rs("CodeNameKor") ' 상태명 
    CMS_div1=rs("CMS_div1") '  구분 
    'CMS_CodeNameKor=rs("CodeNameKor") ' 구분명 (일반도서, 장르도서, 오디오북, 동영상)
    CMS_File_div=rs("CMS_File_div")  ' 파일타입 
    'CodeNameKor=rs("R3.CodeNameKor")    ' 파일타입명 
    CMS_SerisesYN=rs("CMS_SerisesYN")  ' 시리즈 여부  1 Y, 0 N
    CMS_Title=rs("CMS_Title")  
    CMS_Sub_Title=rs("CMS_Sub_Title")  ' 부제
    CMS_ORG_tITLE=rs("CMS_ORG_tITLE")  '원서명 
    CMS_Publish=rs("CMS_Publish") ' 출판사 
    CMS_BRAND=rs("CMS_BRAND")  '브랜드 
    CMS_Paper_Pub_Day=rs("CMS_Paper_Pub_Day") ' 종이책 출간일 
    CMS_Digital_Pub_Day=rs("CMS_Digital_Pub_Day") ' 전자책 출간일 
    CMS_Paper_Price=rs("CMS_Paper_Price") ' 종이책 정가 
    CMS_Digital_Price=rs("CMS_Digital_Price") ' 전자책 정가 
    CMS_ISBN=rs("CMS_ISBN")
    CMS_EISBN=rs("CMS_EISBN")
    CMS_PAGE=rs("CMS_PAGE") ' 종이책 페이지 
    CMS_DIV2=rs("CMS_DIV2") ' 도서구분 
    'R4.CodeNameKor=rs("R4.CodeNameKor")   ' 국내/ 번역 
    CMS_ContentText=rs("CMS_ContentText") ' 책소개 
    CMS_MarketingCopyText=rs("CMS_MarketingCopyText")  '출판사 서평 
    CMS_ContentList=rs("CMS_ContentList")  ' 목차 
    CMS_File_Link=rs("CMS_File_Link")   ' 도서파일 링크 
    CMS_FILE_SIZE = rs("CMS_FILE_SIZE")
    CMS_Download_YN=rs("CMS_Download_YN")  ' 다운로드 여부  YN 
    CMS_MAIN_IMG_LINK=rs("CMS_MAIN_IMG_LINK")  ' 메인이미지 
    CMS_SUB_IMG_LINK=rs("CMS_SUB_IMG_LINK") ' 서브 이미지 
    CMS_Trial_Content_Link=rs("CMS_Trial_Content_Link") ' 체험판 
    CMS_SAL_DIV=rs("CMS_SAL_DIV") '  판매형태  (전체, 소장, 대여 )  구독은 필수 
    CMS_SAL_PRICE=rs("CMS_SAL_PRICE")  ' 판매가 
    CMS_RENTAL_PRICE=rs("CMS_RENTAL_PRICE") ' 대여가 
    CMS_RENTAL_DAY=rs("CMS_RENTAL_DAY")  ' 대여기간 일수 int 
    CMS_SERVICE_YN=rs("CMS_SERVICE_YN") '  서비스 여부  0 즉시 ,1 지정 
    CMS_SERVICE_DAY=rs("CMS_SERVICE_DAY")  ' 서비스 시작일 
    CMS_MEMO=rs("CMS_MEMO")   ' 메모 (전달 사항 )
    CMS_Resouce_YN=rs("CMS_Resouce_YN")   '리소스 제작 위탁 여부 (0 부, 1 위탁) 
    CMS_Exclusive_day=rs("CMS_Exclusive_day")   ' 독점기간 (일수 int  )  화면에 표시 
    CMS_EXCLUSIVE_DATE=rs("CMS_EXCLUSIVE_DATE")  '  환산기간 
    CMS_Sup_Brand=rs("CMS_Sup_Brand")  ' 공급처 
    CMS_SAL_SUP_PRICE=rs("CMS_SAL_SUP_PRICE")   ' 소장공급가 
    CMS_RENTAL_SUP_PRICE=rs("CMS_RENTAL_SUP_PRICE")  '대여 공급가 
    CMS_SUB_SUP_PRICE=rs("CMS_SUB_SUP_PRICE")  ' 구독 공급가 
    CMS_SUB_SUP_COUNT=rs("CMS_SUB_SUP_COUNT")  ' 구독 정산 기준 수량 
    CMS_DELFLAG=rs("CMS_DELFLAG")  ' 삭제 여부 1 삭제 
    CMS_EDITDATE=rs("CMS_EDITDATE")  ' 수정일 
    CMS_WDATE=rs("CMS_WDATE")  ' 작성일 
    end if 
rs.close 



    '저자select 
    'AUT_ID,aut_div, CodeNameKor, AUT_NAME, AUT_DTL from TbCMS_Author 
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	cmsID) )	
    set rs=dbh.RunSPReturnRS("PrCMS_Author_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    AuthorList = rs.getRows()
    end if 
    rs.close   
' 주제별 카테고리 
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	cmsID) )	
    set rs=dbh.RunSPReturnRS("PrCMS_Category_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    CATE1 = cInt(RS(0))
    ELSE 
    CATE1 = 0
    end if 
    rs.close   
' 대상별  카테고리 
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	cmsID),  dbh.mp("@GUBN",	advarchar,	10,	2))	
    set rs=dbh.RunSPReturnRS("PrCMS_Category_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    CATE2 = cInt(RS(0))
    ELSE 
    CATE2 = 0
    end if 
    rs.close     
' 검색 키워드 PrCMS_Keyword_Q  
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	cmsID) )	
    set rs=dbh.RunSPReturnRS("PrCMS_Keyword_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    KWlist = rs.getRows()
    end if 
    rs.close   


end if 

 



' paramInfo = Array( _
' 			dbh.mp("@mct_sid",	advarchar,	10,	sid_num), _	
' 			dbh.mp("@mbr_num",	advarchar,	10,	mbr_num), _
' 			dbh.mp("@ord_div",	adchar,		1,		"C"))	
'브랜드 목록 
paramInfo = Array( _
dbh.mp("@ContentPublisherNo",	advarchar,	10,	CPNum) )	

set rs=dbh.RunSPReturnRS("PrCMS_PublisherBrand",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
brandList = rs.getRows()
end if 
rs.close  

'저자 공통코드 

paramInfo = Array( _
dbh.mp("@Gcode",	advarchar,	10,	"A01") )	
set rs=dbh.RunSPReturnRS("PrCMS_CommonCode_Q",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
 authCodeList = rs.getRows()
end if 
rs.close   

' 검색 키워드 목록 
'PrCM_ContentSearchKeyword_Q '001'
paramInfo = Array( _
dbh.mp("@ContentTypeCode",	advarchar,	3,	"001") )	
set rs=dbh.RunSPReturnRS("PrCM_ContentSearchKeyword_Q",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
 srList = rs.getRows()
end if 
rs.close   

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

set rs=dbh.RunSPReturnRS("PrCMS_ContentCategoryType_2","" , conn_duplus)	
if not (rs.eof or rs.bof) then 
category2 = rs.getRows()
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
                                                <th scope="row">구분  </th>
                                                <td>
                                                    <span class="radio">
                                                        <input type="radio" name="category" id="c_normal" value="1" <%=IIF(CMS_div1=1,"checked","")%>>
                                                        <label for="c_normal">일반도서</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="c_genre" name="category" value="2" <%=IIF(CMS_div1=2,"checked","")%>>
                                                        <label for="c_genre">장르도서</label>
                                                    </span>

                                                    <span class="radio">
                                                        <input type="radio" id="c_audio" name="category" value="3" <%=IIF(CMS_div1=3,"checked","")%>>
                                                        <label for="c_audio">오디오북</label>
                                                    </span>

                                                    <span class="radio">
                                                        <input type="radio" id="c_video" name="category" value="4" <%=IIF(CMS_div1=4,"checked","")%>>
                                                        <label for="c_video">동영상</label>
                                                    </span>
                                                </td>
                                                <th scope="row">상품코드</th>
                                                <td><span id="b_code"><%=IIF(cms_contentno <> "",cms_contentno,"not register")%></span></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">파일 타입 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <span class="radio">
                                                        <input type="radio" id="type_epub" name="file_type"  value="1" <%=IIF(CMS_File_div=1,"checked","")%>>
                                                        <label for="type_epub">EPUB</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="type_pdf" name="file_type" value="2" <%=IIF(CMS_CMS_File_divdiv1=2,"checked","")%>>
                                                        <label for="type_pdf">PDF</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>시리즈 여부 - 미개발</th>
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
                                                    <input type="text" id="b_name" name="b_name"  value="<%=CMS_Title%>">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>부제 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="sub_name" name="sub_name" value="<%=CMS_Sub_Title%>">
                                                </td>
                                            </tr>
                                            <tr class="long_input">
                                                <th>원서명</th>
                                                <td colspan="3">
                                                    <input type="text" name="origin_name" value="<%=CMS_ORG_tITLE%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>출판사</th>
                                                <td>
                                                    <span id="publisher"><%=CPName%></span>
                                                </td>
                                                <th>브랜드명 <span class="orange">*</span></th>
                                                <td class="brand btn_add_wrap">
                                                    <select name="sel_brand" style="width:200px;">
                                                    <%if isArray(brandList) then %>
                                                            <option value="0">선택해 주세요</option>
                                                            <% for i = 0 to Ubound(brandList,2)%>
                                                            <option value="<%=brandList(0,i)%>"  data-value="<%=brandList(2,i)%>" <%=iif(CMS_BRAND=brandList(0,i),"selected","")%> ><%=brandList(1,i)%></option>
                                                            <%
                                                        next
                                                    end if %>
                                                    
                                                    </select>
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
                                                    <%if  not isArray(AuthorList) then   ' 저자 목록이 없으면 ..%>
                                                    <select name="sel_author_name">
                                                        <%if isArray(authCodeList) then %>
                                                            
                                                            <% for i = 0 to Ubound(authCodeList,2)%>
                                                            <option value="<%=authCodeList(0,i)%>" <%=iif(111=authCodeList(0,i),"selected","")%>  ><%=authCodeList(1,i)%></option>
                                                            <%
                                                        next
                                                    end if %>
                                                    </select>
                                                    <input type="text"  name="author_info" value="테스트북저자">

                                                    <button type="button" class="btn_line gray_btn_line a_open_popup">소개내용</button>

                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                    <%else ' 저자 목록 이 있다면 ... %>
                                                    <%for ii = 0 to ubound(AuthorList,2)%>
                                                    <div>
                                                        <select name="sel_author_name">
                                                            <%if isArray(authCodeList) then %>
                                                                <% for i = 0 to Ubound(authCodeList,2)%>
                                                                <option value="<%=authCodeList(0,i)%>" <%=iif(AuthorList(1,ii)=authCodeList(0,i),"selected","")%>  ><%=authCodeList(1,i)%></option>
                                                                <%
                                                            next
                                                        end if %>
                                                        </select>
                                                        <input type="text"   name="author_info" value="<%=AuthorList(3,ii)%>" data-value="<%=AuthorList(0,ii)%>">
                                                        <input type="hidden" name="author_desc" value="<%=AuthorList(4,ii)%>">

                                                        <button type="button" class="btn_line gray_btn_line a_open_popup">소개내용</button>

                                                        <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                        </div>
                                                    <%next %>



                                                    <%end if %>
                                                </td>
                                            </tr>

                                            <tr>
                                                <th>종이책 출간일 <span class="orange">*</span></th>
                                                <td class="regist_date">
                                                    <input type="text" name="bookDate" value="<%=CMS_Paper_Pub_Day%>" autocomplete="off"> 
                                                </td>
                                                <th>전자책 출간일 <span class="orange">*</span></th>
                                                <td class="regist_date">
                                                    <input type="text" name="ebookDate" value="<%=CMS_Digital_Pub_Day%>" autocomplete="off">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>종이책 정가 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="b_list_price" name="b_list_price" value="<%=CMS_Paper_Price%>">
                                                    원
                                                </td>
                                                <th>전자책 정가 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="eb_list_price" name="eb_list_price" value="<%=CMS_Digital_Price%>">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>ISBN 13자리 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="isbn_num" name="isbn_num" value="<%=CMS_ISBN%>">
                                                </td>
                                                <th>E-ISBN 13자리 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="e_isbn_num" name="e_isbn_num" value="<%=CMS_EISBN%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>페이지 수 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <input type="text" id="page_num" name="page_num" value="<%=CMS_PAGE%>"> Pages
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>도서 구분 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <span class="radio">
                                                        <input type="radio" name="book_devision" id="book_domestic" value="domestic_book" <%=iif(CMS_DIV2 = "001","","")%>>
                                                        <label for="book_domestic">국내서  <%=CMS_DIV2%></label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="book_translation" name="book_devision" value="translation_book" <%=iif(CMS_DIV2 = "002","","")%>>
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
                                                    <div class="summernote" id="CMS_ContentText"><%=CMS_ContentText%></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">출판사서평</th>
                                                <td colspan="3">
                                                <div class="summernote" id="CMS_MarketingCopyText"><%=CMS_MarketingCopyText%></div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">목차 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <div class="summernote" id="CMS_ContentList"><%=CMS_ContentList%></textarea>
                                                </td>
                                            </tr>
                                           
                                            
                                            <tr>
                                                <th>카테고리1 (주제별) <span class="orange">*</span></th>
                                                <td class="cat1 btn_add_wrap">
                                                    <!--<input type="text" id="category_1" name="category_1">-->

                                                    <select name="category_1" id="category_1" style="width:200px;">
                                                    <%if isArray(category1) then %>
                                                            <option value="0" <%=IIF(CATE1=0,"selected","")%>>선택해 주세요</option>
                                                            <% for i = 0 to Ubound(category1,2)%>
                                                            <option value="<%=category1(0,i)%>"  <%=IIF(CATE1=category1(0,i),"selected","")%>><%=category1(1,i)%></option>
                                                            <%
                                                        next
                                                    end if %>
                                                    
                                                    </select>
                                        
                                                    <!--button type="button" class="btn_line b_btn_line add_btn">+ 추가</!--button>
                                                    <input type="text"  name="category_1_hidden" value=""/-->
                                                </td>
                                                <th>카테고리2 (대상별) <span class="orange">*</span></th>
                                                <td class="cat2 btn_add_wrap">
                                                    <!--<input type="text" id="category_2" name="category_2">-->

                                                    <select name="category_2" id="category_2" style="width:200px;">
                                                    <%if isArray(category2) then %>
                                                            <option value="0" <%=IIF(CATE2=0,"selected","")%>>선택해 주세요</option>
                                                            <% for i = 0 to Ubound(category2,2)%>
                                                            <option value="<%=category2(0,i)%>"  <%=IIF(CATE2=category2(0,i),"selected","")%>><%=category2(1,i)%></option>
                                                            <%
                                                        next
                                                    end if %>
                                                    </select>
                                        
                                                    <!--button type="button" class="btn_line b_btn_line add_btn">+ 추가</!--button>
                                                    <input type="text"  name="category_2_hidden" value=""/-->
                                                </td>
                                            </tr>
                                            <!--tr>
                                                <th>카테고리3 (상황별)</th>
                                                <td colspan="3">
                                                    <span id="category_3">(비활성/추후)</span>
                                                </td>
                                            </!--tr-->
                                            <tr>
                                                <th>검색 키워드</th>
                                                <td colspan="3" class="key btn_add_wrap">
                                                    <!--<input type="text" name="search_key"> -->

                                                    <select name="search_key" id="search_key" style="width:200px;">
                                                    <%if isArray(srList) then %>
                                                            <option value="0" selected>선택해 주세요</option>
                                                            <% for i = 0 to Ubound(srList,2)%>
                                                            <option value="<%=srList(0,i)%>"  ><%=srList(2,i)%></option>
                                                            <%
                                                        next
                                                    end if %>
                                                    </select>
                                        
                                                    <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                    <input type="text"  name="search_key_hidden" value=""/>
                                                    <%if isArray(KWlist) then %>
                                                        <% for i = 0 to Ubound(KWlist,2)%> 
                                                        <input type="text"  name="KWlist" class="add_ipt"  value="<%=KWlist(2,i)%>" />
                                                        <button type="button" class="btn_linke g_btn_line remove_btn"> - 삭제</button>
                                                        <%next
                                                    end if %>
                                                </td>
                                                
                                            </tr>
                                            <tr>
                                                <th>홍보 영상</th>
                                                <td>
                                                    <select name="pro_video_sel">
                                                        <option value="youtube" selected>유튜브</option>
                                                        <option value="vimeo">비메오</option>
                                                    </select>
                                                    <input type="text" name="video_url" value="test_비디오 경로 ">
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

                                <!--div class="resource table_wrap">
                                    <h3 class="sub_t">리소스</h3>

                                  <div-- class="form-group row">
                                    <label class="col-form-label col-md-2" style="float: left;text-align: center;"><span style="color: red">*</span>파일</label>
                                    <div class="col-md-4" id="file-uploaderMedia" style=" padding: 0px; margin-top: -12px;"></div>
                                    <label class="col-md-1" id="MediaName"></label>
                                    <div class="col-md-5">
                                        <a class="btn btn-primary btn-sm" id="mediaDownload" href="#">다운로드</a>
                                    </div>
                                </div-->

                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">src="https://prd-dplus-bos-krc.azurewebsites.net/HTML/ <span class="orange">*</span></th>
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
                                                    <span id="file_size"><%=iif(CMS_FILE_SIZE <> "" ,filesizechk(CMS_FILE_SIZE),"(자동으로 뿌림)")%></span>
                                                     
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">표지 <span class="orange">*</span></th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" id="t_file_name" name="t_file_name" readonly>
                                                    <label for="t_file">파일선택</label>
                                                    <input type="file" id="t_file" class="under_1mb" accept=".jpg,.png" onchange="setThumbnail(event)">
                                                    <div id="image_container" class="thumb_img">
                                                    <%if CMS_MAIN_IMG_LINK <> "" THEN %>
                                                        <IMG SRC="<%=CMS_MAIN_IMG_LINK%>" width="200" />
                                                    <%END IF %>
                                                    </div>
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
                                                    <%if CMS_SUB_IMG_LINK <> "" THEN %>
                                                        <IMG SRC="<%=CMS_SUB_IMG_LINK%>" width="200" />
                                                    <%END IF %>
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
 
        //DevExtream Editor 로드
    function EditorLoad() {
        $('.summernote').summernote({
            enterHtml: '<br>',
            lineWrapping: false,
            disableDragAndDrop: true,
            height: "300px",
            width: "83%", // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정,
            toolbar: [
                // [groupName, [list of button]]
                ['fontname', ['fontname']],
                ['fontsize', ['fontsize']],
                ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                ['color', ['forecolor', 'color']],
                ['table', ['table']],
                ['para', ['ul', 'ol', 'paragraph']],
                ['height', ['height']],
                ['insert', ['picture', 'link']],
                ['view', ['codeview', 'help']]
            ],
            fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
            fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
            callbacks: {
                onPaste: function (e) {
                    var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
                    e.preventDefault();
                    bufferText = bufferText.replace(/\r?\n/g, '<br>');
                    document.execCommand('insertHtml', false, bufferText);
                },

                onImageUpload: function (files) {

                    for (i = 0; i < files.length; i++) {

                        var imageForm = new FormData();
                        imageForm.append("file", files[i]);
                        imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
                        imageForm.append("fileName", files[i].name);
                        AzureUpload(imageForm,null, this);

                    }
                }
            }

        });
        // $('.summernote').summernote({
        //     lineWrapping: true,
        //     disableDragAndDrop: true,
        //     height: "300px",
        //     width: "83%", // 에디터 높이
        //     minHeight: null,             // 최소 높이
        //     maxHeight: null,             // 최대 높이
        //     focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
        //     lang: "ko-KR",					// 한글 설정
        //     placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정,
        //     toolbar: [
        //         // [groupName, [list of button]]
        //         ['fontname', ['fontname']],
        //         ['fontsize', ['fontsize']],
        //         ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
        //         ['color', ['forecolor', 'color']],
        //         ['table', ['table']],
        //         ['para', ['ul', 'ol', 'paragraph']],
        //         ['height', ['height']],
        //         ['insert', ['picture', 'link']],
        //         ['view', ['codeview', 'help']]
        //     ],
        //     fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
        //     fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
        //     callbacks: {

        //         onPaste: function (e) {
        //             var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
        //             e.preventDefault();
        //             bufferText = bufferText.replace(/\r?\n/g, '<br>');
        //             document.execCommand('insertHtml', false, bufferText);
        //         },
        //         onImageUpload: function (files) {

        //             for (i = 0; i < files.length; i++) {

        //                 var imageForm = new FormData();
        //                 imageForm.append("file", files[i]);
        //                 imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
        //                 imageForm.append("fileName", files[i].name);
        //                 AzureUpload(imageForm, null,this);

        //             }
        //         }
        //     }

        // });

        // $('#summernote2').summernote({
        //     lineWrapping: true,
        //     disableDragAndDrop: true,
        //     height: "300px",
        //     width: "83%", // 에디터 높이
        //     minHeight: null,             // 최소 높이
        //     maxHeight: null,             // 최대 높이
        //     focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
        //     lang: "ko-KR",					// 한글 설정
        //     placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정,
        //     toolbar: [
        //         // [groupName, [list of button]]
        //         ['fontname', ['fontname']],
        //         ['fontsize', ['fontsize']],
        //         ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
        //         ['color', ['forecolor', 'color']],
        //         ['table', ['table']],
        //         ['para', ['ul', 'ol', 'paragraph']],
        //         ['height', ['height']],
        //         ['insert', ['picture', 'link']],
        //         ['view', ['codeview', 'help']]
        //     ],
        //     fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
        //     fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
        //     callbacks: {

        //         onPaste: function (e) {
        //             var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
        //             e.preventDefault();
        //             bufferText = bufferText.replace(/\r?\n/g, '<br>');
        //             document.execCommand('insertHtml', false, bufferText);
        //         },
        //         onImageUpload: function (files) {

        //             for (i = 0; i < files.length; i++) {

        //                 var imageForm = new FormData();
        //                 imageForm.append("file", files[i]);
        //                 imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
        //                 imageForm.append("fileName", files[i].name);
        //                 AzureUpload(imageForm,null,this);

        //             }
        //         }
        //     }

        // });

        // $('#summernote3').summernote({
        //     lineWrapping: true,
        //     disableDragAndDrop: true,
        //     height: "300px",
        //     width: "83%", // 에디터 높이
        //     minHeight: null,             // 최소 높이
        //     maxHeight: null,             // 최대 높이
        //     focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
        //     lang: "ko-KR",					// 한글 설정
        //     placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정,
        //     toolbar: [
        //         // [groupName, [list of button]]
        //         ['fontname', ['fontname']],
        //         ['fontsize', ['fontsize']],
        //         ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
        //         ['color', ['forecolor', 'color']],
        //         ['table', ['table']],
        //         ['para', ['ul', 'ol', 'paragraph']],
        //         ['height', ['height']],
        //         ['insert', ['picture', 'link']],
        //         ['view', ['codeview', 'help']]
        //     ],
        //     fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
        //     fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
        //     callbacks: {

        //         onPaste: function (e) {
        //             var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
        //             e.preventDefault();
        //             bufferText = bufferText.replace(/\r?\n/g, '<br>');
        //             document.execCommand('insertHtml', false, bufferText);
        //         },
        //         onImageUpload: function (files) {

        //             for (i = 0; i < files.length; i++) {

        //                 var imageForm = new FormData();
        //                 imageForm.append("file", files[i]);
        //                 imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
        //                 imageForm.append("fileName", files[i].name);
        //                 AzureUpload(imageForm,null,this);

        //             }
        //         }
        //     }

        // });
        // $('#summernote4').summernote({
        //     lineWrapping: true,
        //     disableDragAndDrop: true,
        //     height: "300px",
        //     width: "83%", // 에디터 높이
        //     minHeight: null,             // 최소 높이
        //     maxHeight: null,             // 최대 높이
        //     focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
        //     lang: "ko-KR",					// 한글 설정
        //     placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정,
        //     toolbar: [
        //         // [groupName, [list of button]]
        //         ['fontname', ['fontname']],
        //         ['fontsize', ['fontsize']],
        //         ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
        //         ['color', ['forecolor', 'color']],
        //         ['table', ['table']],
        //         ['para', ['ul', 'ol', 'paragraph']],
        //         ['height', ['height']],
        //         ['insert', ['picture', 'link']],
        //         ['view', ['codeview', 'help']]
        //     ],
        //     fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
        //     fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
        //     callbacks: {

        //         onPaste: function (e) {
        //             var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
        //             e.preventDefault();
        //             bufferText = bufferText.replace(/\r?\n/g, '<br>');
        //             document.execCommand('insertHtml', false, bufferText);
        //         },
        //         onImageUpload: function (files) {

        //             for (i = 0; i < files.length; i++) {

        //                 var imageForm = new FormData();
        //                 imageForm.append("file", files[i]);
        //                 imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
        //                 imageForm.append("fileName", files[i].name);
        //                 AzureUpload(imageForm, null,this);

        //             }
        //         }
        //     }

        // });
        // $('#summernote5').summernote({
        //     lineWrapping: true,
        //     disableDragAndDrop: true,
        //     height: "300px",
        //     width: "83%", // 에디터 높이
        //     minHeight: null,             // 최소 높이
        //     maxHeight: null,             // 최대 높이
        //     focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
        //     lang: "ko-KR",					// 한글 설정
        //     placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정,
        //     toolbar: [
        //         // [groupName, [list of button]]
        //         ['fontname', ['fontname']],
        //         ['fontsize', ['fontsize']],
        //         ['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
        //         ['color', ['forecolor', 'color']],
        //         ['table', ['table']],
        //         ['para', ['ul', 'ol', 'paragraph']],
        //         ['height', ['height']],
        //         ['insert', ['picture', 'link']],
        //         ['view', ['codeview', 'help']]
        //     ],
        //     fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', '맑은 고딕', '궁서', '굴림체', '굴림', '돋움체', '바탕체'],
        //     fontSizes: ['8', '9', '10', '11', '12', '14', '16', '18', '20', '22', '24', '28', '30', '36', '50', '72'],
        //     callbacks: {

        //         onPaste: function (e) {
        //             var bufferText = ((e.originalEvent || e).clipboardData || window.clipboardData).getData('Text');
        //             e.preventDefault();
        //             bufferText = bufferText.replace(/\r?\n/g, '<br>');
        //             document.execCommand('insertHtml', false, bufferText);
        //         },
        //         onImageUpload: function (files) {

        //             for (i = 0; i < files.length; i++) {

        //                 var imageForm = new FormData();
        //                 imageForm.append("file", files[i]);
        //                 imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
        //                 imageForm.append("fileName", files[i].name);
        //                 AzureUpload(imageForm, null,this);

        //             }
        //         }
        //     }

        // });


    }
 
    </script>




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
      };


      

        $(document).ready(function () {
          // $('.summernote').summernote();

          EditorLoad();
            

            $('input[name="bookDate"],input[name="ebookDate"],input[name="serviceDate"]').daterangepicker(
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
            var fieldHtml2='<div><select name="sel_author_name" id="add_sel_author"><option value="author" selected>저자</option><option value="translator">역자</option><option value="painter">그린이</option></select><input type="text" class="add_ipt"><button type="button" class="btn_line gray_btn_line mg a_open_popup">소개내용</button><button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';

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
                var thisVal = $(this).prev().val();
                if(thisVal ==0){return;}
                var thistxt = $("#category_1 option:selected").text();
                var fieldHtml='<div><input type="text" name="" class="add_ipt" value="'+thistxt+'" data-value="'+thisVal+'"><button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';
                var curVal = $("input[name=category_1_hidden]").val()
                if(curVal.indexOf(thisVal) == -1){
                    $("input[name=category_1_hidden]").val(curVal+thisVal+',','') 
                    $(".cat1.btn_add_wrap").append(fieldHtml);
                }
            });  

            $(".cat1.btn_add_wrap").on('click', '.remove_btn', function(e){                
                e.preventDefault();
                var thisVal = $(this).prev().data("value");
                var curVal = $("input[name=category_1_hidden]").val() 
                $("input[name=category_1_hidden]").val(curVal.replace(thisVal+',','') )
                $(this).parent('div').remove();
                
            });

            // 카테고리2 추가, 삭제 버튼
            $(".cat2 .add_btn").click(function(){
                var thisVal = $(this).prev().val();
                if(thisVal ==0){return;}
                var thistxt = $("#category_2 option:selected").text();
                var fieldHtml='<div><input type="text" name="" class="add_ipt" value="'+thistxt+'" data-value="'+thisVal+'"><button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';
                var curVal = $("input[name=category_2_hidden]").val()
                if(curVal.indexOf(thisVal) == -1){
                    $("input[name=category_2_hidden]").val(curVal+thisVal+',','') 
                    $(".cat2.btn_add_wrap").append(fieldHtml);
                }
            });

            // 검색 추가 
            $(".key .add_btn").click(function(){
                var thisVal = $(this).prev().val();
                if(thisVal ==0){return;}
                var thistxt = $("#search_key option:selected").text();
                var fieldHtml='<div><input type="text" name="" class="add_ipt" value="'+thistxt+'" data-value="'+thisVal+'"><button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';
                var curVal = $("input[name=search_key_hidden]").val()
                if(curVal.indexOf(thisVal) == -1){
                    $("input[name=search_key_hidden]").val(curVal+thisVal+',','') 
                    $(".key.btn_add_wrap").append(fieldHtml);
                }
            });
            // 검색 삭제 
            $(".key.btn_add_wrap").on('click', '.remove_btn', function(e){                
                e.preventDefault();
                var thisVal = $(this).prev().data("value");
                var curVal = $("input[name=search_key_hidden]").val() 
                $("input[name=search_key_hidden]").val(curVal.replace(thisVal+',','') )
                $(this).parent('div').remove();
                
            });


            // $(".cat2 .remove_btn").click(function(){
            //     $(this).parent('div').remove();
            // })

            $(".cat2.btn_add_wrap").on('click', '.remove_btn', function(e){
                e.preventDefault();
                var thisVal = $(this).prev().data("value");
                var curVal = $("input[name=category_2_hidden]").val() 
                $("input[name=category_2_hidden]").val(curVal.replace(thisVal+',','') )
                $(this).parent('div').remove();
            });


            // 저자 소개내용 modal 띄우기
            $(".btn_add_wrap").on('click','.a_open_popup',function(){
                $(".a_modal").css({
                    "display":"block",
                });
                $("body").css({
                    "overflow":"hidden",
                })

                $(".btn_close_popup,.modal .btn_wrap button").click(function(){
                    $(".a_modal").css({
                        "display":"none",
                    });
                    $("body").css({
                        "overflow":"auto",
                    });
                })
            });

            // 판매중지 소개내용 modal 띄우기
            $(".s_open_popup").click(function(){
                $(".s_modal").css({
                    "display":"block",
                });
                $("body").css({
                    "overflow":"hidden",
                })

                $(".btn_close_popup,.modal .btn_wrap button").click(function(){
                    $(".s_modal").css({
                        "display":"none",
                    });
                    $("body").css({
                        "overflow":"auto",
                    });
                })
            });

            // 판매중지에서 기타 텍스트 입력 시 기타 라디오 선택
            $("textarea[id=etc_txt]").on('click',function(){
                $("input:radio[id='etc']").prop("checked",true);
                $("input:radio[id='expire'],input:radio[id='revision']").removeAttr("checked");
            });



                  $('.summernote').summernote();

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
