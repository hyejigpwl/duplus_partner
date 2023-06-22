<%@ codepage="65001" language="VBScript" %>
<OBJECT PROGID=ASP.PagingHelperMall 		ID=phm  RunAt=Server></OBJECT>
<OBJECT PROGID=Scripting.FileSystemObject   	id=fso 		RUNAT=server> </OBJECT>
<OBJECT PROGID=DAL.DBHelper id=dbh RUNAT=server> </OBJECT>
<!--#include virtual="PARTNER/include/connect.asp"-->
<!--#include virtual="PARTNER/include/function.asp"-->
<!--#include virtual="PARTNER/include/JSON_2.0.4.asp"--> 

<%
 Response.CodePage = 65001
 Response.ChaRset = "UTF-8"
' Response.ChaRset = "EUC-kr"   ' 이걸로 바꿀시 Data 에러남... 
' Response.CodePage = 949
Response.ContentType = "application/json"
 Response.Buffer=true
Response.CacheControl = "no-cache"
Response.Expires = -1
 
goods = request("goods")
startDate = Request("startDate")
endDate = Request("endDate")
endDate = DateAdd("d",1, CDate(endDate))

brand_code_sel = Request("brand_code_sel")
pbcmCode_sel = Request("pbcmCode_sel")
b_name = trim(Request("b_name"))
a_name = trim(Request("a_name"))

sql_where1 = ""
if goods <> "" then 
    if instr(goods, "unr_book") > 0 then  ' eisbn-미등록도서 검색이면 
    sql_where1 = " and CMS_Eisbn = ''  "
    else
    sql_where1 = sql_where1&""
    end if 

    if instr(goods, "n_book") > 0 then  '  일반도서냐,  
    sql_where1 = sql_where1&" and CMS_div1 = 1 "
    else
    sql_where1 = sql_where1&""
    end if 

    if instr(goods, "a_book") > 0 then  '    오디오북이냐 .. 
    sql_where1 = sql_where1&" and CMS_div1 = 3 "
    else
    sql_where1 = sql_where1&""
    end if 

    if instr(goods, "all") > 0 then  ' 전체검색
    sql_where1 = ""
    end if 
end if 

sql_where2 = ""
if startDate <> "" then 
    sql_where2 = " and cms_Wdate between '"&startDate&"' and '"&endDate&"' "
end if 

sql_where3 = ""
if brand_code_sel <> "" then 
    if brand_code_sel <> 0 then 
    sql_where3 = " and CMS_Publish ="&brand_code_sel&" " 
    end if 
end if 

sql_where4 = ""
if pbcmCode_sel <> "" then 
    if pbcmCode_sel <> 0  then 
    sql_where4 = " and cms_state_code = "&pbcmCode_sel&" "
    end if 
end if 

IF A_name <> "" then
    aa_sql = " join [TbCMS_Author] on cms_id = AUT_CMS_ID"
    a_sql = " AND aut_name like N'%"&A_name&"%' "
end if 

b_sql = ""
if b_name <> "" then 
    b_sql = "and  CMS_TITLE LIKE N'%"&b_name&"%' "
end if 


  
Dim isSuccess,   resultMsg   ,sql
Dim rs, jsa
	 

SQL = "SELECT top 1000 " &_
" stuff((select ','+Aut_name from [TbCMS_Author]" &_
" where aut_cms_id = cms_id  order by AUT_DIV for xml path ('')),1,1,'') as Authkr, row_number() over(order by cms_wdate desc ) as  ord_ID,CMS_ID, CMS_Contentno,(case  CMS_File_div  when 1 then 'EPUB' when 2 then 'PDF' end) as  CMS_File_div, CMS_Title, contentPublisherName,CMS_EISBN,CMS_SAL_PRICE,CMS_Digital_Price,CMS_Digital_Price,CMS_RENTAL_PRICE,CodeNameKor as CMS_State_code, "& _
" (select ContentcategoryName from TbCMS_Category join TbCM_ContentCategory on CMC_ContentcategoryNo = ContentcategoryNo and DisplayOrder <= 10 where cms_id = cmc_cms_id ) as ContentcategoryName,isnull(CMS_SerisesYN,'N') as CMS_SerisesYN, convert(varchar(10), CMS_WDATE,120) as CMS_WDATE " &_
" FROM [dbo].[TbCMS_Content]  "&_
" join TbCM_ContentPublisher P on ContentPublisherNo = cms_publish " & _ 
" left join TbUtl_CommonCode on cast(Code AS INT) = CMS_State_code"
'" join TbCM_PublisherBrand Br on P.ContentPublisherNo = Br.ContentPublisherNo"  ---    브랜드를 사용하게 되면 주석 해제  / 현재는 출판사    no 로 조회 ..
'" left join [dbo].[TbCMS_Category] on cms_id = cmc_cms_id "&_
'" left join TbCM_ContentCategory  CC on  CMC_ContentcategoryNo = ContentcategoryNo   and DisplayOrder <= 10    "&_

ord_sql = " order by cms_wdate  desc "

if A_name <> "" then 
SQL  = SQL & aa_sql & " where contentPublisherNo = "&CPNum&" and  CodeGroupCode = 'R01'       "&sql_where1 &sql_where2&sql_where3&sql_where4 &a_sql & b_sql & ord_sql
else 
SQL  = SQL  & " where contentPublisherNo = "&CPNum&" and CodeGroupCode = 'R01'      "&sql_where1 &sql_where2&sql_where3&sql_where4  & b_sql & ord_sql
end if 

'RESPONSE.WRITE SQL

		set rs=dbh.RunSQLReturnRS(sql,"", conn_duplus) 
        Set jsa = jsArray() 
		
        While Not (rs.EOF Or rs.BOF)
                Set jsa(Null) = jsObject()
                For Each col In rs.Fields
                        jsa(Null)(col.Name) = col.Value

                        
                Next
        rs.MoveNext
        Wend

		jsa.flush
 
 
rs.close
set rs = nothing
'Erase jsa
set jsa = nothing 
%> 