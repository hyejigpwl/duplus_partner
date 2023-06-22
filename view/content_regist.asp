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
<
<!--script src="https://code.jquery.com/jquery-3.5.1.min.js"></!--script-->



    <link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="../js/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet">
    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <!-- include summernote css/js -->
    <script src="../js/summernote-0.8.18-dist/summernote.min.js"></script>
 <style>
checkbox, .radio {display:inline}
 </style>


<%
' 상품 코드가 있으면 수정모드.   

guid = Uguid()

' init 
' 최초 상태 
CMS_State_code =  1 ' 임시 저장 상태 
CMS_ID = request("CMSID")

if CMS_ID <> ""  then
    paramInfo = Array( _
    dbh.mp("@cms_contentno",	advarchar,	10,	CMS_ID) )	
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
    CMS_Download_YN=trim(rs("CMS_Download_YN"))  ' 다운로드 여부  YN 
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
    CMS_Resouce_YN=trim(rs("CMS_Resouce_YN"))   '리소스 제작 위탁 여부 (0 부, 1 위탁) 
    if isnull(CMS_Resouce_YN) then CMS_Resouce_YN = "0"
    CMS_Exclusive_day=rs("CMS_Exclusive_day")   ' 독점기간 (일수 int  )  화면에 표시 
    'CMS_EXCLUSIVE_DATE=rs("CMS_EXCLUSIVE_DATE")  '  환산기간 
    CMS_Sup_Brand=rs("CMS_Sup_Brand")  ' 공급처 
    CMS_SAL_SUP_PRICE=rs("CMS_SAL_SUP_PRICE")   ' 소장공급가 
    CMS_RENTAL_SUP_PRICE=rs("CMS_RENTAL_SUP_PRICE")  '대여 공급가 
    if isnull(CMS_RENTAL_SUP_PRICE) then CMS_RENTAL_SUP_PRICE = 0
    CMS_SUB_SUP_PRICE=rs("CMS_SUB_SUP_PRICE")  ' 구독 공급가 
    CMS_SUB_SUP_COUNT=rs("CMS_SUB_SUP_COUNT")  ' 구독 정산 기준 수량 
    CMS_DELFLAG=rs("CMS_DELFLAG")  ' 삭제 여부 1 삭제 
    CMS_EDITDATE=rs("CMS_EDITDATE")  ' 수정일 
    CMS_WDATE=rs("CMS_WDATE")  ' 작성일 

    '------------------------------ 없는 내용.. 

    end if 
