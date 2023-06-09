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
brand_code_sel = Request("brand_code_sel")
pbcmCode_sel = Request("pbcmCode_sel")
b_name = trim(Request("b_name"))
a_name = trim(Request("a_name"))
 
'   @sup  int   --= 10003    -- 공급자   
' , @day1  datetime --= '2023-06-01 00:00:00'
' , @day2  datetime  -- = '2023-06-30 11:59:59'

Dim isSuccess,   resultMsg   ,sql
Dim rs, jsa
	 
        paramInfo = Array( _
        dbh.mp("@sup",	advarchar,	10,	CPNum), _
        dbh.mp("@day1",	advarchar,	10,	startDate), _
        dbh.mp("@day2",	advarchar,	10,	endDate) _
        ) 
		set rs=dbh.RunSPReturnRS("PrCMS_SaleList",paramInfo, conn_duplus) 
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