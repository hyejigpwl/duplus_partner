<%
' position code gnb 표시용 
Pcode = "0201"
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>두플러스 콘텐츠 파트너 시스템</title>
    <link rel="icon" href="//www.duranno.com/duplus/img/core/favicon-16x16.png" type="/duranno/image/x-icon"> <!-- 파비콘 -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet"><!-- //구글 아이콘폰트 --> 
 
    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->
<%
' position code gnb 표시용 
Pcode = "0201"

startDate = Request.Form("startDate")
endDate = Request.Form("endDate")
if startDate = "" then startDate = date() - 30 
if endDate = "" then endDate = date()
brand_code_sel = Request.Form("brand_code_sel")
pbcmCode_sel = Request.Form("pbcmCode_sel")
b_name = Request.Form("b_name")
a_name = Request.Form("a_name")
goods = Request.Form("goods")
if goods = "" then goods = "all"
'
'"&"&&
cur_search = "startDate="&startDate&"&endDate="&endDate&"&brand_code_sel="&brand_code_sel&"&pbcmCode_sel="&pbcmCode_sel&"&b_name="&b_name&"&a_name="&a_name&"&goods="&goods


'브랜드 목록  
' paramInfo = Array( _
' dbh.mp("@ContentPublisherNo",	advarchar,	10,	"R01") )	
' set rs=dbh.RunSPReturnRS("PrCMS_CommonCode_Q",paramInfo , conn_duplus)	
' if not (rs.eof or rs.bof) then 
' StateList = rs.getRows()
' end if 
' rs.close 

