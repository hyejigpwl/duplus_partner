<OBJECT PROGID=ASP.PagingHelperMall 		ID=phm  RunAt=Server></OBJECT>
<OBJECT PROGID=Scripting.FileSystemObject   	id=fso 		RUNAT=server> </OBJECT>
<OBJECT PROGID=DAL.DBHelper id=dbh RUNAT=server> </OBJECT>
<!--#include file="connect.asp"-->
<!--#include file="function.asp"-->
<%

' 저장되는 파일을 받은 부분 

'파일을 업로드 하고 

' 여기서 azure 에 파일을 업로드 해야 하는가.. ? 

For i=1 To Request.Form.Count

response.write "<br>ID : " & Request.Form.Key(i) & " | Value : " &  Request.Form(i)

Next

%>

 

INSERT INTO [dbo].[TbCMS_Content]
           ([CMS_Contentno]
           ,[CMS_State_code]
           ,[CMS_div1]
           ,[CMS_File_div]
           ,[CMS_SerisesYN]
           ,[CMS_Title]
           ,[CMS_Sub_Title]
           ,[CMS_ORG_tITLE]
           ,[CMS_Publish]
           ,[CMS_BRAND]
           ,[CMS_Paper_Pub_Day]
           ,[CMS_Digital_Pub_Day]
           ,[CMS_Paper_Price]
           ,[CMS_Digital_Price]
           ,[CMS_ISBN]
           ,[CMS_EISBN]
           ,[CMS_PAGE]
           ,[CMS_DIV2]
           ,[CMS_ContentText]
           ,[CMS_MarketingCopyText]
           ,[CMS_ContentList]
           ,[CMS_File_Link]
           ,[CMS_Download_YN]
           ,[CMS_MAIN_IMG_LINK]
           ,[CMS_SUB_IMG_LINK]
           ,[CMS_Trial_Content_Link]
           ,[CMS_SAL_DIV]
           ,[CMS_SAL_PRICE]
           ,[CMS_RENTAL_PRICE]
           ,[CMS_RENTAL_DAY]
           ,[CMS_SERVICE_YN]
           ,[CMS_SERVICE_DAY]
           ,[CMS_MEMO]
           ,[CMS_Resouce_YN]
           ,[CMS_Exclusive_day]
           ,[CMS_Sup_Brand]
           ,[CMS_SAL_SUP_PRICE]
           ,[CMS_RENTAL_SUP_PRICE]
           ,[CMS_SUB_SUP_PRICE]
           ,[CMS_SUB_SUP_COUNT]
           ,[CMS_DELFLAG]
           ,[CMS_EDITDATE]
           ,[CMS_WDATE])
     VALUES
           (<CMS_Contentno, int,>
           ,<CMS_State_code, int,>
           ,<CMS_div1, int,>
           ,<CMS_File_div, nchar(3),>
           ,<CMS_SerisesYN, nchar(1),>
           ,<CMS_Title, nvarchar(100),>
           ,<CMS_Sub_Title, nvarchar(1000),>
           ,<CMS_ORG_tITLE, nvarchar(1000),>
           ,<CMS_Publish, int,>
           ,<CMS_BRAND, int,>
           ,<CMS_Paper_Pub_Day, date,>
           ,<CMS_Digital_Pub_Day, date,>
           ,<CMS_Paper_Price, numeric(18,0),>
           ,<CMS_Digital_Price, numeric(18,0),>
           ,<CMS_ISBN, nvarchar(50),>
           ,<CMS_EISBN, nvarchar(50),>
           ,<CMS_PAGE, int,>
           ,<CMS_DIV2, int,>
           ,<CMS_ContentText, nvarchar(max),>
           ,<CMS_MarketingCopyText, nvarchar(max),>
           ,<CMS_ContentList, nvarchar(4000),>
           ,<CMS_File_Link, nvarchar(1000),>
           ,<CMS_Download_YN, nchar(2),>
           ,<CMS_MAIN_IMG_LINK, nvarchar(1000),>
           ,<CMS_SUB_IMG_LINK, nvarchar(1000),>
           ,<CMS_Trial_Content_Link, nvarchar(1000),>
           ,<CMS_SAL_DIV, nvarchar(3),>
           ,<CMS_SAL_PRICE, numeric(18,0),>
           ,<CMS_RENTAL_PRICE, numeric(18,0),>
           ,<CMS_RENTAL_DAY, int,>
           ,<CMS_SERVICE_YN, nvarchar(2),>
           ,<CMS_SERVICE_DAY, date,>
           ,<CMS_MEMO, nvarchar(4000),>
           ,<CMS_Resouce_YN, nvarchar(2),>
           ,<CMS_Exclusive_day, int,>
           ,<CMS_Sup_Brand, int,>
           ,<CMS_SAL_SUP_PRICE, numeric(18,0),>
           ,<CMS_RENTAL_SUP_PRICE, numeric(18,0),>
           ,<CMS_SUB_SUP_PRICE, numeric(18,0),>
           ,<CMS_SUB_SUP_COUNT, int,>
           ,<CMS_DELFLAG, tinyint,>
           ,<CMS_EDITDATE, datetime,>
           ,<CMS_WDATE, datetime,>)
GO

