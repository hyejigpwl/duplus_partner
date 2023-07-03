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

mode = Request("mode")
CPNum = Request("CPNum")  ' conetentPublishNumber   홍성사 10001  브랜드랑은 다릉 
name = trim(Request("name")) ' 시리즈명 
ser_id= request("ser_id")
  
if mode = "IN" then 	 
paramInfo = Array( _
dbh.mp("@GUBN",	advarchar,	10,	"INSERT"), _ 
dbh.mp("@SER_CP_ID",	adInteger,	4,	CPNum), _
dbh.mp("@SER_ID",	adInteger,	4,	0), _
dbh.mp("@SER_NAME",	adVarWChar,	200,	name) _
) 
call dbh.runSP("PrCMS_SER_TREAT",paramInfo, conn_duplus) 
end if 

if mode = "OUT" then 
paramInfo = Array( _
dbh.mp("@GUBN",	advarchar,	10,	"DELETE"), _ 
dbh.mp("@SER_CP_ID",	adInteger,	4,	CPNum), _
dbh.mp("@SER_ID",	adInteger,	4,	ser_id) _
) 
call dbh.runSP("PrCMS_SER_TREAT",paramInfo, conn_duplus) 
end if 

if mode = "UP" then 	 
paramInfo = Array( _
dbh.mp("@GUBN",	advarchar,	10,	"UPDATE"), _ 
dbh.mp("@SER_CP_ID",	adInteger,	4,	CPNum), _
dbh.mp("@SER_ID",	adInteger,	4,	ser_id), _
dbh.mp("@SER_NAME",	adVarWChar,	200,	name) _
) 
call dbh.runSP("PrCMS_SER_TREAT",paramInfo, conn_duplus) 
end if 


paramInfo = Array( _
dbh.mp("@GUBN",	advarchar,	10,	"SELECT"), _ 
dbh.mp("@SER_CP_ID",	adInteger,	4,	CPNum) _
)
set rs=dbh.RunSPReturnRS("PrCMS_SER_TREAT",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
SERList = rs.getRows()
end if 
rs.close  
set rs = nothing
 if isArray(SERList) then %>
<option value="0">선택해 주세요</option>
<% for i = 0 to Ubound(SERList,2)%>
<option value="<%=SERList(0,i)%>"  data-value="<%=SERList(3,i)%>"   <%=iif("1"=SERList(0,i),"selected","")%> ><%=SERList(2,i)%></option>
<%
next
end if %>