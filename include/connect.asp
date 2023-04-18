<%
' duplus db connection 
Const conn_duplus 	    =  "File Name=e:\web_config\connection\duplus.udl"


function iif(arg1, arg2,arg3)
    if arg1 then 
        iif = arg2
    else
        iif = arg3 
    end if 
end function 
%>