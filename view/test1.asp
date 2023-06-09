<%@ codepage="65001" language="VBScript" %>
<%
' position code gnb 표시용 
Pcode = "0202"
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
 
    <title>두플러스 콘텐츠 파트너 시스템</title>
    <link rel="icon" href="//www.duranno.com/duplus/img/core/favicon-16x16.png" type="/duranno/image/x-icon"> <!-- 파비콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"><!-- //구글 아이콘폰트 --> 
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<!--script src="https://code.jquery.com/jquery-3.5.1.min.js"></!--script-->
<script src="../js/jquery-1.11.2.min.js"></script>
<script Xsrc="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
      <!-- include summernote css/js -->
<link href="../js/summernote-0.8.18-dist/summernote.min.css" rel="stylesheet">
<script src="../js/summernote-0.8.18-dist/summernote.min.js"></script>

  
<OBJECT PROGID=ASP.PagingHelperMall 		ID=phm  RunAt=Server></OBJECT>
<OBJECT PROGID=Scripting.FileSystemObject   	id=fso 		RUNAT=server> </OBJECT>
<OBJECT PROGID=DAL.DBHelper id=dbh RUNAT=server> </OBJECT>

<%
Response.CharSet="utf-8" 
Response.codepage="65001"
Response.ContentType="text/html;charset=utf-8"
 


'if position  = "" then position = "main" 

%>
    


 
    <script src="../js/jquery-ui.js"></script>
    <script src="../js/moment.min.js"></script>
    <script src="../js/datatables.js"></script>
    <script src="../js/daterangepicker.js"></script>
    <script src="../js/jquery.ui.monthpicker.js"></script>
    <!--<script src="https://cdn.jsdelivr.net/npm/chart.js@3.4.1"></script>-->
    <script type="text/javascript" src="../js/jquery.analytics_dashboard.init3.js" charset="utf-8"></script>
    <script src="../js/chart.js"></script>
    <script src="../js/main.js"></script>
    <!-- bos  관련 스크립트 -->
    <script src="https://prd-dplus-bos-krc.azurewebsites.net/js/dx.all.js"></script>
    <link href="https://cdn3.devexpress.com/jslib/22.1.5/css/dx.light.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/babel-polyfill/7.4.0/polyfill.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/exceljs/4.1.1/exceljs.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/2.0.2/FileSaver.min.js"></script>


 
    
<%

%>
</head>
<body>
     

<div class="summernote">summernote 1</div>
<div class="summernote">summernote 2</div>

<script>
$(document).ready(function() {
  $('.summernote').summernote();
});
</script>