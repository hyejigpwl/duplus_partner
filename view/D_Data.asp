<OBJECT PROGID=DAL.DBHelper 			id=dbh RUNAT=server></OBJECT>
<OBJECT PROGID=Scripting.Dictionary 		id=dic RUNAT=server></OBJECT>
<OBJECT PROGID="AesCrypto2.AES"		id=AES RUNAT=server></OBJECT>
<!--#include virtual="/Common/Common.asp"-->
<!--#include virtual="api/include/JSON_2.0.4.asp"--> 

<%
 Response.CodePage = 65001
 Response.ChaRset = "UTF-8"
' Response.ChaRset = "EUC-kr"   ' 이걸로 바꿀시 Data 에러남... 
' Response.CodePage = 949
Response.ContentType = "application/json"


Response.Buffer=true
Response.CacheControl = "no-cache"
Response.Expires = -1
 'https://www.duranno.com/api/info/dashboard.asp?mode=newbe_join&SDate=2022-06-01&EDate=2022-06-30

'================== 아래는 post 용 
mode = trim(request("mode"))
SDate = trim(request("SDate"))
EDade = trim(request("EDate"))

  
Dim isSuccess,   resultMsg   ,sql
Dim rs, jsa
		
		if mode <> "" then 
		sql = "exec UP_DPLUS_bos_dashboard_select  '"& mode &"','"& SDate &"','"& EDade &"' "
                
		else 
		response.write "{""result"":""No Data""}"
		response.end 
		end if 
 
		set rs=dbh.RunSQLReturnRS(sql,"", CONN_Main) 
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