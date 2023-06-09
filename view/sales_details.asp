<%@ codepage="65001" language="VBScript" %>
<%
Pcode="0301"
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1,maximum-scale=1, user-scalable=no">
    <!--<meta name="description" content="두플러스 콘텐츠 파트너 시스템" />
    <meta name="keywords" content="두플러스, 두플, 두란노, 복음, 콘텐츠, 오리지널, 오디오북, 전자책, 강의, 구독, 큐티, 신앙, 교회, 목회" />
    <meta name="author" content="duranno" />-->
    <title>두플러스 콘텐츠 파트너 시스템</title>
    <link rel="icon" href="//www.duranno.com/duplus/img/core/favicon-16x16.png" type="/duranno/image/x-icon"> <!-- 파비콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"><!-- //구글 아이콘폰트 --> 
    <!-- sns tag -->
	<!--<meta property="og:type" content="website">
	<meta property="og:site_name" content="두플러스 콘텐츠 파트너 시스템">
	<meta property="og:title" content="두플러스 콘텐츠 파트너 시스템">
	<meta property="og:url" content="https://www.du.plus/duplus.html">
	<meta property="og:image" content="http://www.duranno.com/duplus/img/intro/thumbnail.jpg">
	<meta property="og:description" content="두플러스 콘텐츠 파트너 시스템">-->

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->
<%
startDate = Request.Form("startDate")
endDate = Request.Form("endDate")
test = Request.Form("endDate")
goods_info_sel = Request.Form("goods_info_sel")
if startDate = "" then startDate = cDate(Year(Date())&"-"&Month(Date())&"-1")
if endDate = "" then endDate = date()
sel_brand = Request.Form("sel_brand")
b_name = Request.Form("b_name") 
 
'
'"&"&&
cur_search = "startDate="&startDate&"&endDate="&endDate&"&sel_brand="&sel_brand&"&goods_info_sel="&goods_info_sel&"&b_name="&b_name&"&a_name="&a_name&"&goods="&goods

