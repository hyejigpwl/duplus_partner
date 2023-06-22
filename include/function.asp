
<%
' duplus db connection 

'check login ..
CPNum = session("CPNum")
CPName = session("CPName")
if CPNum = "" then  CPNum = "10003"
if CPName = "" then  CPName = "hongSungSa"

' CPNum = "10001"
' CPName = "duranno"
'' 나중에 세션이 없으면 로그 아웃 처리 하여야 함... 기본값이 들어가면 안됌 !!


 
function iif(arg1, arg2,arg3)
    if arg1 then 
        iif = arg2
    else
        iif = arg3 
    end if 
end function  

' 컨텐츠 입력시 guid  생성 
Function Uguid()
guid = uCase(server.createobject("scriptlet.typelib").guid)
guid = Mid(guid,2,36)
Uguid = guid
End Function

' form 전달 매개변수 확인용 
Sub formList()
 For i=1 To Request.Form.Count
 response.write "<br>ID : " & Request.Form.Key(i) & " | Value : " &  Request.Form(i)
 'response.write "<br>" & Request.Form.Key(i)
 'response.write "<br>" & Request.Form(i)
 Next
end sub

function filesizechk(fsize)
    
Dim s
s = Array("bytes", "KB", "MB", "GB", "TB", "PB")

Dim e
e = Clng(Log(fsize) / Log(1024))

If e = "-Infinity" Then
    response.write  "0 " & s(0)
Else
    response.write      FormatNumber(Clng(fsize) / (1024 ^ Clng(e)), 2) & " " & s(e)
End If 
'    s = ["bytes", "KB", "MB", "GB", "TB", "PB"]

'   var e = Math.floor(Math.log(bytes) / Math.log(1024));

'   if (e == "-Infinity") {
'     return "0 " + s[0];
'   } else {
'     return ( bytes / Math.pow(1024, Math.floor(e)) ).toFixed(2) + " " + s[e];
'   }
end function



function fname(arg)
dim f , l
f = split(arg,"/")
l = Ubound(f)
fname=f(l)
end function 
%>