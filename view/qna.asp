<%@ codepage="65001" language="VBScript" %>
<%
Pcode = "0402"
%>
<!DOCTYPE html>
<html lang="En">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
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
' position code gnb 표시용 


BRD_ID = request("BRD_ID")
mode = "select"


IF BRD_ID  <> "" THEN 
MODE = "update" 
paramInfo = Array( _
dbh.mp( "@MODE",		adVarWChar, 	20,     "read"), _
dbh.mp( "@BRD_ID",		adVarWChar, 	16,     BRD_ID), _
dbh.mp( "@BRD_DIV2",		adVarWChar, 	16,     ""), _
dbh.mp( "@BRD_TITLE",		adVarWChar, 	500,     ""), _
dbh.mp( "@BRD_CONTENTS",		adVarWChar, 	4000,     ""), _
dbh.mp( "@BRD_LINK1",		adVarWChar, 	1000,     ""), _
dbh.mp( "@BRD_USER_ID",		adVarWChar, 	16,     cLng(CPNum) ) )
set rs=dbh.RunSPReturnRS("PrCMS_Board_Treat",paramInfo , conn_duplus) 
title = rs("BRD_TITLE")
con = rs("BRD_CONTENTS")
link1 = rs("BRD_LINK1") 
rs.close

END IF 
'파일 저장을 위한 guid 생성 
guid = Uguid()
'파일 저장시 blob 에 올려야 함.. 


 
paramInfo = Array( _
dbh.mp( "@MODE",		adVarWChar, 	20,     "select"), _
dbh.mp( "@BRD_ID",		adVarWChar, 	16,     0), _
dbh.mp( "@BRD_DIV2",		adVarWChar, 	16,     ""), _
dbh.mp( "@BRD_TITLE",		adVarWChar, 	500,     ""), _
dbh.mp( "@BRD_CONTENTS",		adVarWChar, 	4000,     ""), _
dbh.mp( "@BRD_LINK1",		adVarWChar, 	1000,     ""), _
dbh.mp( "@BRD_USER_ID",		adVarWChar, 	16,     cLng(CPNum) ) )
set rs=dbh.RunSPReturnRS("PrCMS_Board_Treat",paramInfo , conn_duplus) 
if not (rs.eof or rs.bof) then 
boardList = rs.getRows()
end if 
rs.close 
set rs = nothing 
%>
    <div class="page_right">
        <main id="content" class="content p_qna">
            <section class="">
                <!-- 제목 START -->
                <h2>
                    <a href="#none" title="메뉴열기" class="open_gnb">
                        <span>문의하기</span>
                    </a>
                    
                </h2>
                <!-- 제목 END -->
    
                <div class="page_wrap">

                    <!-- 질문 등록 START   enctype="miltipart/form-data"   -->
                    <div class="qna_wrap">
                        <form action="qna_treat.asp" method="post" id="qna_regist_form" name="qna_regist_form" class="form_primary"  onsubmit="return form_check()">
                        <input type="hidden" name="BRD_ID" value="<%=BRD_ID%>" >
                        <input type="hidden" name="BRD_Link1" value="" >
                        <input type="hidden" name="mode" value="<%=mode%>" >
                        <input type="hidden" id="HIddenGuid" value="<%=guid%>">
                            <fieldset>
                                <legend class="blind">문의하기 질문 등록</legend>

                                <div class="basic_info table_wrap">
                                    <h3 class="sub_t">질문 등록</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">문의 제목</th>
                                                <td>
                                                    <input type="text" name="qna_title" id="qna_title" value="<%=title%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">문의 내용</th>
                                                <td>
                                                    <textarea name="qna_cont" id="qna_cont" cols rows="5" style="height:auto" onchange="textareaAutoHeight(this.text)"><%=con%></textarea>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">파일 첨부</th>
                                                <td class="file_box">
                                                    <input type="text" id="qna_file_name" name="qna_file_name" readonly>
                                                    <label for="qna_file">파일선택</label>
                                                    <input type="file" id="qna_file" onchange="checkFile(event)"> <span id="file_size"></span>
                                                    <%IF link1 <> "" THEN 
                                                        if instr(lcase(link1),".jpg") > 0  or  instr(lcase(link1),".gif") > 0 then 
                                                    %>
                                                    <IMG src="https://dplusblobstgprd.blob.core.windows.net/<%=link1%>" style="max-width:400px" >
                                                    <%  END IF 
                                                      END IF %>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
        
                                <!-- 등록하기 버튼 START -->
                                <div class="btn_wrap" style="text-align:center; margin-top:50px;">
                                    <button type="submit" class="btn_md btn_primary" ><%=iif(mode="update","수정하기","등록하기")%></button>
                                </div>
                                 
                                <!-- 등록하기 버튼 END -->
                        </form>
                    </div>
                    <!-- 질문 등록 END -->             
                    
                    
                    <!-- 질문 목록 START -->
                    <section class="qna">
                        <h3 class="sub_t">질문 목록</h3>
                        <table id="t_qna" class="display t_acco">
                            <thead>
                                <th scope="col">No</th>
                                <th scope="col">제목</th>
                                <th scope="col">작성일</th>
                                <th scope="col">비고</th>
                            </thead>

                            <tbody> 
                            <%if isArray(boardList) then 
                                for i = 0 to Ubound(boardList,2)
                                if (boardList(5,i) <> "") then  ' 답변 여부 
                                    replay = true
                                    else
                                    replay = false
                                    end if 
                            %>
                                <tr>    
                                    <td scope="row"><a href="qna.asp?BRD_ID=<%=boardList(1,i)%>"><%=boardList(0,i)%></a></td>
                                    <td class="txt_l">
                                        <div class="faq_container">
                                            <a href="#none">[<%=iif(replay,"답변완료","미답변")%>] <%=boardList(3,i)%></a>
                                            <div class="faq_answer question_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                    <!--
                                                        <tr class="faq_table_title">
                                                            <th scope="row">문의 종류</th>
                                                            <td id="">기타 문의</td>
                                                        </tr>

                                                        <tr>
                                                            <th scope="row">문의 도서</th>
                                                            <td id="">()</td>
                                                        </tr>-->

                                                        <tr class="q_cont">
                                                            <th scope="row">문의 내용</th>
                                                            <td id="" class="q_cont"><%=boardList(4,i)%>
                                                            </td>
                                                        </tr>
                                                        <%if boardList(6,i) <> "" then  



                                                         
                                                        if instr(lcase(boardList(6,i)),".jpg") > 0  or  instr(lcase(boardList(6,i)),".gif") > 0 then 
                                                    %>
                                                    <IMG src="https://dplusblobstgprd.blob.core.windows.net/<%=boardList(6,i)%>" style="max-width:400px" >
                                                    <%  END IF 
                                                      END IF %>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <%if replay then %>
                                            <div class="faq_answer answer_wrap">
                                                <table>
                                                    <colgroup>
                                                        <col class="th">
                                                        <col class="td">
                                                    </colgroup>

                                                    <tbody>
                                                        <tr class="faq_table_title">
                                                            <th scope="row">등록된 답변</th>
                                                            <td><span id="answerer">관리자</span id="answer_time"> <span></span></td>
                                                        </tr>

                                                        <tr class="q_cont">
                                                            <th scope="row" class="blind">답변 내용</th>
                                                            <td id="a_list_cont" class="a_cont"><%=boardList(5,i)%>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <%end if %>
                                        </div>
                                    </td>
                                    <td><%= dateadd("h",9,boardList(2,i))%></td>
                                    <%if not replay then %>
                                    <td><a href="qna.asp?BRD_ID=<%=boardList(1,i)%>" style="width:50px;height:0px;">[수정]</a><a href="javascript:;del(<%=boardList(1,i)%>)" style=" height:0px;">[삭제]</a>
                                    </td>
                                    <%end if %>
                                </tr>
                            <%next 
                            end if %>
                            </tbody>
                        </table>
                    </section>
                    <!-- 질문 목록 END -->
                </div>

            </section>
        </main>
        

        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->

    </div>
 CMS_ID, BRD_ID, BRD_DAY, BRD_TITLE, BRD_CONTENTS, BRD_RE_BRDID,BRD_LINK1, BRD_CNT
    <script>
        $(document).ready(function(){

             // input=file 파일명 연결
            $("#qna_file").on('change',function(){
                var fileName = $(this).val();
                $("#qna_file_name").val(fileName);
            });

             // 문의하기 표
             $('#t_qna').DataTable({
                // ajax: {url:"../ajax/brdList.asp?<%=cur_search%>", dataSrc: ''},
                // columns: [{data:"CMS_ID" }
                //             ,{data:"BRD_TITLE"}
                //             // , render: function(data, type, row, meta) {
                //             //     if (type === 'display') {
                //             //         return '<a href="qna.asp?BRD_ID=' + row.BRD_ID + '">' + data + '</a>';
                //             //     }
                //             //     return data;
                //             //     }
                //             //     } 
                //             ,{data:"BRD_DAY" }
                //             ,{data:"BRD_ID", render: function(data, type, row, meta) {
                //                 if (type === 'display') {
                //                     return '<a href="qna.asp?BRD_ID=' + row.BRD_ID + '">' + data + '</a>';
                //                 }
                //                 return data;
                //                 }
                //                 } 
                            
                //     ],
                    aaSorting : [],
                "searching":false,
                pageLength:5,
                "lengthChange":false,
                info:false,
                'paging':true,
             

                // 셀 너비 고정
                bAutoWidth:false,
                columnDefs:[
                    {width:"10%",targets:0},
                    {width:"55%",targets:1},
                    {width:"20%",targets:2},
                    {width:"15%",targets:3},
                ],

                // DataTables 초기화 옵션, 아코디언탭
                "drawCallback": function() {
                    $("#t_qna_wrapper .faq_answer").hide();
                    $("#t_qna_wrapper .faq_container a").off('click').on('click',function(){
                        $(this).parent().find('.faq_answer').slideToggle('fast');
                    });
                }
            });
        })


  let file=""
