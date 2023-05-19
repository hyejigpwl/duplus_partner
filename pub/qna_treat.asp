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
BRD_LINK1 = Request.Form("BRD_LINK1")  ' 존재하면 파일 url 
qna_title = Request.Form("qna_title")
qna_cont = Request.Form("qna_cont")
qna_file_name = Request.Form("qna_file_name")


' paramInfo = Array( _
' dbh.mp( "@id",		advarchar, 	16,     "2148204203"), _
' dbh.mp( "@id",		advarchar, 	16,     "2148204203"), _
' dbh.mp( "@id",		advarchar, 	16,     "2148204203"), _
' dbh.mp( "@id",		advarchar, 	16,     "2148204203"), _
' dbh.mp( "@id",		advarchar, 	16,     "2148204203"), _
' )
' set rs=dbh.RunSPReturnRS("up_sel_ptn_ContentPublisher",paramInfo , conn_duplus)	
' if not (rs.eof or rs.bof) then 
' data = rs.getRows()
' end if 
' rs.close 
' set rs = nothing

%>