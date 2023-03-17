<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>두플러스 컨텐츠 파트너 : 콘텐츠 조회</title>

    <!-- 헤더 START -->
    <!--#include virtual="/partner/include/header.asp"-->

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
                                        <input type="checkbox" name="goods" id="all" onclick="selectAll(this)" value="all">
                                        <label for="all">전체</label>
                                    </span>
    
                                    <span class="chk">
                                        <input type="checkbox" id="unr_book" name="goods" value="unr_book">
                                        <label for="unr_book">E-ISBN 미등록 도서</label>
                                    </span>
                                    
                                    <span class="chk">
                                        <input type="checkbox" id="n_book" name="goods" value="n_book">
                                        <label for="n_book">일반도서</label>
                                    </span>
                                    
                                    <!--<span class="chk">
                                        <input type="checkbox" id="g_book" name="goods" value="g_book">
                                        <label for="g_book">장르도서</label>
                                    </span>-->
                                    
    
                                    <span class="chk">
                                        <input type="checkbox" id="a_book" name="goods" value="a_book">
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
    
                                    <input type="text" name="startDate" value="" autocomplete="off" id="startDate">
                                    ~
                                    <input type="text" name="endDate" value="" autocomplete="off" id="endDate">
    
                                    <button type="button" id="btn_period_1w">1주</button>
                                    <button type="button" id="btn_period_1m">1개월</button>
                                    <button type="button" id="btn_period_3m">3개월</button>
                                    <button type="button" id="btn_period_1y">1년</button>
                                    <button type="button" id="btn_period_all">전체</button>
                                </p>
                                <!-- 등록일자 END -->
    
                                <div class="form_c_wrap">
                                    <!-- 출판사 START -->
                                    <p class="brand">
                                        <span class="f_title">브랜드</span>
                                        <select name="brand_code_sel" id="brand_code_sel">
                                            <option value="all" selected>전체</option>
                                            <option value="b1">두란노</option>
                                            <option value="b2">한국성서학연구소</option>
                                        </select>
                                    </p>
                                    <!-- 출판사 END -->
    
                                    <!-- 상태 START -->
                                    <p class="state">
                                        <span class="f_title">상태</span>
                                        <select name="pbcmCode_sel" id="pbcmCode_sel">
                                            <option value="all" selected>전체</option>
                                            <option value="approval_wait">승인대기</option>
                                            <option value="approval_hold">승인보류</option>
                                            <option value="sale_wait">판매대기</option>
                                            <option value="sale_stop">판매중단</option>
                                            <option value="sale">판매중</option>
                                        </select>
                                    </p>
                                    <!-- 상태 END -->
                                </div>
    
                                <div class="form_c_wrap name_wrap last">
                                    <!-- 도서명 START -->
                                    <p class="book_name">
                                        <span class="f_title">도서명</span>
                                        <input type="text" name="b_name">
                                    </p>
                                    <!-- 도서명 END -->
    
                                    <!-- 저자명 START -->
                                    <p class="author_name">
                                        <span class="f_title">저자명</span>
                                        <input type="text" name="a_name">
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
    
                    <div class="table_cont">
                        <h3 class="sub_t">콘텐츠 목록</h3>
    
                        <!-- 콘텐츠 목록 START -->
                        <!--<div class="tab_menu">
                            <a href="#none" class="on">[전체 도서 목록]</a>
                            <a href="#none">[ESIBN 미등록 도서 목록]</a>
                        </div>-->
    
                        <div class="excel_down">
                            엑셀 다운로드
                        </div>
    
                        <div class="tab_bwrap">
                            
                            <!-- 전체 도서 목록 START -->
                            <div id="t_b_list_all_wrap">
                                <table id="t_b_list_all" class="display">
                                    <caption>도서 목록</caption>
                                    <thead>
                                        <th scope="col">No.</th>
                                        <th scope="col">상품코드</th>
                                        <th scope="col">파일타입</th>
                                        <th scope="col" class="txt_l">도서명</th>
                                        <th scope="col">저자</th>
                                        <th scope="col">브랜드</th>
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
                            
                                        <tr>
                                            <td scope="row">21</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">5,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">20</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">19</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">18</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">17</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">16</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">15</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">14</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">13</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">그리스도인의 초자연적 회복력</td>
                                            <td>존 엘드리지</td>
                                            <td>두란노</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2023-01-05</td>
                                        </tr>
                                        
                                        <tr>
                                            <td scope="row">12</td>
                                            <td>E230100001</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">삶으로 가르치는 것만 남는다</td>
                                            <td>김요셉</td>
                                            <td>두란노</td>
                                            <td>9788953143753</td>
                                            <td class="txt_r">9,800</td>
                                            <td class="txt_r">8,820</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인대기</td>
                                            <td>2022-12-23</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">11</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">10</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">9</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">8</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">7</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">6</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">5</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">4</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">3</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">2</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">1</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">더 바이블 플러스 : 신약 1 (사복음서)</td>
                                            <td>두란노 편집부</td>
                                            <td>두란노</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>믿음과성장</td>
                                            <td>N</td>
                                            <td>승인보류</td>
                                            <td>2022-12-21</td>
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
        const checkboxes 
            = document.getElementsByName('goods');
        
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked;
        })
        }

        $(document).ready(function () {
            $('#t_b_list_all').DataTable({
                aaSorting : [],
                "searching":false,

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
            });
            

            $('input[name="startDate"],input[name="endDate"]').daterangepicker(
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
