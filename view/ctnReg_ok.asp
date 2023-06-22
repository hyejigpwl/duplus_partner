<%@ codepage="65001" language="VBScript" %>
<OBJECT PROGID=ASP.PagingHelperMall 		ID=phm  RunAt=Server></OBJECT>
<OBJECT PROGID=Scripting.FileSystemObject   	id=fso 		RUNAT=server> </OBJECT>
<OBJECT PROGID=DAL.DBHelper id=dbh RUNAT=server> </OBJECT>
<!--#include virtual="/partner/include/connect.asp"-->
<!--#include virtual="/partner/include/function.asp"-->

<%

'0 전체 
'1 임시저장  -- 여기까지 insert 
'2 승인대기   -- 아래부터 update 
' 3 등록보류
' 4 수정대기
' 5 등록완료
' 6 판매중지
Response.CharSet="utf-8" 
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
' 저장되는 파일을 받은 부분 

'파일을 업로드 하고 

' 여기서 azure 에 파일을 업로드 해야 하는가.. ? 

For i=1 To Request.Form.Count

'response.write "<br>ID : " & Request.Form.Key(i) & " | Value : " &  Request.Form(i)
'response.write "<br>"&Request.Form.Key(i) '&"=request.Form("""&Request.Form.Key(i)&""")" 

Next

 
CMS_ID=request.Form("CMS_ID")
HIddenGuid=request.Form("HIddenGuid")
CMS_State_code=request.Form("CMS_State_code")

category=request.Form("category")
file_type=request.Form("file_type")
series_name=request.Form("series_name")
series_num=request.Form("series_num")
if series_name <>"" then 
cms_SerisesYN = "N"
else 
cms_SerisesYN = "Y"
end if 
b_name=request.Form("b_name")
sub_name=request.Form("sub_name")
origin_name=request.Form("origin_name")
sel_brand=request.Form("sel_brand")
'=========== 별도 테이블 저장 
sel_author_name=request.Form("sel_author_name")
author_info=request.Form("author_info")
author_desc=request.Form("author_desc")
'=========== 별도 테이블 저장 
bookDate=request.Form("bookDate")
ebookDate=request.Form("ebookDate")
b_list_price=request.Form("b_list_price")
if instr(b_list_price,",") > 0 then b_list_price = replace(b_list_price,",","")
eb_list_price=request.Form("eb_list_price")
if instr(eb_list_price,",") > 0 then eb_list_price = replace(eb_list_price,",","")
isbn_num=request.Form("isbn_num")
e_isbn_num=request.Form("e_isbn_num")
page_num=request.Form("page_num")
'files=request.Form("files")
CMS_ContentText_hidden=request.Form("CMS_ContentText_hidden") 
CMS_MarketingCopyText_hidden=request.Form("CMS_MarketingCopyText_hidden") 
CMS_ContentList_hidden=request.Form("CMS_ContentList_hidden") 
'=========== 별도 테이블 저장   TbCMS_Category
category_1=request.Form("category_1")  ' 주제별  : 카테고리 테이블에 저장 
CATE1_ID = request.Form("CATE1_ID")
category_2=request.Form("category_2")  ' 대상별 : 카테고리 테이블에 저장 
CATE2_ID = request.Form("CATE2_ID")
'=========== 별도 테이블 저장   TbCMS_Keyword
search_key=request.Form("search_key")
search_key_hidden=request.Form("search_key_hidden")
'=========== 별도 테이블 저장 
'=========== 별도 테이블 저장  TbCMS_Movie
pro_video_sel=request.Form("pro_video_sel")  ' 외부 매체 정의 
video_url=request.Form("video_url")  ' 경로 
CMM_ID=request.Form("CMM_ID")  '동영상 ID  
'=========== 별도 테이블 저장 
b_file_name=request.Form("b_file_name")
down_sel=request.Form("down_sel")
t_file_name=request.Form("t_file_name")
d_file_name=request.Form("d_file_name")
f_file_name=request.Form("f_file_name")
CMS_File_Link = request.Form("CMS_File_Link")
CMS_MAIN_IMG_LINK = request.Form("CMS_MAIN_IMG_LINK")
' resp
' response.write CMS_MAIN_IMG_LINK & "zzz"
' response.end 
CMS_SUB_IMG_LINK = request.Form("CMS_SUB_IMG_LINK")
CMS_Trial_Content_Link = request.Form("CMS_Trial_Content_Link")
CMS_SAL_DIV=request.Form("CMS_SAL_DIV")
b_price=request.Form("b_price")
if instr(b_price,",") > 0 then b_price = replace(b_price,",","")
b_rental_price=request.Form("b_rental_price")
if instr(b_rental_price,",") > 0 then b_rental_price = replace(b_rental_price,",","")
rental_period=request.Form("rental_period")
service=request.Form("service")

serviceDate=request.Form("serviceDate")
CMS_SUB_SUP_PRICE=request.Form("CMS_SUB_SUP_PRICE")
if instr(CMS_SUB_SUP_PRICE,",") > 0 then CMS_SUB_SUP_PRICE = replace(CMS_SUB_SUP_PRICE,",","")
CMS_SUB_SUP_COUNT=request.Form("CMS_SUB_SUP_COUNT")
CMS_SAL_SUP_PRICE=request.Form("CMS_SAL_SUP_PRICE")
if instr(CMS_SAL_SUP_PRICE,",") > 0 then CMS_SAL_SUP_PRICE = replace(CMS_SAL_SUP_PRICE,",","")
CMS_RENTAL_SUP_PRICE=request.Form("CMS_RENTAL_SUP_PRICE")
if instr(CMS_RENTAL_SUP_PRICE,",") > 0 then CMS_RENTAL_SUP_PRICE = replace(CMS_RENTAL_SUP_PRICE,",","")
CMS_Resouce_YN = request.Form("CMS_Resouce_YN")
if CMS_Resouce_YN = "" then CMS_Resouce_YN = "0"
CMS_EXCLUSIVE_DATE=request.Form("CMS_EXCLUSIVE_DATE")
CMS_MEMO=request.Form("CMS_MEMO")

book_devision = request.Form("book_devision")
if book_devision = "" then book_devision = "001"
' response.write book_devision &"zz"
' response.end 

'특수기호 치환 필요시 사용 
' content = replace(content,"&","&amp;")
' content = replace(content,"'","&quot;")
' subject1 = replace(subject1,"&","&amp;")
' subject1 = replace(subject1,"'","&quot;")
' subject1 = Replace(subject1, Chr(13)&Chr(10), "<br>")

if CMS_ID <> "" then
   paramInfo = Array( _ 
   dbh.mp("@CMS_ID",	adInteger,	4,	CMS_ID),_
   dbh.mp("@cms_State_code",	adInteger,	4,	CMS_State_code),_
   dbh.mp("@cms_div1",	adInteger,	4,	category),_
   dbh.mp("@cms_File_div",	adVarWChar,	3,	file_type ),_
   dbh.mp("@cms_SerisesYN",	adVarWChar,	1,	cms_SerisesYN),_
   dbh.mp("@cms_Title",	adVarWChar,	100,	b_name),_
   dbh.mp("@cms_Sub_Title",	adVarWChar,	1000,	sub_name),_
   dbh.mp("@cms_ORG_tITLE",	adVarWChar,	1000,	origin_name),_
   dbh.mp("@cms_Publish",	adInteger,	4,	CPNum),_
   dbh.mp("@cms_BRAND",	adInteger,	4,	sel_brand ),_
   dbh.mp("@cms_Paper_Pub_Day",	adDate,	8,	bookDate ),_
   dbh.mp("@cms_Digital_Pub_Day",	adDate,	8,	ebookDate ),_
   dbh.mp("@cms_Paper_Price",	adInteger,	4,	b_list_price ),_
   dbh.mp("@cms_Digital_Price",	adInteger,	4,	eb_list_price ),_
   dbh.mp("@cms_ISBN",	adVarWChar,	50,	isbn_num ),_
   dbh.mp("@cms_EISBN",	adVarWChar,	50,	e_isbn_num ),_
   dbh.mp("@cms_PAGE",	adVarWChar,	10,	page_num ),_
   dbh.mp("@cms_DIV2",	adVarWChar,	10,	book_devision ),_
   dbh.mp("@cms_ContentText",	adVarWChar,	4000,	CMS_ContentText_hidden ),_
   dbh.mp("@cms_MarketingCopyText",	adVarWChar,	4000,	CMS_MarketingCopyText_hidden ),_
   dbh.mp("@cms_ContentList",	adVarWChar,	4000,	CMS_ContentList_hidden ),_
   dbh.mp("@cms_File_Link",	adVarWChar,	1000,	cms_File_Link),_
   dbh.mp("@cms_Download_YN",	adVarWChar,	1,	down_sel ),_
   dbh.mp("@cms_MAIN_IMG_LINK",	adVarWChar,	1000,	cms_MAIN_IMG_LINK),_
   dbh.mp("@cms_SUB_IMG_LINK",	adVarWChar,	1000,	cms_SUB_IMG_LINK),_
   dbh.mp("@cms_Trial_Content_Link",	adVarWChar,	1000,	cms_Trial_Content_Link),_
   dbh.mp("@cms_SAL_DIV",	adVarWChar,	3,	CMS_SAL_DIV),_
   dbh.mp("@cms_SAL_PRICE",	adInteger,	4,	b_price ),_
   dbh.mp("@cms_RENTAL_PRICE",	adInteger,	4,	b_rental_price ),_
   dbh.mp("@cms_RENTAL_DAY",	adInteger,	4,	rental_period ),_
   dbh.mp("@cms_SERVICE_YN",	adVarWChar,	3,	service ),_
   dbh.mp("@cms_SERVICE_DAY",	adDate,	8,	serviceDate ),_
   dbh.mp("@cms_MEMO",	adVarWChar,	4000,	CMS_MEMO ),_
   dbh.mp("@cms_Resouce_YN",	adVarWChar,	2,	CMS_Resouce_YN ),_
   dbh.mp("@cms_Exclusive_day",	adInteger,	4,	60 ),_
   dbh.mp("@cms_Sup_Brand",	adInteger,	4,	CPNum),_
   dbh.mp("@cms_SAL_SUP_PRICE",	adInteger,	4,	CMS_SAL_SUP_PRICE ),_
   dbh.mp("@cms_RENTAL_SUP_PRICE",	adInteger,	4,	CMS_RENTAL_SUP_PRICE ),_
   dbh.mp("@cms_SUB_SUP_PRICE",	adInteger,	4,	CMS_SUB_SUP_PRICE ),_
   dbh.mp("@cms_SUB_SUP_COUNT",	adInteger,	4,	CMS_SUB_SUP_COUNT ) _
   ) 
   call dbh.runSP("[PrCMS_Content_U]",paramInfo, conn_duplus)	
else 
   ' '--- 아래는 컨텐츠 저장 부분 
   paramInfo = Array( _ 
   dbh.mp("@CMS_ContentGuid",	adVarWChar,	100,	HIddenGuid),_
   dbh.mp("@cms_State_code",	adInteger,	4,	CMS_State_code),_
   dbh.mp("@cms_div1",	adInteger,	4,	category),_
   dbh.mp("@cms_File_div",	adVarWChar,	3,	file_type ),_
   dbh.mp("@cms_SerisesYN",	adVarWChar,	1,	cms_SerisesYN),_
   dbh.mp("@cms_Title",	adVarWChar,	100,	b_name),_
   dbh.mp("@cms_Sub_Title",	adVarWChar,	1000,	sub_name),_
   dbh.mp("@cms_ORG_tITLE",	adVarWChar,	1000,	origin_name),_
   dbh.mp("@cms_Publish",	adInteger,	4,	CPNum),_
   dbh.mp("@cms_BRAND",	adInteger,	4,	sel_brand ),_
   dbh.mp("@cms_Paper_Pub_Day",	adDate,	8,	bookDate ),_
   dbh.mp("@cms_Digital_Pub_Day",	adDate,	8,	ebookDate ),_
   dbh.mp("@cms_Paper_Price",	adInteger,	4,	b_list_price ),_
   dbh.mp("@cms_Digital_Price",	adInteger,	4,	eb_list_price ),_
   dbh.mp("@cms_ISBN",	adVarWChar,	50,	isbn_num ),_
   dbh.mp("@cms_EISBN",	adVarWChar,	50,	e_isbn_num ),_
   dbh.mp("@cms_PAGE",	adVarWChar,	10,	page_num ),_
   dbh.mp("@cms_DIV2",	adVarWChar,	10,	book_devision ),_
   dbh.mp("@cms_ContentText",	adVarWChar,	4000,	CMS_ContentText_hidden ),_
   dbh.mp("@cms_MarketingCopyText",	adVarWChar,	4000,	CMS_MarketingCopyText_hidden ),_
   dbh.mp("@cms_ContentList",	adVarWChar,	4000,	CMS_ContentList_hidden ),_
   dbh.mp("@cms_File_Link",	adVarWChar,	1000,	cms_File_Link),_
   dbh.mp("@cms_Download_YN",	adVarWChar,	1,	down_sel ),_
   dbh.mp("@cms_MAIN_IMG_LINK",	adVarWChar,	1000,	cms_MAIN_IMG_LINK),_
   dbh.mp("@cms_SUB_IMG_LINK",	adVarWChar,	1000,	cms_SUB_IMG_LINK),_
   dbh.mp("@cms_Trial_Content_Link",	adVarWChar,	1000,	cms_Trial_Content_Link),_
   dbh.mp("@cms_SAL_DIV",	adVarWChar,	3,	CMS_SAL_DIV),_
   dbh.mp("@cms_SAL_PRICE",	adInteger,	4,	b_price ),_
   dbh.mp("@cms_RENTAL_PRICE",	adInteger,	4,	b_rental_price ),_
   dbh.mp("@cms_RENTAL_DAY",	adInteger,	4,	rental_period ),_
   dbh.mp("@cms_SERVICE_YN",	adVarWChar,	3,	service ),_
   dbh.mp("@cms_SERVICE_DAY",	adDate,	8,	serviceDate ),_
   dbh.mp("@cms_MEMO",	adVarWChar,	4000,	CMS_MEMO ),_
   dbh.mp("@cms_Resouce_YN",	adVarWChar,	2,	CMS_Resouce_YN ),_
   dbh.mp("@cms_Exclusive_day",	adInteger,	4,	60 ),_
   dbh.mp("@cms_Sup_Brand",	adInteger,	4,	CPNum),_
   dbh.mp("@cms_SAL_SUP_PRICE",	adInteger,	4,	CMS_SAL_SUP_PRICE ),_
   dbh.mp("@cms_RENTAL_SUP_PRICE",	adInteger,	4,	CMS_RENTAL_SUP_PRICE ),_
   dbh.mp("@cms_SUB_SUP_PRICE",	adInteger,	4,	CMS_SUB_SUP_PRICE ),_
   dbh.mp("@cms_SUB_SUP_COUNT",	adInteger,	4,	CMS_SUB_SUP_COUNT ) _
   ) 
   set rs=dbh.RunSPReturnRS("PrCMS_Content_I_test",paramInfo, conn_duplus)	
   if not (rs.eof and rs.bof) then 
         cms_id = rs(0)
   end if 
   rs.close 
   set rs = nothing 

end if 
'response.write cms_id
 
'2 승인대기   -- 아래부터 update 
' 3 등록보류
' 4 수정대기
' 5 등록완료
' 6 판매중지
'#####################'#####################'#####################'#####################
' 저자정보 관리 
'#####################'#####################'#####################'#####################
' if instr(sel_author_name,",") > 0  then  ' 멀티 저자 저장 / 업데이트 
'    sel_author_name=split(sel_author_name,",")
'    author_info=split(author_info,",")
'    author_desc=split(author_desc,",")
'    aut_id=split(aut_id,",")
'    for i = 0 to Ubound(sel_author_name)
'       if aut_id(i) = "0" then  ' 입력이면 
'          paramInfo = Array( _ 
'          dbh.mp("@AUT_CMS_ID",	adInteger,	4,	CMS_ID ),_
'          dbh.mp("@AUT_DIV",	adVarWChar,	3,	sel_author_name(i)),_
'          dbh.mp("@aut_name",	adVarWChar,	500,	author_info(i)),_
'          dbh.mp("@aut_dtl",	adVarWChar,	4000,	author_desc(i)),_
'          dbh.mp("@aut_id",	adInteger,	4,	0 ) _
'          ) 
'          call dbh.runSP("PrCMS_Author_I",paramInfo, conn_duplus) 
'       else 
'          paramInfo = Array( _ 
'          dbh.mp("@aut_id",	adInteger,	4,	aut_id(i) ),_
'          dbh.mp("@AUT_DIV",	adVarWChar,	3,	sel_author_name(i)),_
'          dbh.mp("@aut_name",	adVarWChar,	500,	author_info(i)),_
'          dbh.mp("@aut_dtl",	adVarWChar,	4000,	author_desc(i))_
'          ) 
'          call dbh.runSP("PrCMS_Author_U",paramInfo, conn_duplus)	 
'       end if 
'    next  
' else   '단일저자 저장/ 업데이트 
'    if aut_id = "0" then  ' 입력이면 
'       paramInfo = Array( _ 
'       dbh.mp("@AUT_CMS_ID",	adInteger,	4,	CMS_ID ),_
'       dbh.mp("@AUT_DIV",	adVarWChar,	3,	 sel_author_name),_
'       dbh.mp("@aut_name",	adVarWChar,	500,	author_info),_
'       dbh.mp("@aut_dtl",	adVarWChar,	4000,	author_desc ),_
'       dbh.mp("@aut_id",	adInteger,	4,	0 ) _
'       ) 
'       call dbh.runSP("PrCMS_Author_I",paramInfo, conn_duplus)	 
'    else 
'       paramInfo = Array( _ 
'       dbh.mp("@aut_id",	adInteger,	4,	aut_id ),_
'       dbh.mp("@AUT_DIV",	adVarWChar,	3,	 sel_author_name),_
'       dbh.mp("@aut_name",	adVarWChar,	500,	author_info),_
'       dbh.mp("@aut_dtl",	adVarWChar,	4000,	author_desc )_
'       ) 
'       call dbh.runSP("PrCMS_Author_U",paramInfo, conn_duplus)	 
'    end if  
' end if  

'#####################'#####################'#####################'#####################
' 검색어 관리 
'#####################'#####################'#####################'#####################
' 검색어는 sp 에서 없으면 입력처리되도록 구현됨 여기서는 
if instr(search_key_hidden,",") > 0 then 
search_key_hidden =split(search_key_hidden ,",") 
   for i = 0 to Ubound(search_key_hidden) - 1 
         paramInfo = Array( _ 
         dbh.mp("@CMS_ID",	adInteger,	4,	CMS_ID ),_
         dbh.mp("@CMK_KeywordNo",	adInteger,	4,	search_key_hidden(i) ) _
         ) 
         call dbh.runSP("PrCMS_Keyword_I",paramInfo, conn_duplus) 
   Next 
end if 
'#####################'#####################'#####################'#####################
' 홍보영상 
'#####################'#####################'#####################'#####################
IF CMM_ID = ""  THEN CMM_ID = "0"
paramInfo = Array( _ 
dbh.mp("@CMS_ID",	adInteger,	4,	CMS_ID ),_
dbh.mp("@CMM_ID",	adInteger,	4,	CMM_ID ),_
dbh.mp("@CMM_DIV",	adVarWChar,	3,	pro_video_sel ),_
dbh.mp("@video_url",	adVarWChar,	100,	video_url) _
) 
call dbh.runSP("PrCMS_MOV_IU",paramInfo, conn_duplus) 
'#####################'#####################'#####################'#####################
'  카테고리 1, 2 관리 
'#####################'#####################'#####################'#####################
IF CATE1_ID ="" then CATE1_ID = "0"
paramInfo = Array( _ 
dbh.mp("@CMC_CMS_ID",	adInteger,	4,	 CMS_ID ),_
dbh.mp("@CMC_ID",	adInteger,	4,	  CATE1_ID),_
dbh.mp("@CMC_ContentcategoryNo",	adInteger,	4,	 category_1) _
) 
call dbh.runSP("[PrCMS_Category_IU]",paramInfo, conn_duplus) 

IF CATE2_ID ="" then CATE2_ID = "0"
paramInfo = Array( _ 
dbh.mp("@CMC_CMS_ID",	adInteger,	4,	 CMS_ID ),_
dbh.mp("@CMC_ID",	adInteger,	4,	  CATE2_ID),_
dbh.mp("@CMC_ContentcategoryNo",	adInteger,	4,	 category_2) _
) 
call dbh.runSP("PrCMS_Category_IU",paramInfo, conn_duplus) 





' ,@cms_State_code int
' ,@cms_div1 int
' ,@cms_File_div nchar(3)
' ,@cms_SerisesYN nchar(1)
' ,@cms_Title nvarchar(100)
' ,@cms_Sub_Title nvarchar(1000)
' ,@cms_ORG_tITLE  nvarchar(1000)
' ,@cms_Publish int
' ,@cms_BRAND int
' ,@cms_Paper_Pub_Day date
' ,@cms_Digital_Pub_Day date
' ,@cms_Paper_Price numeric(18, 0) = 0
' ,@cms_Digital_Price numeric(18, 0) = 0
' ,@cms_ISBN nvarchar(50)
' ,@cms_EISBN nvarchar(50)
' ,@cms_PAGE int
' ,@cms_DIV2 int
' ,@cms_ContentText nvarchar(max)
' ,@cms_MarketingCopyText nvarchar(max)
' ,@cms_ContentList nvarchar(4000)
' ,@cms_File_Link nvarchar(1000)
' ,@cms_Download_YN nchar(2)
' ,@cms_MAIN_IMG_LINK nvarchar(1000)
' ,@cms_SUB_IMG_LINK nvarchar(1000)
' ,@cms_Trial_Content_Link nvarchar(1000)
' ,@cms_SAL_DIV nvarchar(3)
' ,@cms_SAL_PRICE numeric(18, 0) = 0
' ,@cms_RENTAL_PRICE numeric(18,0) = 0
' ,@cms_RENTAL_DAY int = 0
' ,@cms_SERVICE_YN  nvarchar(2)
' ,@cms_SERVICE_DAY date
' ,@cms_MEMO nvarchar(4000)
' ,@cms_Resouce_YN nvarchar(2)
' ,@cms_Exclusive_day int = 0
' ,@cms_Sup_Brand int 
' ,@cms_SAL_SUP_PRICE numeric(18,0) = 0
' ,@cms_RENTAL_SUP_PRICE numeric(18,0) = 0
' ,@cms_SUB_SUP_PRICE numeric(18,0) = 0
' ,@cms_SUB_SUP_COUNT int = 0 






' 만들어야 할 기능 정리 
' 시리즈 목록 가져오는 기능 
   ' ,@cms_SerisesYN nchar(1)  이것만 있어도 되는것인가 ? 

' auth  멀티 저자와 내용 어떻게 처리 할것인지.. 정리. 
 ' - 저자 종류 , 저자명 ,저자 내용 입력 


 ' blob 업로드 후 링크 주소를 받아서 처리 

 ' 검색 목록 불러오기 , 검색 저장 
RESPONSE.REDIRECT "CONTENT_REGIST.ASP?cmsID="+CMS_ID
%>

 
 

