<OBJECT PROGID=ASP.PagingHelperMall 		ID=phm  RunAt=Server></OBJECT>
<OBJECT PROGID=Scripting.FileSystemObject   	id=fso 		RUNAT=server> </OBJECT>
<OBJECT PROGID=DAL.DBHelper id=dbh RUNAT=server> </OBJECT>
<!--#include virtual="/partner/include/connect.asp"-->
<!--#include virtual="/partner/include/function.asp"-->
<%
'---------- 한글 처리 
Response.CharSet="utf-8" 
Response.codepage="65001"
'Response.ContentType="text/html;charset=utf-8"

 formList()

BRD_ID = Request.Form("BRD_ID")  ' 존재하면 수정 
qna_title = Request.Form("qna_title")
qna_cont = Request.Form("qna_cont")
BRD_LINK1 = Request.Form("BRD_LINK1")  ' 존재하면 파일 url 

if BRD_ID <> "" then 
mode = request("mode")
code = "005"   '문의사항 
paramInfo = Array( _
dbh.mp( "@MODE",		adVarWChar, 	20,     mode), _
dbh.mp( "@BRD_ID",		adVarWChar, 	8,     BRD_ID), _
dbh.mp( "@BRD_DIV2",		adVarWChar, 	3,     code), _
dbh.mp( "@BRD_TITLE",		adVarWChar, 	500,     qna_title), _
dbh.mp( "@BRD_CONTENTS",		adVarWChar, 	4000,     qna_cont), _
dbh.mp( "@BRD_LINK1",		adVarWChar, 	1000,     BRD_LINK1), _
dbh.mp( "@BRD_USER_ID",		adVarWChar, 	16,     CPNum) _
)
Call dbh.RunSP("PrCMS_Board_Treat",paramInfo , conn_duplus) 
    if mode <> "delete" then 
    response.redirect "qna.asp?BRD_ID="&BRD_ID
    else 
    response.redirect "qna.asp"
    end if 
else 
code = "005"   '문의사항 
response.write CPNum
paramInfo = Array( _
dbh.mp( "@MODE",		adVarWChar, 	20,     "insert"), _
dbh.mp( "@BRD_ID",		adVarWChar, 	8,     1), _
dbh.mp( "@BRD_DIV2",		adVarWChar, 	3,     code), _
dbh.mp( "@BRD_TITLE",		adVarWChar, 	500,     qna_title), _
dbh.mp( "@BRD_CONTENTS",		adVarWChar, 	4000,     qna_cont), _
dbh.mp( "@BRD_LINK1",		adVarWChar, 	1000,     BRD_LINK1), _
dbh.mp( "@BRD_USER_ID",		adVarWChar, 	50,     CPNum) _
)
Call dbh.RunSP("PrCMS_Board_Treat",paramInfo , conn_duplus) 
response.redirect "qna.asp"
end if 

%>