'브랜드 목록  
paramInfo = Array( _
dbh.mp("@CPNum",	advarchar,	10,	CPNum) )	
set rs=dbh.RunSPReturnRS("PrCMS_BrandList",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
BrandList = rs.getRows()
end if 
rs.close 
%>
    <div class="page_right">
        <main id="content" class="content p_sales_details">
            <!-- 매출내역 제목 START -->
            <h2>
                <a href="#none" title="메뉴열기" class="open_gnb">
                    <span>매출내역</span>
                </a>
            </h2>
            <!-- 매출내역 제목 END -->

            <div class="page_wrap">
                <!-- 필터 START -->
                <form action="" method="post" id="sales_form" class="form_primary">
                    <fieldset>
                        <!--<div class="filter_wrap">
                            <table id="f_sales_details">
                                <caption>매출 내역 필터</caption>
                                <tbody>
                                    <tr>
                                        <th scope="row" class="f_title">판매기간</th>-->
                                        <!--<td colspan="2">[ 시작 월 ] ~ [ 종료 월 ]</td>-->
                                        <!--<td colspan="2">
                                            <span>
                                                <label for="start">[시작 월]</label><input type="month" id="start">
                                            </span>
                                            ~
                                            <span>
                                                <label for="finish">[종료 월]</label><input type="month" id="finish">
                                            </span>
                                        </td>
                                    </tr>
                                    <tr>
                                        <th scope="row" rowspan="2" class="f_title">상품정보</th>
                                        <td class="b_name txt_l">도서명</td>
                                        <td><input type="text" id="i_bname"></td>
                                    </tr>
                                    <tr>
                                        <td class="a_name">저자명</td>
                                        <td><input type="text" id="i_aname"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>-->
                        
                        <div class="filter_wrap">
                            
                            <!-- 판매기간 START  
                            <p class="regist_date">
                                <span class="f_title">판매기간</span>

                                <input type="text" name="startDate" value="" autocomplete="off">
                                ~
                                <input type="text" name="endDate" value="" autocomplete="off">
                            </p>
                            <!-- 판매기간 END -->
                            <!-- 등록일자 START -->
                                <p class="regist_date">
                                    <span class="f_title">판매기간</span>
    
                                    <input type="text" name="startDate" value="<%=startDate%>" autocomplete="off" id="startDate">
                                    ~
                                    <input type="text" name="endDate" value="<%=endDate%>" autocomplete="off" id="endDate">
    
                                    <button type="button" id="btn_period_1w" onclick="selectrange(1)">이번달</button>
                                    <button type="button" id="btn_period_1m" onclick="selectrange(2)">전달</button>
                                    
                                    
                                </p>
                                <!-- 등록일자 END -->


                            <!-- 도서명 START 
                            <p class="book_name">
                                <span class="f_title">상품정보</span>
                                <select name="goods_info_sel">
                                    <option value="B" selected>도서명</option>
                                    <option value="A">저자명</option>
                                </select>
                                <input type="text" name="goods_name_txt">
                            </p>
                            <!-- 도서명 END -->

                             <!-- 출판사 START  
                             <p class="brand last">
                                <span class="f_title">브랜드</span>
                                <select name="sel_brand" style="width:328px;">
                                <option value="all">전체</option>
                                            <%if isArray(BrandList) then %>
                                            <% for i = 0 to Ubound(BrandList,2)%>
                                            <option value="<%=BrandList(2,i)%>" <%=iif( Cint(sel_brand) = Cint(BrandList(2,i)),"selected","")%>><%=BrandList(1,i)%></option>
                                            <%
                                            next
                                            end if %>
                                </select>
                            </p>
                            <!-- 출판사 END -->

                        </div>
        
                        <div class="btn_wrap">
                            <button type="submit" class="btn_primary btn_md">조회</button>
                            <button type="reset" class="btn_primary btn_md btn_light_gray">초기화</button>
                        </div>
                    </fieldset>
                </form>
                <!-- 필터 END -->
    <%
' For i = 1 To Request.Form.Count
'     response.write "<br>"&Request.Form.key(i)
' Next    
' response.write "<br>"
' For i = 1 To Request.Form.Count
'     response.write "<br>ID: "&Request.Form.key(i) & "| value:"& request.Form(i)
' Next

' response.write "<br>"
'  response.write cur_search
'  response.write test & "zzz"
' For i=1 To Request.Form.Count

' response.write "<br>ID : " & Request.Form.Key(i) & " | Value : " &  Request.Form(i)

' Next

%>    
                <!-- 매출내역 START -->
                <div class="table_cont">
                    <h3 class="sub_t">매출내역 목록</h3>

                    <!-- 매출내역, 정산내역은 12개씩 리스트 -->

                    <!-- 매출 내역 목록 START -->
                    <div id="t_sales_details_wrap">
                        <table id="t_sales_details" class="display">
                            <caption>매출 내역</caption>
                            <thead>
                                <th scope="col">상품코드</th>
                                <th scope="col">파일타입</th>
                                <th scope="col" xclass="txt_l">도서명</th>
                                <th scope="col">저자</th>
                                <th scope="col">정가</th>
                                <th scope="col">판매가</th>
                                <th scope="col">대여가</th>
                                <th scope="col">구독가</th>
                                <th scope="col">이월 수량 </th>
                                <th scope="col">구독 갯수 </th>
                                <th scope="col">구독정산부수 </th>
                                <th scope="col">구독 이월 </th>
                                <th scope="col">구독 매출</th>
                                <th scope="col">소장</th>
                                <th scope="col">소장 매출</th>
                                <th scope="col">대여</th>
                                <th scope="col">대여 매출</th>
                                <th scope="col">정산예정액</th>
                            </thead>
                    
                            <tbody>
                                <tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">그리스도인의 초자연적 회복력</td>
                                    <td id="b_author">김요셉</td>
                                    <td id="b_list_price" class="txt_r">15,000</td>
                                    <td id="b_price" class="txt_r">15,000</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rent_num" class="txt_r">35</td>
                                    <td id="b_supply_copy" class="txt_r">2</td>
                                    <td id="b_rent_sales" class="txt_r">30,000</td>
                                    <td id="b_keep_num" class="txt_r">5</td>
                                    <td id="b_keep_sakes" class="txt_r">75,000</td>
                                    <td id="b_rental_num" class="txt_r">5</td>
                                    <td id="b_rental_sales" class="txt_r">37,500</td>
                                    <td id="b_settlement" class="txt_r">29,400</td>
                                    <td id="b_settlement" class="txt_r">29,400</td>
                                </tr>
                    
                                <!--tr>
                                    <td scope="row" id="b_barcode">E230100002</td>
                                    <td id="b_type">EPUB</td>
                                    <td id="b_name" class="txt_l">그리스도인의 초자연적 회복력</td>
                                    <td id="b_author">존 엘드리지</td>
                                    <td id="b_list_price" class="txt_r">15,000</td>
                                    <td id="b_price" class="txt_r">15,000</td>
                                    <td id="b_rental_price" class="txt_r">7,500</td>
                                    <td id="b_rent_num" class="txt_r">35</td>
                                    <td id="b_supply_copy" class="txt_r">2</td>
                                    <td id="b_rent_sales" class="txt_r">30,000</td>
                                    <td id="b_keep_num" class="txt_r">5</td>
                                    <td id="b_keep_sakes" class="txt_r">75,000</td>
                                    <td id="b_rental_num" class="txt_r">5</td>
                                    <td id="b_rental_sales" class="txt_r">37,500</td>
                                    <td id="b_settlement" class="txt_r">29,400</td>
                                </!--tr-->
                                 
                            </tbody>
                        </table>
                    </div>
                    <!-- 매출 내역 목록 END -->
                </div>
                <!-- 매출내역 END -->
            </div>
            
        </main>

        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->
    </div>
 
 
    <script>
        // 달력 input 값 현재달로 설정
        // const startDate =  document.querySelector('input[name="startDate"]');
        // const endDate =  document.querySelector('input[name="endDate"]');

        // const year=new Date().getFullYear();
        // const month=new Date().getMonth()+1;
        // const now_month=`${year}-${month >= 10 ? month: '0'+ month}`

        // startDate.value=now_month;
        // endDate.value=now_month;


        $(document).ready(function () {
            $('#t_sales_details').DataTable({
               ajax: {url:"../ajax/saleList.asp?<%=cur_search%>", dataSrc: ''},
                columns: [ 
                            {data:"CMS_Contentno", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return '<a href="content_regist.asp?cmsID=' + row.CMS_ID + '">' + data + '</a>';
                                }
                                return data;
                                }
                                } 
                            ,{data:"파일타입"}
                            ,{data:"CMS_Title", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return '<a href="content_regist.asp?cmsID=' + row.CMS_ID + '">' + data + '</a>';
                                }
                                return data;
                                }
                                }
                            ,{data:"저자"} 
                             
                            ,{data:"CMS_Digital_Price", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return    comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }
                            ,{data:"CMS_SAL_PRICE", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return   comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }
                            ,{data:"CMS_RENTAL_PRICE", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return   comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }
                            ,{data:"CMS_SUB_SUP_PRICE", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return   comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }                                
                             ,{data:"Bfocnt"}
                             ,{data:"subcnt"}
                             ,{data:"subcopy"}
                             ,{data:"NextCnt"}
                             ,{data:"subPri", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return   comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }   
                             ,{data:"소장cnt"}
                             ,{data:"소장pri", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return   comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }                          
                             ,{data:"대여cnt"}
                             ,{data:"대여pri", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return   comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }                          
                             ,{data:"정산예정금액", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return   comma(data)+"원"  ;
                                }
                                return data;
                                }
                                }   
                            
                    ],
                aaSorting : [],
                "searching":true,

                dom:'Bfrtip',
                
                buttons: [
                    {
                        extend: 'excel'
                        ,text: '엑셀다운로드'
                        ,filename: '(<%=startDate%>_<%=endDate%>)<%=CPName%> 매출내역(<%=date()%>)'
				        ,title: '(<%=startDate%>_<%=endDate%>)<%=CPName%>매출내역(<%=date()%>)'
                    },
                ],
                
                // 셀 너비 고정
                bAutoWidth:false,
                columnDefs:[
                    {width:"6%",targets:0},
                    {width:"6%",targets:1},
                    {width:"16%",targets:2},
                    {width:"5%",targets:3},
                    {width:"5%",targets:4},
                    {width:"5%",targets:5},
                    {width:"5%",targets:6},
                    {width:"5%",targets:7},
                    {width:"4%",targets:8},
                    {width:"6%",targets:9},
                    {width:"4%",targets:10},
                    {width:"6%",targets:11},
                    {width:"4%",targets:12},
                    {width:"6%",targets:13},
                    {width:"6%",targets:14},
                    {width:"6%",targets:15},
                    {width:"6%",targets:16}
                ]
            });

            /*$('input[name="startDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                locale: {
                    format: "YYYY-MM",
                    applyLabel: "확인",
                    cancelLabel: "취소",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
                    monthNames: [
                    "1월",
                    "2월",
                    "3월",
                    "4월",
                    "5월",
                    "6월",
                    "7월",
                    "8월",
                    "9월",
                    "10월",
                    "11월",
                    "12월",
                    ],
                },
                
                },
            );

            $('input[name="endDate"]').daterangepicker(
                {
                
                singleDatePicker: true,
                autoApply:true,
                locale: {
                    format: "YYYY-MM",
                    applyLabel: "확인",
                    cancelLabel: "취소",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
                    monthNames: [
                    "1월",
                    "2월",
                    "3월",
                    "4월",
                    "5월",
                    "6월",
                    "7월",
                    "8월",
                    "9월",
                    "10월",
                    "11월",
                    "12월",
                    ],
                },
                },
            );*/

            
            // $('input[name="startDate"],input[name="endDate"]').monthpicker({
            //     pattern:"yy-mm",
            //     monthNames:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
            //     monthNamesShort:['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
            //     dateFormat:'yy-mm',
            //     yearRange:'c-10:c+10',
                
            // });


 $('input[name="startDate"],input[name="endDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
               // autoUpdateInput: false,
                
                locale: {
                    format: "YYYY-MM-DD",
                    applyLabel: "확인",
                    cancelLabel: "취소",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
                    monthNames: [
                    "1월",
                    "2월",
                    "3월",
                    "4월",
                    "5월",
                    "6월",
                    "7월",
                    "8월",
                    "9월",
                    "10월",
                    "11월",
                    "12월",
                    ],
                }//,
                // startDate: $('input[name="startDate"]').val(),
                // endDate: $('input[name="endDate"]').val(),
                // drops: "auto"//,
                // },
                // function (start, end, label) {
                // $('input[name="startDate"]').val(start.format("YYYY-MM-DD"));
                // $('input[name="endDate"]').val(end.format("YYYY-MM-DD"));
                // console.log("A new date selection was made: " +
                //     start.format("YYYY-MM-DD") +
                //     " to " +
                //     end.format("YYYY-MM-DD")
                // );
                 }
            );



        });



        
            function selectrange(ran){
                let currentDate = new Date();
                $('input[name="endDate"]').val(((dateFormat(currentDate))));
                const year=new Date().getFullYear();
                const month=new Date().getMonth()+1;
                const day=new Date().getDate()
                // 전달 1일 
                const prevfristday = new Date(currentDate.getFullYear(), currentDate.getMonth() - 1, 1);
                //const prevendday = new Date(currentDate.getFullYear(), currentDate.getMonth() - 1, 1);
            switch (ran){
                case 1: 
                    $('input[name="startDate"]').val( dateFormat(dateCalculator(currentDate,-(day-1))) );
                    break;
                case 2:
                    $('input[name="startDate"]').val( dateFormat(prevfristday) );
                    $('input[name="endDate"]').val( dateFormat(dateCalculator(currentDate,-day))  );

                    break;
                case 3:
                    $('input[name="startDate"]').val(  dateFormat(dateCalculator(currentDate,-90)) );
                    break;
                case 4:
                    $('input[name="startDate"]').val(  dateFormat(dateCalculator(currentDate,-365)) );
                    break;
                case 5:
                    $('input[name="startDate"]').val('1900-01-01');
                    break;
                default :
                    $('input[name="startDate"]').val( dateFormat(dateCalculator(currentDate,-30)) );
                    break;
                }
            }
        // 한 화면에 20개 항목씩 보이게 수정 230306 혜지
        // 10447줄, 11453줄
        
        // ~개씩 보기로 수정 230306 혜지
        // 11888줄

        
        
    </script>
</body>


 


</html>
