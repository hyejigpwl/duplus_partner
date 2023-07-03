<%@ codepage="65001" language="VBScript" %>
<%
' position code gnb 표시용 
Pcode = "0401"
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

CPNum = 10001
'PrCM_ContentPublisher_Q


paramInfo = Array( _
dbh.mp("@ContentPublisherNo",	advarchar,	10,	CPNum) )	
set rs=dbh.RunSPReturnRS("PrCMS_ContentPublisher_Q",paramInfo , conn_duplus)	
if not (rs.eof or rs.bof) then 
ContentPublisherNo = rs("ContentPublisherNo")
ContentPublisherName = rs("ContentPublisherName")
ContentPublisherIntroText = rs("ContentPublisherIntroText")
BusinessNumber = rs("BusinessNumber")
RepresentativeName = rs("RepresentativeName")
Address1 = rs("Address1")
Address2 = rs("Address2")
ZipCode = rs("ZipCode")
ChargePersonName = rs("ChargePersonName")
CompanyEmail = rs("CompanyEmail")
CompanyPhone = rs("CompanyPhone")
ChargePersonPhone = rs("ChargePersonPhone")
CalculatePersonName = rs("CalculatePersonName")
CalculatePersonEmail = rs("CalculatePersonEmail")
CalculatePersonPhone = rs("CalculatePersonPhone")
AccountBank = rs("AccountBank")
AccountNumber = rs("AccountNumber")
DealStatusKindCode = rs("DealStatusKindCode")
InternalChargePersonName = rs("InternalChargePersonName")
BusinessNumberFileUrl = rs("BusinessNumberFileUrl")
AccontNumberFileUrl = rs("AccontNumberFileUrl")
AccountManager = rs("AccountManager")
RegPersonNo = rs("RegPersonNo")
RegDt = rs("RegDt")
UpdatePersonNo = rs("UpdatePersonNo")
UpdateDt = rs("UpdateDt")
Password = rs("Password")
end if 
rs.close  
set rs = nothing 
%>


    <div class="page_right">
        <main id="content" class="content p_content_regist">
            <section class="">
                <!-- 제목 START -->
                <h2>
                    <a href="#none" title="메뉴열기" class="open_gnb">
                        <span>출판사 정보 관리</span>
                    </a>
                    
                </h2>
                <!-- 제목 END -->
    
                <div class="page_wrap">

                    <!-- 출판사 정보 관리 START -->
                    <div class="content_regist">
                        <form action="" method="post" id="my_page_form" class="form_primary" onsubmit="return form_check()">
                            <fieldset>
                                <legend class="blind">출판사 정보 관리</legend>
    
                                <div class="basic_info table_wrap">
                                    <h3 class="sub_t">기본 정보</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">아이디</th>
                                                <td colspan="3">
                                                    <input type="text" value="<%=BusinessNumber%>" name="u_id" disabled>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">비밀번호 변경</th>
                                                <td>
                                                    <input type="password" name="u_pw" id="u_pw" value="<%=Password%>">
                                                </td>
                                                <th scope="row">비밀번호 확인</th>
                                                <td>
                                                    <input type="password" name="u_pw_chk" id="u_pw_chk">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>출판사명</th>
                                                <td colspan="3">
                                                    <input type="text" value="<%=ContentPublisherName%>" name="brand_name" disabled>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <th>대표자명</th>
                                                <td>
                                                    <input type="text" value="<%=RepresentativeName%>" name="repre_name" disabled>
                                                </td>
                                                <th>사업자번호</th>
                                                <td>
                                                    <input type="text" value="<%=BusinessNumber%>" name="business_num" disabled>
                                                </td>
                                            </tr>
                                            <tr class="">
                                                <th>주소</th>
                                                <td colspan="3">
                                                    <p>
                                                        <input type="text" id="address" name="address">
                                                        <button type="button" id="adsearch" class="btn_line gray_btn_line">주소검색</button>
                                                    </p>
                                                    
                                                    <p class="middle_input last">
                                                        <input type="text" id="basic_address" name="basic_address" value="<%=address1%>">
                                                        <input type="text" id="detail_address" name="detail_address" value="<%=address2%>">
                                                    </p> 
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                
                                <div class="content_mgr table_wrap">
                                    <h3 class="sub_t">콘텐츠 담당자</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">이름</th>
                                                <td colspan="3">
                                                    <input type="text" id="cont_m_name" name="cont_m_name" value="<%=ChargePersonName%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">전화번호</th>
                                                <td>
                                                    <input type="text" id="cont_m_phe" name="cont_m_phe" value="<%=CompanyPhone%>">
                                                    <!--span class="chk">
                                                        <input type="checkbox" id="cont_phone_rec" name="cont_phone_rec" value="Y">
                                                        <label for="cont_phone_rec">수신 여부</label>
                                                    </!--span-->
                                                </td>
                                                <th scope="row">이메일</th>
                                                <td>
                                                    <input type="text" id="cont_m_eml" name="cont_m_eml" value="000-0000-0000">
                                                    <!--span class="chk">
                                                        <input type="checkbox" id="cont_mail_rec" name="cont_mail_rec" value="Y">
                                                        <label for="cont_mail_rec">수신 여부</label>
                                                    </!--span-->
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </div>

                                <div class="cal_mgr table_wrap">
                                    <h3 class="sub_t">정산 담당자</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">이름</th>
                                                <td colspan="3">
                                                    <input type="text" id="cal_m_name" name="cal_m_name" value="<%=CalculatePersonName%>">
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">전화번호</th>
                                                <td>
                                                    <input type="number" id="cal_m_phe" name="cal_m_phe" value="<%=CalculatePersonPhone%>">
                                                    <!--span class="chk">
                                                        <input type="checkbox" id="cal_phone_rec" name="cal_phone_rec" value="Y">
                                                        <label for="cal_phone_rec">수신 여부</label>
                                                    </!--span-->
                                                </td>
                                                <th scope="row">이메일</th>
                                                <td>
                                                    <input type="text" id="cal_m_eml" name="cal_m_eml" value="<%=CalculatePersonEmail%>">
                                                    <!--span class="chk">
                                                        <input type="checkbox" id="cal_mail_rec" name="cal_mail_rec" value="Y">
                                                        <label for="cal_mail_rec">수신 여부</label>
                                                    </!--span-->
                                                </td>
                                            </tr>
                                           
                                        </tbody>
                                    </table>
                                </div>

                                <div class="stmt_info table_wrap">
                                    <div class="flex" style="align-items: center;">
                                        <h3 class="sub_t">정산 정보</h3>
                                        <p class="title_txt">정산정보 변경 시, duplus@duranno.com 또는 제휴 담당자에게 연락 바랍니다. (사업자등록증, 통장사본 필수)</p>
                                    </div>
                                    
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">은행</th>
                                                <td colspan="3">
                                                    <%=AccountBank%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">계좌번호</th>
                                                <td colspan="3">
                                                    <%=AccountNumber%>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">예금주</th>
                                                <td colspan="3">
                                                    
                                                </td>
                                            </tr>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div class="contract_info table_wrap">
                                    <h3 class="sub_t">계약 정보</h3>
                                    
                                    <table class="table_input">
                                        <colgroup>
                                            <col style="width:8.8%;">
                                            <col style="width:8.8%;">
                                            <col style="width:20%;">
                                            <col style="width:10%;">
                                            <col style="width:20%;">
                                            <col style="width:20%;">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">계약 등록일</th>
                                                <td colspan="2">
                                                     
                                                </td>
                                                <th scope="row">계약 담당자</th>
                                                <td colspan="2">
                                                     
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row" rowspan="3">정산율</th>
                                                <th>구독</th>
                                                <td colspan="4">
                                                    <span id="stm_sb">12회 노출 시 1 Copy 80%</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th>소장/대여</th>
                                                <td colspan="4">
                                                    <span id="stm_rt">판매가 70%</span>
                                                </td>
                                            </tr>
                                            <tr>
                                                <th scope="row">제작 등록</th>
                                                <td colspan="4">
                                                    <span id="stm_pd">ㄹㅇㄹㅇㄹ</span>
                                                </td>
                                            </tr>                                          
                                        </tbody>
                                    </table>
                                </div>

                                <div class="add_info table_wrap">
                                    <h3 class="sub_t">추가 정보</h3>
                                    <table class="table_input">
                                        <colgroup>
                                            <col class="th">
                                            <col class="td">
                                            <col class="th">
                                            <col class="td">
                                        </colgroup>
                                        <tbody>
                                            <tr>
                                                <th scope="row">출판사 로고</th>
                                                <td class="file_box">
                                                    <input type="text" id="l_file_name" name="l_file_name" readonly>
                                                    <label for="l_file">파일선택</label>
                                                    <input type="file" id="l_file" onchange="setThumbnail(event)">
                                                    <div id="image_container" class="thumb_img"></div>

                                                    <ul class="file_txt">
                                                        <li>지원포맷 : .jpg, .png</li>
                                                        <li>최대용량 : 1MB 이하</li>
                                                        <li>권장사이즈 : 가로 860px</li>
                                                    </ul>
                                                </td>

                                                <th scope="row">홍보 이미지</th>
                                                <td class="file_box">
                                                    <input type="text" id="p_file_name" name="p_file_name" readonly>
                                                    <label for="p_file">파일선택</label>
                                                    <input type="file" id="p_file" onchange="setThumbnail2(event)">
                                                    <div id="image_container2" class="thumb_img"></div>

                                                    <ul class="file_txt">
                                                        <li>지원포맷 : .jpg, .png</li>
                                                        <li>최대용량 : 1MB 이하</li>
                                                        <li>권장사이즈 : 가로 860px</li>
                                                    </ul>
                                                </td>
                                            </tr>
                                        
                                        </tbody>
                                    </table>
                                </div>

                                <!-- 하단 버튼 START -->
                                <div class="btn_wrap">
                                    <button type="submit" class="btn_md btn_primary">저장하기</button>
                                    <button type="reset" class="btn_md btn_primary btn_light_gray">취소(초기화)</button>
                                </div>
                                <!-- 하단 버튼 END -->

                            </fieldset>
                        </form>
                    </div>
                    <!-- 출판사 정보 관리 END -->                    
                </div>

            </section>
        </main>
        

        <!-- 푸터 & 하단 탭 & 플로팅 START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- 푸터 & 하단 탭 & 플로팅 END -->

    </div>
    
    
    

    <script>

        // 파일 업로드-표지
        function setThumbnail(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }

      // 파일 업로드-상세
      function setThumbnail2(event) {
        var reader = new FileReader();

        reader.onload = function(event) {
          var img = document.createElement("img");
          img.setAttribute("src", event.target.result);
          document.querySelector("div#image_container2").appendChild(img);
        };

        reader.readAsDataURL(event.target.files[0]);
      }

        $(document).ready(function () {
           
            

            $('input[name="bookDate"],input[name="ebookDate"],input[name="serviceDate"]').daterangepicker(
                {
                singleDatePicker: true,
                autoApply:true,
                
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
                },
                
                },
            );
            
       
        });

        // input=file 파일명 연결
        $("#l_file").on('change',function(){
            var fileName = $(this).val();
            $("#l_file_name").val(fileName);
        });
        
        $("#p_file").on('change',function(){
            var fileName = $(this).val();
            $("#p_file_name").val(fileName);
        });


        
    </script>

    
    <script>
        // 유효성 검사
        function form_check(){
            const u_pw=document.getElementById("u_pw");
            const u_pw_chk=document.getElementById("u_pw_chk");

            /* 비밀번호 일치 여부 */
            if(u_pw.value!==u_pw_chk.value){
                alert("비밀번호가 일치하지 않습니다.");
                u_pw_chk.focus();
                return false;
            }
        }
    </script>

    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
$("#adsearch").on("click",function(){
    new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
            $("#address").val(data.zonecode)
            $("#basic_address").val(data.address) 
        }
    }).open();
})
    
</script>
</body>

</html>
