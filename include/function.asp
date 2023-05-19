<%
' duplus db connection 
 
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
 'response.write "<br>ID : " & Request.Form.Key(i) & " | Value : " &  Request.Form(i)
 response.write "<br>" & Request.Form.Key(i)
 'response.write "<br>" & Request.Form(i)
 Next
end sub
    
%>