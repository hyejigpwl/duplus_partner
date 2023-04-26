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

    
%>