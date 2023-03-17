<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="euc-kr">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

    <title>���÷��� ������ ��Ʈ�� : ������ ��ȸ</title>

    <!-- ��� START -->
    <!--#include virtual="/partner/include/header.asp"-->

    <div class="page_right">
        <main id="content" class="content p_book_list">
            <section class="book_list_wrap">
                <!-- ������ ��ȸ ���� START -->
                <h2>
                    <a href="#none" title="�޴�����" class="open_gnb">
                        <span>������ ��ȸ</span> 
                    </a>
                </h2>
                <!-- ������ ��ȸ ���� END -->
    
                <div class="page_wrap">
                    <!-- ������ ��� ���� START -->
                    <form action="" method="post" id="cont_lookup_form" class="form_primary">
                        <fieldset>
                            <legend class="blind">������ ��ȸ ����</legend>
    
                            <div class="filter_wrap">
                                <!-- ��ǰ START -->
                                <p class="goods">
                                    <span class="f_title">��ǰ</span>
    
                                    <span class="chk">
                                        <input type="checkbox" name="goods" id="all" onclick="selectAll(this)" value="all">
                                        <label for="all">��ü</label>
                                    </span>
    
                                    <span class="chk">
                                        <input type="checkbox" id="unr_book" name="goods" value="unr_book">
                                        <label for="unr_book">E-ISBN �̵�� ����</label>
                                    </span>
                                    
                                    <span class="chk">
                                        <input type="checkbox" id="n_book" name="goods" value="n_book">
                                        <label for="n_book">�Ϲݵ���</label>
                                    </span>
                                    
                                    <!--<span class="chk">
                                        <input type="checkbox" id="g_book" name="goods" value="g_book">
                                        <label for="g_book">�帣����</label>
                                    </span>-->
                                    
    
                                    <span class="chk">
                                        <input type="checkbox" id="a_book" name="goods" value="a_book">
                                        <label for="a_book">�������</label>
                                    </span>
                                    
    
                                    <!--<span class="chk">
                                        <input type="checkbox" id="video" name="goods" value="video">
                                        <label for="video">������</label>
                                    </span>-->
                                    
                                </p>
                                <!-- ��ǰ END -->
                                
                                <!-- ������� START -->
                                <p class="regist_date">
                                    <span class="f_title">�������</span>
    
                                    <input type="text" name="startDate" value="" autocomplete="off" id="startDate">
                                    ~
                                    <input type="text" name="endDate" value="" autocomplete="off" id="endDate">
    
                                    <button type="button" id="btn_period_1w">1��</button>
                                    <button type="button" id="btn_period_1m">1����</button>
                                    <button type="button" id="btn_period_3m">3����</button>
                                    <button type="button" id="btn_period_1y">1��</button>
                                    <button type="button" id="btn_period_all">��ü</button>
                                </p>
                                <!-- ������� END -->
    
                                <div class="form_c_wrap">
                                    <!-- ���ǻ� START -->
                                    <p class="brand">
                                        <span class="f_title">�귣��</span>
                                        <select name="brand_code_sel" id="brand_code_sel">
                                            <option value="all" selected>��ü</option>
                                            <option value="b1">�ζ���</option>
                                            <option value="b2">�ѱ������п�����</option>
                                        </select>
                                    </p>
                                    <!-- ���ǻ� END -->
    
                                    <!-- ���� START -->
                                    <p class="state">
                                        <span class="f_title">����</span>
                                        <select name="pbcmCode_sel" id="pbcmCode_sel">
                                            <option value="all" selected>��ü</option>
                                            <option value="approval_wait">���δ��</option>
                                            <option value="approval_hold">���κ���</option>
                                            <option value="sale_wait">�ǸŴ��</option>
                                            <option value="sale_stop">�Ǹ��ߴ�</option>
                                            <option value="sale">�Ǹ���</option>
                                        </select>
                                    </p>
                                    <!-- ���� END -->
                                </div>
    
                                <div class="form_c_wrap name_wrap last">
                                    <!-- ������ START -->
                                    <p class="book_name">
                                        <span class="f_title">������</span>
                                        <input type="text" name="b_name">
                                    </p>
                                    <!-- ������ END -->
    
                                    <!-- ���ڸ� START -->
                                    <p class="author_name">
                                        <span class="f_title">���ڸ�</span>
                                        <input type="text" name="a_name">
                                    </p>
                                    <!-- ���ڸ� END -->
                                </div>
                            </div>
                            
                            <div class="btn_wrap">
                                <button type="submit" class="btn_md btn_primary">��ȸ</button>
                            </div>
                            
                        </fieldset>
                    </form>
                    <!-- ������ ��� ���� END -->
    
                    <div class="table_cont">
                        <h3 class="sub_t">������ ���</h3>
    
                        <!-- ������ ��� START -->
                        <!--<div class="tab_menu">
                            <a href="#none" class="on">[��ü ���� ���]</a>
                            <a href="#none">[ESIBN �̵�� ���� ���]</a>
                        </div>-->
    
                        <div class="excel_down">
                            ���� �ٿ�ε�
                        </div>
    
                        <div class="tab_bwrap">
                            
                            <!-- ��ü ���� ��� START -->
                            <div id="t_b_list_all_wrap">
                                <table id="t_b_list_all" class="display">
                                    <caption>���� ���</caption>
                                    <thead>
                                        <th scope="col">No.</th>
                                        <th scope="col">��ǰ�ڵ�</th>
                                        <th scope="col">����Ÿ��</th>
                                        <th scope="col" class="txt_l">������</th>
                                        <th scope="col">����</th>
                                        <th scope="col">�귣��</th>
                                        <th scope="col">E-ISBN</th>
                                        <th scope="col">����</th>
                                        <th scope="col">�ǸŰ�</th>
                                        <th scope="col">�뿩��</th>
                                        <th scope="col">ī�װ�</th>
                                        <th scope="col">�ø���</th>
                                        <th scope="col">����</th>
                                        <th scope="col">�����</th>
                                    </thead>
                            
                                    <tbody>
                                        <tr>
                                            <td scope="row" id="num">22</td>
                                            <td id="b_barcode">E230100002</td>
                                            <td id="b_type">EPUB</td>
                                            <td id="b_name" class="txt_l"><a href="content_regist.asp">�׸��������� ���ڿ��� ȸ����</a></td>
                                            <td id="b_author">�� ���帮��</td>
                                            <td id="b_brand">�ζ���</td>
                                            <td  id="b_eisbn">9788953143876</td>
                                            <td id="b_list_price" class="txt_r">15,000</td>
                                            <td id="b_price" class="txt_r">15,000</td>
                                            <td id="b_rental_price" class="txt_r">17,500</td>
                                            <td id="b_category">����������</td>
                                            <td id="b_series">N</td>
                                            <td id="b_state">���δ��</td>
                                            <td id="b_regist_date">2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">21</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">5,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">20</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">19</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">18</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">17</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">16</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">15</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">14</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">13</td>
                                            <td>E230100002</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�׸��������� ���ڿ��� ȸ����</td>
                                            <td>�� ���帮��</td>
                                            <td>�ζ���</td>
                                            <td>9788953143876</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">15,000</td>
                                            <td class="txt_r">7,500</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2023-01-05</td>
                                        </tr>
                                        
                                        <tr>
                                            <td scope="row">12</td>
                                            <td>E230100001</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">������ ����ġ�� �͸� ���´�</td>
                                            <td>����</td>
                                            <td>�ζ���</td>
                                            <td>9788953143753</td>
                                            <td class="txt_r">9,800</td>
                                            <td class="txt_r">8,820</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���δ��</td>
                                            <td>2022-12-23</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">11</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">10</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">9</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">8</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">7</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">6</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">5</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">4</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">3</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">2</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                            
                                        <tr>
                                            <td scope="row">1</td>
                                            <td>E230100012</td>
                                            <td>EPUB</td>
                                            <td class="txt_l">�� ���̺� �÷��� : �ž� 1 (�纹����)</td>
                                            <td>�ζ��� ������</td>
                                            <td>�ζ���</td>
                                            <td>9788953143746</td>
                                            <td class="txt_r">9,100</td>
                                            <td class="txt_r">8,190</td>
                                            <td class="txt_r">0</td>
                                            <td>����������</td>
                                            <td>N</td>
                                            <td>���κ���</td>
                                            <td>2022-12-21</td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <!-- ��ü ���� ��� END -->
    
                        </div>
                        <!-- ������ ��� END -->
                    </div>
                    
                </div>
                
            </section>
        </main>
        
        <!-- Ǫ�� & �ϴ� �� & �÷��� START -->
        <!--#include virtual="/partner/include/footer.asp"-->
        <!-- Ǫ�� & �ϴ� �� & �÷��� END -->
    </div>
    

    

    <script>
        // üũ�ڽ� ��ü Ŭ����
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

                // ���� ��ũ��
                // scrollY: '489px',
                // scrollCollapse: true,

                // �� �ʺ� ����
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
                    applyLabel: "Ȯ��",
                    cancelLabel: "���",
                    customRangeLabel: "Custom",
                    weekLabel: "W",
                    daysOfWeek: ["��", "��", "ȭ", "��", "��", "��", "��"],
                    monthNames: [
                    "1��",
                    "2��",
                    "3��",
                    "4��",
                    "5��",
                    "6��",
                    "7��",
                    "8��",
                    "9��",
                    "10��",
                    "11��",
                    "12��",
                    ],
                },
                
                },
            );
            
            
        });

        
        

        // datatables.js ����
        // �� ȭ�鿡 20�� �׸� ���̰� ���� 230306 ����
        // 10447��, 11453��
        
        // ~���� ����� ���� 230306 ����
        // 11888��

        // ���̺� �ؿ� ��ǰ �� ���� ��� 230307 ����
        // 11725��

        
    </script>
</body>

</html>
