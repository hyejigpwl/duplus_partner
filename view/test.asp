


 <%
 'guid 생성 
 Function Lguid ()
guid = LCase(server.createobject("scriptlet.typelib").guid)
guid = Mid(guid,2,36)
Lguid = guid
End Function
Function Uguid ()
guid = uCase(server.createobject("scriptlet.typelib").guid)
guid = Mid(guid,2,36)
Uguid = guid
End Function

    response.write Uguid
 %>