rs.close  

    '저자select 
    'AUT_ID,aut_div, CodeNameKor, AUT_NAME, AUT_DTL from TbCMS_Author 
    
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	CMS_ID) )	
    set rs=dbh.RunSPReturnRS("PrCMS_Author_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    AuthorList = rs.getRows()
    end if 
    rs.close   
' 주제별 카테고리 
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	CMS_ID) )	
    set rs=dbh.RunSPReturnRS("PrCMS_Category_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    CATE1 = Clng(RS(0))
    CATE1_ID = Clng(RS(2))
    ELSE 
    CATE1 = 0
    end if 
    rs.close   
' 대상별  카테고리 
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	CMS_ID),  dbh.mp("@GUBN",	advarchar,	10,	2))	
    set rs=dbh.RunSPReturnRS("PrCMS_Category_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    CATE2 = Clng(RS(0))
    CATE2_ID = Clng(RS(2))
    ELSE 
    CATE2 = 0
    end if 
    rs.close     
' 검색 키워드 PrCMS_Keyword_Q  
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	CMS_ID) )	
    set rs=dbh.RunSPReturnRS("PrCMS_Keyword_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    KWlist = rs.getRows()
    end if 
    rs.close   
' 홍보영상
    paramInfo = Array( _
    dbh.mp("@CMS_ID",	advarchar,	10,	CMS_ID) )	
    set rs=dbh.RunSPReturnRS("PrCMS_mov_Q",paramInfo , conn_duplus)	
    if not (rs.eof or rs.bof) then 
    CMM_ID =rs(0)
    CMM_DIV =rs(2)
    CMM_MOV_LINK =rs(3)
    end if 
    rs.close   

' 시리즈  ..


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


'판매형태 CMS_SAL_DIV
paramInfo = Array( _
dbh.mp("@Gcode",	advarchar,	10,	"S03") )	  ' 전체 소장 대여 판매중지 
set rs=dbh.RunSPReturnRS("PrCMS_CommonCode_Q",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
 SALDivlist = rs.getRows()
end if 
rs.close   

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
                    <td><div name="a_info_txt" id="a_info_txt" class="summernote"></div>
                    <input type="hidden"  name="aut_sort" value="">
                    </td>
                </tbody>
            </table>
            <div class="btn_wrap">
                <input type="hidden" name="aut_cms_id"  value="">
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
                        <form action="ctnReg_ok.asp" method="post" id="cont_regist_form" name="cont_regist_form" class="form_primary" onsubmit="return form_check()">
                        <input type="hidden" id="CMS_ID" name="CMS_ID" value="<%=CMS_ID%>">
                        <input type="hidden" id="HIddenGuid" name="HIddenGuid" value="<%=guid%>">
                        <input type="hidden" id="CMS_State_code"  name="CMS_State_code" value="<%=CMS_State_code%>">
                        
                        
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
                                                        <input type="radio" id="type_epub" name="file_type"  value="1" <%=IIF(CMS_File_div="1","checked","")%>>
                                                        <label for="type_epub">EPUB</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="type_pdf" name="file_type" value="2" <%=IIF(CMS_File_div="2","checked","")%>>
                                                        <label for="type_pdf">PDF</label>
                                                    </span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>시리즈 여부 - 미개발 시리즈를 검색할 수 있어야  </th>
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
                                                    <input type="hidden" name="aut_id" value="0" >
                                                    <input type="text"  name="author_info" value="테스트북저자">
                                                    <input type="hidden" name="author_desc" data-value="0">
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
                                                        <input type="hidden" name="aut_id" value="<%=AuthorList(0,ii)%>" >
                                                        <input type="text"   name="author_info" value="<%=AuthorList(3,ii)%>" data-value="<%=AuthorList(0,ii)%>">
                                                        <input type="hidden" name="author_desc" value="<%=AuthorList(4,ii)%>" data-value="<%=ii%>">
                                                        <button type="button" class="btn_line gray_btn_line mg a_open_popup">소개내용</button>
                                                        <%if ii= 0 then %>
                                                        <button type="button" class="btn_line b_btn_line add_btn">+ 추가</button>
                                                        <%else %>
                                                        <button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button>
                                                        <%end if %>
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
                                                    <input type="text" id="b_list_price" name="b_list_price" value="<%=FORMATNUMBER(CMS_Paper_Price,0)%>">
                                                    원
                                                </td>
                                                <th>전자책 정가 <span class="orange">*</span></th>
                                                <td>
                                                    <input type="text" id="eb_list_price" name="eb_list_price" value="<%=FORMATNUMBER(CMS_Digital_Price,0)%>">
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
                                                    <input type="text" id="page_num" name="page_num" value="<%=CMS_PAGE%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>도서 구분 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <span class="radio">
                                                        <input type="radio" name="book_devision" id="book_domestic" value="1" <%=iif(CMS_DIV2 = "1","checked","")%>>
                                                        <label for="book_domestic">국내서</label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="book_translation" name="book_devision" value="2" <%=iif(CMS_DIV2 = "2","checked","")%>>
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
                                                    <textarea class="hidden" id="CMS_ContentText_hidden" name="CMS_ContentText_hidden"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">출판사서평</th>
                                                <td colspan="3">
                                                <div class="summernote" id="CMS_MarketingCopyText"><%=CMS_MarketingCopyText%></div>
                                                <textarea class="hidden" id="CMS_MarketingCopyText_hidden" name="CMS_MarketingCopyText_hidden"></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">목차 <span class="orange">*</span></th>
                                                <td colspan="3">
                                                    <div class="summernote" id="CMS_ContentList"><%=CMS_ContentList%></div>
                                                    <textarea class="hidden" id="CMS_ContentList_hidden" name="CMS_ContentList_hidden"></textarea>
                                                     
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
                                                            <option value="<%=category1(0,i)%>"  <%=IIF(CATE1=category1(0,i),"selected","")%>><%=category1(1,i)%> </option>
                                                            <%
                                                        next
                                                    end if %>
                                                    
                                                    </select><input type="hidden" name="CATE1_ID" VALUE="<%=CATE1_ID%>" >
                                        
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
                                                    </select><input type="hidden" name="CATE2_ID" VALUE="<%=CATE2_ID%>" >
                                        
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
                                                    <%if isArray(KWlist) then %> 
                                                        <% for i = 0 to Ubound(KWlist,2)
                                                           tempKey= tempKey + KWlist(2,i)+","
                                                        %> 
                                                        <div>
                                                        <input type="text"  name="KWlist" class="add_ipt"  value="<%=KWlist(3,i)%>"  data-value="<%=KWlist(2,i)%>"  />
                                                        <button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button>
                                                        </div>
                                                        <%next
                                                    end if %>
                                                </td>
                                                    <input type="hidden"  name="search_key_hidden" value="<%=tempKey%>"/>
                                                
                                            </tr>
                                            <tr>
                                                <th>홍보 영상</th>
                                                <td colspan="3">
                                                   <select name="pro_video_sel">
                                                        <option value="002" <%=iif(CMM_DIV="002", "selected","")%>>유튜브</option>
                                                        <option value="003" <%=iif(CMM_DIV="003", "selected","")%>>비메오</option>
                                                    </select>
                                                    <input type="hidden" id="CMM_ID" NAME="CMM_ID" VALUE="<%=CMM_ID%>"/>
                                                    <input type="text" name="video_url" style="width:70%" value="<%=CMM_MOV_LINK%>"  />
                                                    <%if CMM_MOV_LINK <> "" THEN %>
                                                    <A href="<%=CMM_MOV_LINK%>" target=_blank><button type="button" class="btn_line g_btn_line" >미리보기 </button></a>
                                                    <%ELSE%>
                                                    <button  type="button" class="btn_line g_btn_line" >미리보기 </button>
                                                    <%END IF %>
                                                </td>
                                                 
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>

                                <div class="resource table_wrap">
                                    <h3 class="sub_t">리소스</h3>

                                  <!--div class="form-group row">
                                    <label class="col-form-label col-md-2" style="float: left;text-align: center;"><span style="color: red">*</span>파일</label>
                                    <div class="col-md-4" id="file-uploaderMedia" style=" padding: 0px; margin-top: -12px;"></div>
                                    <label class="col-md-1" id="MediaName"></label>
                                    <div-- class="col-md-5">
                                        <a class="btn btn-primary btn-sm" id="mediaDownload" href="#">다운로드</a>
                                    </div-->
                                </!--div>

                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">도서파일 <span class="orange">*</span></th>
                                                <td class="file_box">
                                                    <input type="text" id="b_file_name" name="b_file_name" readonly>
                                                    <input type="hidden" id="CMS_File_Link" name="CMS_File_Link"  value="" data-value="<%=CMS_File_Link%>">
                                                    
                                                    <label for="b_file">파일선택</label>
                                                    <input type="file" id="b_file" accept=".epub,.pdf" >
                                                    <%if CMS_File_Link <> "" then %> 
                                                    <%=fname(CMS_File_Link)%>
                                                    <%end if%>
                                                    <button type="button" id="Ximage_container0" name="Ximage_container0" class="btn_line g_btn_line"  style="display: ;" onclick="del('b')" >삭제</button>
                                                </td>

                                                <th>다운로드 여부</th>
                                                <td>
                                                    <select name="down_sel">
                                                        <option value="Y" <%=iif(CMS_Download_YN="Y","selected","")%>>Y</option>
                                                        <option value="N" <%=iif(CMS_Download_YN="N","selected","")%>>N</option>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">파일사이즈  </th>
                                                <td colspan="3">
                                                    <%if CMS_FILE_SIZE  <> "" then %> 
                                                    <span id="file_size"><%=iif(CMS_FILE_SIZE <> "" ,filesizechk(CMS_FILE_SIZE),"(자동으로 뿌림)")%></span>
                                                    <%else%>
                                                    <span id="file_size">(자동으로 뿌림)</span>

                                                    <%end if %>
                                                     
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">표지 <span class="orange">*</span></th>
                                                <td class="file_box" colspan="3">
                                                    <input type="text" id="t_file_name" name="t_file_name" readonly>
                                                    <input type="hidden" id="CMS_MAIN_IMG_LINK" name="CMS_MAIN_IMG_LINK" value="" data-value="<%=CMS_MAIN_IMG_LINK%>">
                                                    <label for="t_file">파일선택</label>
                                                    <input type="file" id="t_file" class="under_1mb" accept=".jpg,.png" onchange="setThumbnail(event)">
                                                    <button type="button" id="Ximage_container1" name="Ximage_container1" class="btn_line g_btn_line"  style="display: ;" onclick="del('t')" >삭제</button>
                                                    <div id="image_container1" class="thumb_img">
                                                    <%if CMS_MAIN_IMG_LINK <> "" THEN %>
                                                        <IMG SRC="<%=CMS_MAIN_IMG_LINK%>" width="200" />
                                                        <%=fname(CMS_MAIN_IMG_LINK)%>
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
                                                    <input type="hidden" id="CMS_SUB_IMG_LINK" name="CMS_SUB_IMG_LINK" value="" data-value="<%=CMS_SUB_IMG_LINK%>">
                                                    <label for="d_file">파일선택</label>
                                                    <input type="file" id="d_file" class="under_1mb" accept=".jpg,.png" onchange="setThumbnail2(event)">
                                                    <button type="button" id="Ximage_container2" name="Ximage_container2" class="btn_line g_btn_line"  style="display: ;" onclick="del('d')" >삭제</button>
                                                    <div id="image_container2" class="thumb_img">
                                                    <%if CMS_SUB_IMG_LINK <> "" THEN %>
                                                        <IMG SRC="<%=CMS_SUB_IMG_LINK%>" width="200" />
                                                        <%=fname(CMS_SUB_IMG_LINK)%>
                                                    <%END IF %>
                                                    </div>
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
                                                    <input type="hidden" id="CMS_Trial_Content_Link" name="CMS_Trial_Content_Link" value="" data-value="<%=CMS_Trial_Content_Link%>">
                                                    <label for="f_file">파일선택</label>
                                                    <input type="file" id="f_file" class="under_30mb" accept=".epub,.pdf" >
                                                    <%if CMS_Trial_Content_Link <> "" then %> 
                                                    <%=fname(CMS_Trial_Content_Link)%>
                                                    <%end if%>
                                                    <button type="button" id="Ximage_container3" name="Ximage_container3" class="btn_line g_btn_line"  style="display: ;" onclick="del('f')" >삭제</button>

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
                                                <th scope="row">판매 형태 <%=CMS_SAL_DIV%><span class="orange">*</span></th>
                                                <td colspan="5">
                                                    <select name="CMS_SAL_DIV">
                                                        <%if isArray(SALDivlist) then %>
                                                        <%for i = 0 to Ubound(SALDivlist,2)  %>
                                                        <option value="<%=SALDivlist(0,i)%>" <%=iif(SALDivlist(0,i)=CMS_SAL_DIV,"selected","")%>><%=SALDivlist(1,i)%></option>
                                                        <%Next %>
                                                        <%end if %>
                                                    </select>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">판매가 <span class="orange">*</span></th>
                                                <td colspan="5">
                                                    <input type="text" id="b_price" name="b_price" value="<%=formatNumber(CMS_SAL_PRICE,0)%>">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">대여가</th>
                                                <td colspan="2">
                                                    <input type="text" id="b_rental_price" name="b_rental_price" value="<%=formatNumber(CMS_RENTAL_PRICE,0)%>">
                                                    원
                                                </td>
                                                <th scope="row">대여기간</th>
                                                <td colspan="2">
                                                    <input type="text" id="rental_period" name="rental_period" value="<%=CMS_RENTAL_DAY%>">
                                                    일
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">서비스 여부 <span class="orange">*</span></th>
                                                <td colspan="2">
                                                    <span class="radio">
                                                        <input type="radio" name="service" id="now" value="001" <%=iif(CMS_SERVICE_YN="001","checked","")%>>
                                                        <label for="now">즉시 <%=CMS_SERVICE_YN%></label>
                                                    </span>
                    
                                                    <span class="radio">
                                                        <input type="radio" id="appointed"   name="service"  value="002" <%=iif(CMS_SERVICE_YN="002","checked","")%>>
                                                        <label for="appointed">지정</label>
                                                    </span>
                                                </td>

                                                <th>서비스 시작일</th>
                                                <td class="regist_date" colspan="2">
                                                    <input type="text" name="serviceDate" autocomplete="off" VALUE="<%=CMS_SERVICE_DAY%>"> 
                                                </td>
                                            </tr>

                                            <!-- 정산율 START -->
                                            <tr>
                                                <th scope="row" rowspan="3">정산율</th>
                                                <th>구독정산(매입)가</th>
                                                <td colspan="1">
                                                    <input type="text" id="CMS_SUB_SUP_PRICE" name="CMS_SUB_SUP_PRICE" value="<%=formatnumber(CMS_SUB_SUP_PRICE,0)%>">
                                                    원
                                                </td>

                                                <th>구독정산 기준 판매수량</th>
                                                <td colspan="3">
                                                    <input type="text" id="CMS_SUB_SUP_COUNT" name="CMS_SUB_SUP_COUNT" VALUE="<%=CMS_SUB_SUP_COUNT%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>소장정산(매입)가</th>
                                                <td colspan="1">
                                                    <input type="text" id="CMS_SAL_SUP_PRICE" name="CMS_SAL_SUP_PRICE" value="<%=formatnumber(CMS_SAL_SUP_PRICE,0)%>">
                                                    원
                                                </td>

                                                <th>대여정산(매입)가</th>
                                                <td colspan="3">
                                                    <input type="text" id="CMS_RENTAL_SUP_PRICE" name="CMS_RENTAL_SUP_PRICE" value="<%=formatnumber(CMS_RENTAL_SUP_PRICE,0)%>">
                                                    원
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">제작 등록</th>
                                                <td colspan="1">
                                                    <!--<span id="stm_pd">ㄹㅇㄹㅇㄹ</span>-->

                                                    <span class="chk">
                                                        <input type="checkbox" id="CMS_Resouce_YN" name="CMS_Resouce_YN" value="1" <%=iif(CMS_Resouce_YN="1","checked","")%>>
                                                        <label for="CMS_Resouce_YN">리소스제작위탁 여부</label>
                                                    </span>
                                                </td>

                                                <th scope="row">독점서비스</th>
                                                <td class="regist_date" colspan="3">
                                                    <span class="chk">
                                                        <!--input type="text" id="CMS_EXCLUSIVE_DAY" name="CMS_EXCLUSIVE_DAY" autocomplete="off"  <%=CMS_EXCLUSIVE_DAY%>--> 서비스 개시일로부터 60일
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
                                                    <textarea name="CMS_MEMO" id="CMS_MEMO" cols rows="5" placeholder="참고사항, 수정된 내용 등 관리자에게 알려주시면 감사하겠습니다."><%=CMS_MEMO%></textarea>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <%
                                select case  CMS_State_code
                                case "0","1"  '최초 작성 저장하기 모드 승인대기 모드 
                                %>
                                <!-- 초기 작성 시 하단 버튼 START -->
                                <div class="btn_wrap">
                                    <button type="button" onclick="regOk(1)" class="btn_md btn_primary">저장하기</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray">취소(초기화)</button>
                                    <!--<button type="submit" class="btn_md btn_primary">승인신청</button>-->
                                </div>
                                <!-- 초기 작성 시 하단 버튼 END -->
                                <%
                                case "2","3"
                                '0 전체 
                                '1 임시저장
                                '2 승인대기
                                ' 3 등록보류
                                ' 4 수정대기
                                ' 5 등록완료
                                ' 6 판매중지
                                %>
                                <!-- 최초 저장 이후 도서 정보 view 화면에서(입력한 정보가 저장된 상태) 활성화되는 버튼 START -->
                                <div class="btn_wrap">
                                    <button type="button" onclick="regOk(2)" class="btn_md btn_primary">승인신청</button>
                                    <button type="button" onclick="regOk(2)" class="btn_md btn_primary btn_light_gray">수정하기</button>
                                </div>
                                <!-- 최초 저장 이후 도서 정보 view 화면에서(입력한 정보가 저장된 상태) 활성화되는 버튼 END -->
                                <%
                                case "4","5","6"
                                %>                                 
                                <!-- 승인 완료 이후 도서 목록에서 들어왔을 때 하단 버튼 START -->
                                <div class="btn_wrap">
                                    <button type="button" onclick="regOk(4)" class="btn_md btn_primary">수정하기</button>
                                    <button type="button" xonclick="regOk(6)" class="btn_md btn_primary btn_light_gray s_open_popup">판매중지요청</button>
                                </div>
                                <!-- 승인 완료 이후 도서 목록에서 들어왔을 때 하단 버튼 END -->
                                <%
                                end select 
                                %>                              



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

function AzureUpload(F , pos){

            $.ajax({
                url: "https://prd-dplus-bos-krc.azurewebsites.net/System/FileUpload",
                type: "POST",
                data: F,
                async: false,
                success: function (data) { 
                    
                    switch (pos){
                    case "b" : 
                    $("#CMS_File_Link").val("https://dplusblobstgprd.blob.core.windows.net/"+data)
                    break;
                    case "t" : 
                    $("#CMS_MAIN_IMG_LINK").val("https://dplusblobstgprd.blob.core.windows.net/"+data)
                    break;
                    case "d" : 
                    $("#CMS_SUB_IMG_LINK").val("https://dplusblobstgprd.blob.core.windows.net/"+data)
                    break;
                    case "f" : 
                    $("#CMS_Trial_Content_Link").val("https://dplusblobstgprd.blob.core.windows.net/"+data)
                    break;
                    }
                    

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
 
</script>
 
    <script>
 
        //DevExtream Editor 로드
    function EditorLoad() {
        $('.summernote').summernote({
            enterHtml: '<br>',
            lineWrapping: false,
            disableDragAndDrop: true,
            height: "350px",
            width: "860px", // 에디터 높이
            minHeight: null,             // 최소 높이
            maxHeight: null,             // 최대 높이
            focus: false,                  // 에디터 로딩후 포커스를 맞출지 여부
            lang: "ko-KR",					// 한글 설정
            placeholder: '최대 2048자까지 쓸 수 있습니다',	//placeholder 설정,
            toolbar: [
                // [groupName, [list of button]]
                // ['fontname', ['fontname']],
                // ['fontsize', ['fontsize']],
                ['style', ['bold', 'underline']],
                //['style', ['bold', 'italic', 'underline', 'strikethrough', 'clear']],
                ['color', ['forecolor', ]],
                //['color', ['forecolor', 'color']],
                //['table', ['table']],
                // ['para', ['ul', 'ol', 'paragraph']],
                // ['height', ['height']],
                //['insert', ['picture', 'link']],
                // ['view', ['codeview', 'help']]
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
         

    }
 
    </script>




    <script>

    var file = []; 
    var BookFileName = "";
    var booksize = 0; 
    var fileAll = []

        // 파일 업로드-표지
        function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          $("#image_container1").html("").html(img);
          $("#Ximage_container1").show();
        };
            //console.log(event.target.files[0])
        reader.readAsDataURL(event.target.files[0]);
      }

      // 파일 업로드-상세
      function setThumbnail2(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          $("#image_container2").html("").html(img);
          $("#Ximage_container2").show();
        };

        reader.readAsDataURL(event.target.files[0]);
      };


      

        $(document).ready(function () {
          
            $('input[name="bookDate"],input[name="ebookDate"],input[name="serviceDate"],input[name="CMS_EXCLUSIVE_DATE"]').daterangepicker({
                singleDatePicker: true,
                autoApply:true,
                //autoUpdateInput: false,
                
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
                },  function(start, end, label) {
                        var years = moment().diff(start, 'years');
                        alert("You are " + years + " years old!");
                    }
            });
            
            EditorLoad();

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
            $(".author .add_btn").click(function(){
            var cnt = $("input[name=aut_id]").length 
            var fieldHtml2='<div><select name="sel_author_name" id="add_sel_author"><% for i = 0 to Ubound(authCodeList,2)%><option value="<%=authCodeList(0,i)%>"><%=authCodeList(1,i)%></option><%next%></select>'
            +'<input type="hidden" name="aut_id" value="0" >'
            +'<input type="text"   name="author_info" value="" data-value="">'
            +'<input type="hidden" name="author_desc" value="" data-value="'+cnt+'">'
            +'<button type="button" class="btn_line gray_btn_line mg a_open_popup">소개내용</button>'
            +'<button type="button" class="btn_line g_btn_line remove_btn">- 삭제</button></div>';
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
                var thisNam = $(this).prev().val(); 
                    if(confirm(thisNam+'을 삭제 하시겠습니까?') ){
                        // 실제 db 에서 삭제처리.. 
                        // actionAjax.asp  cns 검색어/ 저자 테이블  삭제 기능.. 
                        actionAjax("search",thisVal);
                    var curVal = $("input[name=search_key_hidden]").val() 
                    $("input[name=search_key_hidden]").val(curVal.replace(thisVal+',','') )
                    $(this).parent('div').remove();
                    } 
                
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
            var aut_sort = ""
            $(".btn_add_wrap").on('click','.a_open_popup',function(){
                var thisVal = $(this).prev().val() 
                aut_sort = $(this).prev().data("value");
                 $("input[name=aut_sort]").val(aut_sort)
                $("#a_info_txt").summernote("code",thisVal)
                $(".a_modal").css({
                    "display":"block",
                });
                $("body").css({
                    "overflow":"hidden",
                })

                $(".btn_close_popup,.modal .btn_wrap button").click(function(){
                    aut_sort = $("input[name=aut_sort]").val()
                    $("input[name=author_desc]").eq(aut_sort).val( $("#a_info_txt").summernote("code"))
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

            // $('.summernote').summernote();

        });

        // input=file 파일명 연결
         
        $("#b_file").on('change',function(e){
            const f = e.target.files[0];

                    // var imageForm = new FormData();
                    // imageForm.append("file", file);
                    // imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
                    // imageForm.append("fileName", file.name);
                    // imageForm.append("Type", "book");
               
                    if (f.length != 0) { 
                        file = [];

                        file[0] = f;
                        file[1] = "book";    //file[1] = "thumbnail";
                        file[2] = "b"; 
                        fileAll[0] = file;

                        //var f = e.value;

                        BookFileName = f.name;
                        booksize = f.size;
                        // //파일 사이즈 바인딩
                        // var size = byteCalculation(f[0].size);
                         $("#file_size").html(byteCalculation(booksize)); 
                            var last = f.name.substring(f.name.lastIndexOf('.') + 1);
                            $("#b_file_name").val(BookFileName);

                        if ($("input[name='file_type']:checked").val() == "1") { // 001

                            if (last != "epub") {
                                alert ("EPUB 파일을 등록해주세요.");
                                //$("#file-uploaderMedia").dxFileUploader("instance").reset();
                                $("#file_size").html("");
                                $("#b_file_name").val("");
                                fileAll.splice(0,1)

                            }
                        } else if ($("input[name='file_type']:checked").val() == "2") {  //002 

                            if (last != "pdf") {
                                alert ("PDF 파일을 등록해주세요.");
                                //$("#file-uploaderMedia").dxFileUploader("instance").reset();
                                $("#file_size").html("");
                                $("#b_file_name").val("");
                                fileAll.splice(0,1)

                            }
                        }
                    } 
        });
        
        $("#t_file").on('change',function(e){
            const f = e.target.files[0]; 
            if (f.length != 0) { 
            file = [];

            file[0] = f;
            file[1] = "thumbnail";
            file[2] = "t";
            fileAll[1] = file; 
            $("#t_file_name").val(f.name);
            }
        });
        $("#d_file").on('change',function(e){
            const f = e.target.files[0]; 
            if (f.length != 0) { 
            file = [];
            file[0] = f;
            file[1] = "thumbnail";
            file[2] = "d";
            fileAll[2] = file; 
            $("#d_file_name").val(f.name);
            }
        });
        $("#f_file").on('change',function(e){
                    const f = e.target.files[0]; 
                    if (f.length != 0) { 
                        file = [];

                        file[0] = f;
                        file[1] = "book";     
                        file[2] = "f";     
                        fileAll[3] = file; 
                        
//                         $("#file_size").html(byteCalculation(f.size)); 
                            var last = f.name.substring(f.name.lastIndexOf('.') + 1);
                            $("#f_file_name").val(f.name);
                        if ($("input[name='file_type']:checked").val() == "1") { // 001

                            if (last != "epub") {
                                alert ("EPUB 파일을 등록해주세요.");
                                //$("#file-uploaderMedia").dxFileUploader("instance").reset();
                                
                                $("#f_file_name").val("");
                                fileAll.splice(3,1)

                            }
                        } else if ($("input[name='file_type']:checked").val() == "2") {  //002 

                            if (last != "pdf") {
                                alert ("PDF 파일을 등록해주세요.");
                                //$("#file-uploaderMedia").dxFileUploader("instance").reset();
                               
                                $("#f_file_name").val("");
                                fileAll.splice(3,1)

                            }
                        }
                    } 
            
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
     async function regOk(state){
        
        $("#CMS_State_code").val(state)
        $("#CMS_ContentText_hidden").text($("#CMS_ContentText").summernote('code'))   
        $("#CMS_MarketingCopyText_hidden").text($("#CMS_MarketingCopyText").summernote('code'))   
        $("#CMS_ContentList_hidden").text($("#CMS_ContentList").summernote('code'))       
        //form_check();
         //  파일 업로드 
          for (i = 0; i < fileAll.length; i++) {
                if (fileAll[i] !==undefined){
                var last = fileAll[i][0].name.substring(fileAll[i][0].name.lastIndexOf('.') + 1);
                var imageForm = new FormData();
                imageForm.append("file", fileAll[i][0]);
                imageForm.append("mainFolder", "CM/Content/" + $("#HIddenGuid").val());
                imageForm.append("fileName", last);
                imageForm.append("Type", fileAll[i][1]);
                 await   AzureUpload(imageForm,fileAll[i][2]);
                // console.log(fileAll[i])
                // console.log(fileAll[i][0].name)
                // console.log(fileAll[i][1])
                // console.log(fileAll[i][2])
                }
            }
 
                    let CMS_File_Link = $("#CMS_File_Link").val()
                    let CMS_MAIN_IMG_LINK = $("#CMS_MAIN_IMG_LINK").val()
                    let CMS_SUB_IMG_LINK = $("#CMS_SUB_IMG_LINK").val()
                    let CMS_Trial_Content_Link = $("#CMS_Trial_Content_Link").val()

                    let CMS_File_Link_org = $("#CMS_File_Link").data("value")
                    let CMS_MAIN_IMG_LINK_org = $("#CMS_MAIN_IMG_LINK").data("value")
                    let CMS_SUB_IMG_LINK_org = $("#CMS_SUB_IMG_LINK").data("value")
                    let CMS_Trial_Content_Link_org = $("#CMS_Trial_Content_Link").data("value")

                    CMS_File_Link = (CMS_File_Link =="")?CMS_File_Link_org:CMS_File_Link;
                    $("#CMS_File_Link").val(CMS_File_Link)
                    CMS_MAIN_IMG_LINK = (CMS_MAIN_IMG_LINK =="")?CMS_MAIN_IMG_LINK_org:CMS_MAIN_IMG_LINK;
                    $("#CMS_MAIN_IMG_LINK").val(CMS_MAIN_IMG_LINK)
                    CMS_SUB_IMG_LINK = (CMS_SUB_IMG_LINK =="")?CMS_SUB_IMG_LINK_org:CMS_SUB_IMG_LINK;
                    $("#CMS_SUB_IMG_LINK").val(CMS_SUB_IMG_LINK)
                    CMS_Trial_Content_Link = (CMS_Trial_Content_Link =="")?CMS_Trial_Content_Link_org:CMS_Trial_Content_Link;
                    $("#CMS_Trial_Content_Link").val(CMS_Trial_Content_Link)
        
                    document.cont_regist_form.submit()
    }

    
        // 유효성 검사
        function form_check(){
               
            console.log("form_check 시작 ")
                  

            

            const b_name=document.getElementById("b_name");
            const sub_name=document.getElementById("sub_name");
            //const brand_name=document.getElementById("brand_name");
            //const author_name=document.getElementById("author_name");
            const author_info=document.cont_regist_form.author_info;
            const b_list_price=document.getElementById("b_list_price");
            const eb_list_price=document.getElementById("eb_list_price");
            const isbn_num=document.getElementById("isbn_num");
            const e_isbn_num=document.getElementById("e_isbn_num");
            const page_num=document.getElementById("page_num");

            const book_info=document.getElementById("CMS_ContentText");
            const book_list=document.getElementById("CMS_ContentList");
            const category_1=document.getElementById("category_1");
            const category_2=document.getElementById("category_2");

            const b_file_name=document.getElementById("b_file_name");
            const t_file_name=document.getElementById("t_file_name");

            const b_price=document.getElementById("b_price");
            const book_devision = document.getElementsByName("book_devision")
            const service = document.getElementsByName("service")
   

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
            // if(typeof(author_info) == undef){
                alert("저자를 입력하세요.");
                author_info.focus();
                return false;
            }


            const regExp = /^[0-9,]*$/;

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

            /*도서 구분 */
            var checked = false;

            for (var i = 0; i < book_devision.length; i++) {
                if (book_devision[i].checked) {
                checked = true;
                break;
                }
            }

            if (!checked) {
                alert("도서 구분을 선택해 주세요 ")
                book_devision[0].focus()
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
            if(category_1.value=="0"){
                alert("카테고리1(주제별)을 입력하세요.");
                category_1.focus();
                return false;
            }

            /* 카테고리2 입력 여부 */
            if(category_2.value=="0"){
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
            /*서비스 여부  */
            var checked2 = false;

            for (var i = 0; i < service.length; i++) {
                if (service[i].checked) {
                checked2 = true;
                break;
                }
            }

            if (!checked2) {
                alert("서비스 여부를 선택해 주세요 ")
                service[0].focus()
                return false;
            }

         

        }


        function actionAjax(area, idx){
            //var area;  // 어디 지역을 삭제 할것이지 
            var cms_id = "<%=CMS_ID%>";
            if(cms_id == ""){ 
                return  false;
            } 
           // alert(area, idx) 
         //  $.post("Ajax/actionAjax.asp")

        }

        // 미디어 x 버튼 클릭시  
        function del(pos){
            switch (pos){
                case "b" : 
                fileAll.splice(0,1)
                $("#b_file_name").val("")
                break;
                case "t" : 
                fileAll.splice(1,1)
                //$("#Ximage_container1").hide();
                $("#image_container1").html("")
                $("#t_file_name").val("")
                break;
                case "d" : 
                fileAll.splice(2,1)
                //$("#Ximage_container2").hide();
                $("#image_container2").html("")
                $("#d_file_name").val("")
                break;
                case "f" : 
                fileAll.splice(3,1)
                $("#f_file_name").val("")
                break;
            }

            }

    </script>
</body>

</html>