function checkFile(event) {
  file = event.target.files[0];
  //console.log(file)
  const reader = new FileReader();
  reader.onloadend = function() {
    const content = reader.result;
    const sizeInBytes = content.length;
    const sizeInKilobytes = sizeInBytes / 1024;
   // console.log(`File size: ${sizeInKilobytes} KB`);
    $("#file_size").html(byteCalculation(sizeInBytes))
  }
  reader.readAsText(file); 
}

  function AzureUpload(){
    
        var imageForm = new FormData();
        var today = new Date().toISOString().substring(0,10).replace(/-/g,'');
        imageForm.append("file", file);
        imageForm.append("mainFolder", "CM/Parthner/"+today+"/" + $("#HIddenGuid").val());
        imageForm.append("fileName", file.name); 
              $.ajax({
                url: "https://prd-dplus-bos-krc.azurewebsites.net/System/FileUpload",
                type: "POST",
                data: imageForm,
                async: false,
                success: function (data) {
                   $("input[name='BRD_Link1']").val(data);
                 },
                //success:  changeUrl(data),
                contentType: false,
                processData: false,
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    if (errorThrown == "Unauthorized") {

                        alertBox("인증 기한 만료. 로그인 페이지로 돌아갑니다.");
                       // location.href = "/Account/Login";
                       return false; 
                    }
                    else {
                        alertBox("error : " + textStatus);
                        return false; 
                    }
                }

            }); 

    }
 

      // 유효성 검사
        async function form_check(){
            const qna_title=document.getElementById("qna_title");
            const qna_cont=document.getElementById("qna_cont");
         
            /* 문의제목 입력 여부 */
            if(qna_title.value==""){
                alert("문의 제목을 입력하세요.");
                qna_title.focus();
                return false;
            }

            /* 문의내용 입력 여부 */
            if(qna_cont.value==""){
                alert("문의 내용을 입력하세요.");
                qna_cont.focus();
                return false;
            }

            if(file!==""){ 
                    await AzureUpload()
            }
        };

        function del(bid){
            if(confirm("삭제 하시겠습니까?") ){
                $("input[name=mode").val('delete')
                $("input[name=BRD_ID").val(bid)
            var frm = document.qna_regist_form
            frm.submit()
            }
        }


        function textareaAutoHeight(){
                    let val = $("#qna_cont").val()
                    const rowCount = val.split(/\r\n|\r|\n/).length;
                    const targetTextarea = document.querySelector(`#qna_cont`);

                    if(rowCount < 4)
                        targetTextarea.style.height="52px"; //특정 줄 수 보다 작아지면 height가 이것보다 작아지지 않았으면 한다
                    else
                        targetTextarea.style.height= (rowCount * 18) + "px";
            }
    </script>
    </body>
    </html>