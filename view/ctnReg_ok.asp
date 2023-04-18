<%


For i=1 To Request.Form.Count

response.write "<br>ID : " & Request.Form.Key(i) & " | Value : " &  Request.Form(i)

Next

%>