'상태목록 
paramInfo = Array( _
dbh.mp("@ContentPublisherNo",	advarchar,	10,	"R01") )	
set rs=dbh.RunSPReturnRS("PrCMS_CommonCode_Q",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
StateList = rs.getRows()
end if 
rs.close 

set rs = nothing 
%>
    <div class="page_right">
        <main id="content" class="content p_book_list">
            <section class="book_list_wrap">
                <!-- 콘텐츠 조회 제목 START -->
                <h2>
                    <a href="#none" title="메뉴열기" class="open_gnb">
                        <span>콘텐츠 조회</span> 
                    </a>
                </h2>
                <!-- 콘텐츠 조회 제목 END -->
    
                <div class="page_wrap">
                    <!-- 콘텐츠 목록 필터 START -->
                    <form action="" method="post" id="cont_lookup_form" class="form_primary">
                        <fieldset>
                            <legend class="blind">콘텐츠 조회 필터</legend>
    
                            <div class="filter_wrap">
                                <!-- 상품 START -->
                                <p class="goods">
                                    <span class="f_title">상품</span>
    
                                    <span class="chk">
                                        <input type="checkbox" name="goods" id="all" onclick="selectAll(this)" value="all" <%=iif(instr(goods,"all")>0,"checked","")%>>
                                        <label for="all">전체</label>
                                    </span>
    
                                    <span class="chk">
                                        <input type="checkbox" id="unr_book" name="goods" onclick="unselectAll(this)" value="unr_book" <%=iif(instr(goods,"unr_book")>0,"checked","")%>>
                                        <label for="unr_book">E-ISBN 미등록 도서</label>
                                    </span>
                                    
                                    <span class="chk">
                                        <input type="checkbox" id="n_book" name="goods"onclick="unselectAll(this)"  value="n_book" <%=iif(instr(goods,"n_book")>0,"checked","")%>>
                                        <label for="n_book">일반도서</label>
                                    </span>
                                    
                                    <!--<span class="chk">
                                        <input type="checkbox" id="g_book" name="goods" value="g_book">
                                        <label for="g_book">장르도서</label>
                                    </span>-->
                                    
    
                                    <span class="chk">
                                        <input type="checkbox" id="a_book" name="goods" onclick="unselectAll(this)" value="a_book" <%=iif(instr(goods,"a_book")>0,"checked","")%>>
                                        <label for="a_book">오디오북</label>
                                    </span>
                                    
    
                                    <!--<span class="chk">
                                        <input type="checkbox" id="video" name="goods" value="video">
                                        <label for="video">동영상</label>
                                    </span>-->
                                    
                                </p>
                                <!-- 상품 END -->
                                
                                <!-- 등록일자 START -->
                                <p class="regist_date">
                                    <span class="f_title">등록일자</span>
    
                                    <input type="text" name="startDate" value="<%=startDate%>" autocomplete="off" id="startDate">
                                    ~
                                    <input type="text" name="endDate" value="<%=endDate%>" autocomplete="off" id="endDate">
    
                                    <button type="button" id="btn_period_1w" onclick="selectrange(1)">1주</button>
                                    <button type="button" id="btn_period_1m" onclick="selectrange(2)">1개월</button>
                                    <button type="button" id="btn_period_3m" onclick="selectrange(3)">3개월</button>
                                    <button type="button" id="btn_period_1y" onclick="selectrange(4)">1년</button>
                                    <button type="button" id="btn_period_all" onclick="selectrange(5)">전체</button>
                                </p>
                                <!-- 등록일자 END -->
    
                                <div class="form_c_wrap">
                                    <!-- 출판사 START -->
                                    <p class="brand">
                                        <span class="f_title">출판사</span>
                                        <select name="brand_code_sel" id="brand_code_sel">
                                            <option value="all" selected>전체</option>
                                            <option value="10001" selected>두란노</option>
                                            
                                        </select>
                                    </p>
                                    <!-- 출판사 END -->
    
                                    <!-- 상태 START -->
                                    <p class="state">
                                        <span class="f_title">상태</span>
                                        <select name="pbcmCode_sel" id="pbcmCode_sel">
                                            <option value="all">전체</option>
                                            <%if isArray(StateList) then %>
                                            <% for i = 0 to Ubound(StateList,2)%>
                                            <option value="<%=StateList(0,i)%>" <%=iif(pbcmCode_sel=StateList(0,i),"selected","")%>><%=StateList(1,i)%></option>
                                            <%
                                            next
                                            end if %>
                                        </select>
                                    </p>
                                    <!-- 상태 END -->
                                </div>
    
                                <div class="form_c_wrap name_wrap last">
                                    <!-- 도서명 START -->
                                    <p class="book_name">
                                        <span class="f_title">도서명</span>
                                        <input type="text" name="b_name" value="<%=b_name%>">
                                    </p>
                                    <!-- 도서명 END -->
    
                                    <!-- 저자명 START -->
                                    <p class="author_name">
                                        <span class="f_title">저자명</span>
                                        <input type="text" name="a_name" value="<%=a_name%>">
                                    </p>
                                    <!-- 저자명 END -->
                                </div>
                            </div>
                            
                            <div class="btn_wrap">
                                <button type="submit" class="btn_md btn_primary">조회</button>
                            </div>
                            
                        </fieldset>
                    </form>
                    <!-- 콘텐츠 목록 필터 END -->
    <%
' For i = 1 To Request.Form.Count
'     response.write "<br>"&Request.Form.key(i)
' Next    
' response.write "<br>"
' For i = 1 To Request.Form.Count
'     response.write "<br>ID: "&Request.Form.key(i) & "| value:"& request.Form(i)
' Next

' response.write "<br>"
' response.write cur_search
' For i=1 To Request.Form.Count

' response.write "<br>ID : " & Request.Form.Key(i) & " | Value : " &  Request.Form(i)

' Next

%>
                    <div class="table_cont">
                        <h3 class="sub_t">콘텐츠 목록</h3>
    
                        <div class="tab_bwrap">
                            <!-- 콘텐츠 목록은 20개씩 리스트 -->
                            <!-- 전체 도서 목록 START -->
                            <div id="t_b_list_all_wrap">
                                <table id="t_b_list_all" class="display">
                                    <caption>도서 목록</caption>
                                    <thead>
                                        <th scope="col">No.</th>
                                        <th scope="col">상품코드</th>
                                        <th scope="col">파일타입</th>
                                        <th scope="col" xclass="txt_l">도서명</th>
                                        <th scope="col">저자</th>
                                        <th scope="col">출판사</th>
                                        <th scope="col">E-ISBN</th>
                                        <th scope="col">정가</th>
                                        <th scope="col">판매가</th>
                                        <th scope="col">대여가</th>
                                        <th scope="col">카테고리</th>
                                        <th scope="col">시리즈</th>
                                        <th scope="col">상태</th>
                                        <th scope="col">등록일</th>
                                    </thead>
                            
                                    <tbody>
                                        <tr>
                                            <td scope="row" id="num">22</td>
                                            <td id="b_barcode">E230100002</td>
                                            <td id="b_type">EPUB</td>
                                            <td id="b_name" class="txt_l"><a href="content_regist.asp">그리스도인의 초자연적 회복력</a></td>
                                            <td id="b_author">존 엘드리지</td>
                                            <td id="b_brand">두란노</td>
                                            <td  id="b_eisbn">9788953143876</td>
                                            <td id="b_list_price" class="txt_r">15,000</td>
                                            <td id="b_price" class="txt_r">15,000</td>
                                            <td id="b_rental_price" class="txt_r">17,500</td>
                                            <td id="b_category">믿음과성장</td>
                                            <td id="b_series">N</td>
                                            <td id="b_state">승인대기</td>
                                            <td id="b_regist_date">2023-01-05</td>
                                        </tr>
                             
                             
                                    </tbody>
                                </table>
                            </div>
                            <!-- 전체 도서 목록 END -->
    
                        </div>
                        <!-- 콘텐츠 목록 END -->
                    </div>
                    
                </div>
                
            </section>
        </main>
        
        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->
    </div>
    


    <script>
        // 체크박스 전체 클릭시
        function selectAll(selectAll)  {
        const checkboxes = document.getElementsByName('goods');
        
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked;
        })
        }

        if("<%=goods%>" =="all"){
               
                const checkboxes = document.getElementsByName('goods');
        
                checkboxes.forEach((checkbox) => {
                    checkbox.checked = "true"
                })
            }

           // 체크박스 전체 클릭시
        function unselectAll(a)  {
        const checkboxes = document.getElementsByName('goods');
        const idx = a.id
            console.log($("#"+idx).prop("checked"))
        if($("#"+idx).prop("checked")){
           $("#"+idx).attr("checked",true)
            }else{
            $("#"+idx).attr("checked",false)
            }
        $("#all").attr("checked",false)
        }
        
        
        
        
            function selectrange(ran){
                let currentDate = new Date();
                $('input[name="endDate"]').val(((dateFormat(currentDate))));
            switch (ran){
                case 1: 
                    $('input[name="startDate"]').val( dateFormat(dateCalculator(currentDate,-7)) );
                    break;
                case 2:
                    $('input[name="startDate"]').val( dateFormat(dateCalculator(currentDate,-30)) );
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

 
            // "fnRowCallback" : function(nRow, aData, iDisplayIndex){
            //     $("td:first", nRow).html(iDisplayIndex +1);
            //    return nRow;
            // }
        $(document).ready(function () {
            $('#t_b_list_all').DataTable({
                ajax: {url:"../ajax/cntList.asp?<%=cur_search%>", dataSrc: ''},
                columns: [{data:"CMS_ID" }
                            ,{data:"CMS_Contentno"}
                            // ,{data:"CMS_ContentGuid"}
                            // ,{data:"CMS_div1"}
                             ,{data:"CMS_File_div"}
                            ,{data:"CMS_Title", render: function(data, type, row, meta) {
                                if (type === 'display') {
                                    return '<a href="content_regist.asp?cnum=' + row.CMS_Contentno + '">' + data + '</a>';
                                }
                                return data;
                                }
                                }
                            ,{data:"Authkr"} 
                            // ,{data:"CMS_Sub_Title"}
                            // ,{data:"CMS_ORG_tITLE"}
                            ,{data:"contentPublisherName"}
                            //,{data:"CMS_BRAND"}
                            // ,{data:"CMS_Paper_Pub_Day"}
                            // ,{data:"CMS_Digital_Pub_Day"}
                            // ,{data:"CMS_Paper_Price"}
                            // ,{data:"CMS_ISBN"}
                            ,{data:"CMS_EISBN"}
                            // ,{data:"CMS_PAGE"}
                            // ,{data:"CMS_DIV2"}
                            // ,{data:"CMS_ContentText"}
                            // ,{data:"CMS_MarketingCopyText"}
                            // ,{data:"CMS_ContentList"}
                            // ,{data:"CMS_File_Link"}
                            // ,{data:"CMS_FILE_SIZE"}
                            // ,{data:"CMS_Download_YN"}
                            // ,{data:"CMS_MAIN_IMG_LINK"}
                            // ,{data:"CMS_SUB_IMG_LINK"}
                            // ,{data:"CMS_Trial_Content_Link"}
                            // ,{data:"CMS_SAL_DIV"}
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
                            // ,{data:"CMS_RENTAL_DAY"}
                            // ,{data:"CMS_SERVICE_YN"}
                            // ,{data:"CMS_SERVICE_DAY"}
                            // ,{data:"CMS_MEMO"}
                            // ,{data:"CMS_Resouce_YN"}
                            // ,{data:"CMS_Exclusive_day"}
                            // ,{data:"CMS_Sup_Brand"}
                            // ,{data:"CMS_SAL_SUP_PRICE"}
                            // ,{data:"CMS_RENTAL_SUP_PRICE"}
                            // ,{data:"CMS_SUB_SUP_PRICE"}
                            // ,{data:"CMS_SUB_SUP_COUNT"}
                            // ,{data:"CMS_DELFLAG"}
                             ,{data:"ContentcategoryNo"}
                             ,{data:"CMS_SerisesYN"}
                             ,{data:"CMS_State_code"}
                            ,{data:"CMS_WDATE"} 
                            
                    ],
                aaSorting : [],
                "searching":false,

                dom:'Bfrtip',
                
                buttons: [
                    {
                        extend: 'excel'
                        ,text: '엑셀다운로드'
                        ,filename: '콘텐츠 목록<%=date()%>'
				        ,title: '엑셀파일 안에 쓰일 제목'
                    },
                ],

                // 세로 스크롤
                // scrollY: '489px',
                // scrollCollapse: true,

                // 셀 너비 고정
                bAutoWidth:false,
                columnDefs:[
                    {width:"4%",targets:0},
                    {width:"6%",targets:1},
                    {width:"7%",targets:2},
                    {width:"16%",targets:3},
                    {width:"8%",targets:4},
                    {width:"5%",targets:5},
                    {width:"10%",targets:6},
                    {width:"4%",targets:7},
                    {width:"5%",targets:8},
                    {width:"5%",targets:9},
                    {width:"6%",targets:10},
                    {width:"6%",targets:11},
                    {width:"5%",targets:12},
                    {width:"10%",targets:13},
                ]
            }
            );
            

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

        
        

        // datatables.js 수정
        // 한 화면에 20개 항목씩 보이게 수정 230306 혜지
        // 10447줄, 11453줄
        
        // ~개씩 보기로 수정 230306 혜지
        // 11888줄

        // 테이블 밑에 상품 총 개수 명시 230307 혜지
        // 11725줄

        
    </script>
</body>

</html>
