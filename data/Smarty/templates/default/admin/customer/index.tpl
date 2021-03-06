<!--{*
/*
 * This file is part of EC-CUBE
 *
 * Copyright(c) 2000-2007 LOCKON CO.,LTD. All Rights Reserved.
 *
 * http://www.lockon.co.jp/
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */
*}-->
<script type="text/javascript">
<!--

    function fnCustomerPage(pageno) {
        document.form1.search_pageno.value = pageno;
        document.form1.submit();
    }

    function fnCSVDownload(pageno) {
        document.form1['csv_mode'].value = 'csv';
        document.form1.submit();
        document.form1['csv_mode'].value = '';
        return false;
    }

    function fnDelete(customer_id) {
        if (confirm('是否可以删除此顾客信息？')) {
            document.form1.mode.value = "delete"
            document.form1['edit_customer_id'].value = customer_id;
            document.form1.submit();
            return false;
        }
    }

    function fnEdit(customer_id) {
        document.form1.action = './edit.php';
        document.form1.mode.value = "edit_search"
        document.form1['edit_customer_id'].value = customer_id;
        document.form1.search_pageno.value = 1;
        document.form1.submit();
        return false;
    }

    function fnSubmit() {
        document.form1.submit();
        return false;
    }
//-->
</script>

<!--★★メインコンテンツ★★-->
<table width="878" border="0" cellspacing="0" cellpadding="0" summary=" ">
<form name="form_search" id="form_search" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<input type="hidden" name="mode" value="search">
    <tr valign="top">
        <td background="<!--{$TPL_DIR}-->img/contents/navi_bg.gif" height="402">
            <!-- サブナビ -->
            <!--{include file=$tpl_subnavi}-->
        </td>
        <td class="mainbg">
        <table width="737" border="0" cellspacing="0" cellpadding="0" summary=" ">
            <!--メインエリア-->
            <tr>
                <td align="center">
                <table width="706" border="0" cellspacing="0" cellpadding="0" summary=" ">
                    <tr><td height="14"></td></tr>
                    <tr>
                        <td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_top.jpg" width="706" height="14" alt=""></td>
                    </tr>
                    <tr>
                        <td background="<!--{$TPL_DIR}-->img/contents/main_left.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
                        <td bgcolor="#cccccc">
                        <table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
                            <tr>
                                <td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_top.gif" width="678" height="7" alt=""></td>
                            </tr>
                            <tr>
                                <td background="<!--{$TPL_DIR}-->img/contents/contents_title_left_bg.gif"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_left.gif" width="22" height="12" alt=""></td>
                                <td bgcolor="#636469" width="638" class="fs14n"><span class="white"><!--コンテンツタイトル-->检索条件设置</span></td>
                                <td background="<!--{$TPL_DIR}-->img/contents/contents_title_right_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="18" height="1" alt=""></td>
                            </tr>
                            <tr>
                                <td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_bottom.gif" width="678" height="7" alt=""></td>
                            </tr>
                            <tr>
                                <td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td>
                            </tr>
                        </table>
                        <!--検索条件設定テーブルここから-->
                        <table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">顾客编号</td>
                                <td bgcolor="#ffffff" width="194"><!--{if $arrErr.customer_id}--><span class="red12"><!--{$arrErr.customer_id}--></span><br><!--{/if}--><input type="text" name="customer_id" maxlength="<!--{$smarty.const.INT_LEN}-->" value="<!--{$arrForm.customer_id|escape}-->" size="30" class="box30" <!--{if $arrErr.customer_id}--><!--{sfSetErrorStyle}--><!--{/if}--> /></td>
                                <td bgcolor="#f2f1ec" width="110">省市自治区</td>
                                <td bgcolor="#ffffff" width="195">
                                    <!--{if $arrErr.pref}--><span class="red12"><!--{$arrErr.pref}--></span><br><!--{/if}-->
                                    <select name="pref">
                                        <option value="" selected="selected" <!--{if $arrErr.name}--><!--{sfSetErrorStyle}--><!--{/if}-->>选择省市自治区</option>
                                        <!--{html_options options=$arrPref selected=$arrForm.pref}-->
                                    </select>
                                </td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">顾客名</td>
                                <td bgcolor="#ffffff" width="194"><!--{if $arrErr.name}--><span class="red12"><!--{$arrErr.name}--></span><br><!--{/if}--><input type="text" name="name" maxlength="<!--{$smarty.const.STEXT_LEN}-->" value="<!--{$arrForm.name|escape}-->" size="30" class="box30" <!--{if $arrErr.name}--><!--{sfSetErrorStyle}--><!--{/if}--> /></td>
                                <td bgcolor="#f2f1ec" width="110">顾客名（拼音）</td>
                                <td bgcolor="#ffffff" width="195"><!--{if $arrErr.kana}--><span class="red12"><!--{$arrErr.kana}--></span><br><!--{/if}--><input type="text" name="kana" maxlength="<!--{$smarty.const.STEXT_LEN}-->" value="<!--{$arrForm.kana|escape}-->" size="30" class="box30" <!--{if $arrErr.kana}--><!--{sfSetErrorStyle}--><!--{/if}--> /></td>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">性别</td>
                                <td bgcolor="#ffffff" width="194"><!--{html_checkboxes name="sex" options=$arrSex separator="&nbsp;" selected=$arrForm.sex}--></td>
                                <td bgcolor="#f2f1ec" width="110">生日月份</td>
                                <td bgcolor="#ffffff" width="195"><!--{if $arrErr.birth_month}--><span class="red12"><!--{$arrErr.birth_month}--></span><br><!--{/if}-->
                                    <select name="birth_month" style="<!--{$arrErr.birth_month|sfGetErrorColor}-->" >
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$objDate->getMonth() selected=$arrForm.birth_month}-->
                                    </select>月
                                </td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">生日</td>
                                <td bgcolor="#ffffff" width="499" colspan="3">
                                    <!--{if $arrErr.b_start_year || $arrErr.b_end_year}--><span class="red12"><!--{$arrErr.b_start_year}--><!--{$arrErr.b_end_year}--></span><br><!--{/if}-->
                                    <select name="b_start_year" <!--{if $arrErr.b_start_year || $arrErr.b_end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">------</option>
                                        <!--{html_options options=$arrYear selected=$arrForm.b_start_year}-->
                                    </select>年
                                    <select name="b_start_month" <!--{if $arrErr.b_start_year || $arrErr.b_end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$arrMonth selected=$arrForm.b_start_month}-->
                                    </select>月
                                    <select name="b_start_day" <!--{if $arrErr.b_start_year || $arrErr.b_end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$arrDay selected=$arrForm.b_start_day}-->
                                    </select>日～
                                    <select name="b_end_year" <!--{if $arrErr.b_start_year || $arrErr.b_end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">------</option>
                                        <!--{html_options options=$arrYear selected=$arrForm.b_end_year}-->
                                    </select>年
                                    <select name="b_end_month" <!--{if $arrErr.b_start_year || $arrErr.b_end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$arrMonth selected=$arrForm.b_end_month}-->
                                    </select>月
                                    <select name="b_end_day" <!--{if $arrErr.b_start_year || $arrErr.b_end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$arrDay selected=$arrForm.b_end_day}-->
                                    </select>日
                                </td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">电子邮件</td>
                                <td bgcolor="#ffffff" width="499" colspan="3"><!--{if $arrErr.email}--><span class="red12"><!--{$arrErr.email}--></span><!--{/if}--><input type="text" name="email" maxlength="<!--{$smarty.const.STEXT_LEN}-->" value="<!--{$arrForm.email|escape}-->" size="60" class="box60" <!--{if $arrErr.email}--><!--{sfSetErrorStyle}--><!--{/if}-->/></td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">手机电子邮件</td>
                                <td bgcolor="#ffffff" width="499" colspan="3"><!--{if $arrErr.email_mobile}--><span class="red12"><!--{$arrErr.email_mobile}--></span><!--{/if}--><input type="text" name="email_mobile" maxlength="<!--{$smarty.const.STEXT_LEN}-->" value="<!--{$arrForm.email_mobile|escape}-->" size="60" class="box60" <!--{if $arrErr.email_mobile}--><!--{sfSetErrorStyle}--><!--{/if}-->/></td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">电话号码</td>
                                <td bgcolor="#ffffff" width="499" colspan="3"><!--{if $arrErr.tel}--><span class="red12"><!--{$arrErr.tel}--></span><br><!--{/if}--><input type="text" name="tel" maxlength="<!--{$smarty.const.TEL_LEN}-->" value="<!--{$arrForm.tel|escape}-->" size="60" class="box60" /></td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">职业</td>
                                <td bgcolor="#ffffff" width="499" colspan="3"><!--{html_checkboxes name="job" options=$arrJob separator="&nbsp;" selected=$arrForm.job}--></td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">购物金额</td>
                                <td bgcolor="#ffffff" width="194"><!--{if $arrErr.buy_total_from || $arrErr.buy_total_to}--><span class="red12"><!--{$arrErr.buy_total_from}--><!--{$arrErr.buy_total_to}--></span><br><!--{/if}--><input type="text" name="buy_total_from" maxlength="<!--{$smarty.const.INT_LEN}-->" value="<!--{$arrForm.buy_total_from|escape}-->" size="6" class="box6" <!--{if $arrErr.buy_total_from || $arrErr.buy_total_to}--><!--{sfSetErrorStyle}--><!--{/if}--> /> 円 〜 <input type="text" name="buy_total_to" maxlength="<!--{$smarty.const.INT_LEN}-->" value="<!--{$arrForm.buy_total_to|escape}-->" size="6" class="box6" <!--{if $arrErr.buy_total_from || $arrErr.buy_total_to}--><!--{sfSetErrorStyle}--><!--{/if}--> /> 円</td>
                                <td bgcolor="#f2f1ec" width="110">购物次数</td>
                                <td bgcolor="#ffffff" width="195"><!--{if $arrErr.buy_times_from || $arrErr.buy_times_to}--><span class="red12"><!--{$arrErr.buy_times_from}--><!--{$arrErr.buy_times_to}--></span><br><!--{/if}--><input type="text" name="buy_times_from" maxlength="<!--{$smarty.const.INT_LEN}-->" value="<!--{$arrForm.buy_times_from|escape}-->" size="6" class="box6" <!--{if $arrErr.buy_times_from || $arrErr.buy_times_to}--><!--{sfSetErrorStyle}--><!--{/if}--> /> 次 ～ <input type="text" name="buy_times_to" maxlength="<!--{$smarty.const.INT_LEN}-->" value="<!--{$arrForm.buy_times_to|escape}-->" size="6" class="box6" <!--{if $arrErr.buy_times_from || $arrErr.buy_times_to}--><!--{sfSetErrorStyle}--><!--{/if}--> /> 次</td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">注册·修改日期</td>
                                <td bgcolor="#ffffff" width="499" colspan="3">
                                    <!--{if $arrErr.start_year || $arrErr.end_year}--><span class="red12"><!--{$arrErr.start_year}--><!--{$arrErr.end_year}--></span><br><!--{/if}-->
                                    <select name="start_year" <!--{if $arrErr.start_year || $arrErr.end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$arrYear selected=$arrForm.start_year}-->
                                    </select>年
                                    <select name="start_month" <!--{if $arrErr.start_year || $arrErr.end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrMonth selected=$arrForm.start_month}-->
                                    </select>月
                                    <select name="start_day" <!--{if $arrErr.start_year || $arrErr.end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrDay selected=$arrForm.start_day}-->
                                    </select>日～
                                    <select name="end_year" <!--{if $arrErr.start_year || $arrErr.end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$arrYear selected=$arrForm.end_year}-->
                                    </select>年
                                    <select name="end_month" <!--{if $arrErr.start_year || $arrErr.end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrMonth selected=$arrForm.end_month}-->
                                    </select>月
                                    <select name="end_day" <!--{if $arrErr.start_year || $arrErr.end_year}--><!--{sfSetErrorStyle}--><!--{/if}-->>
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrDay selected=$arrForm.end_day}-->
                                    </select>日
                                </td>
                            </tr>

                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">最后购物日期</td>
                                <td bgcolor="#ffffff" width="499" colspan="3">
                                    <!--{if $arrErr.buy_start_year || $arrErr.buy_end_year}--><span class="red12"><!--{$arrErr.buy_start_year}--><!--{$arrErr.buy_end_year}--></span><br><!--{/if}-->
                                    <select name="buy_start_year" style="<!--{$arrErr.buy_start_year|sfGetErrorColor}-->">
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$objDate->getYear($smarty.const.RELEASE_YEAR)  selected=$arrForm.buy_start_year}-->
                                    </select>年
                                    <select name="buy_start_month" style="<!--{$arrErr.buy_start_year|sfGetErrorColor}-->">
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrMonth selected=$arrForm.buy_start_month}-->
                                    </select>月
                                    <select name="buy_start_day" style="<!--{$arrErr.buy_start_year|sfGetErrorColor}-->">
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrDay selected=$arrForm.buy_start_day}-->
                                    </select>日～
                                    <select name="buy_end_year" style="<!--{$arrErr.buy_end_year|sfGetErrorColor}-->">
                                        <option value="" selected="selected">----</option>
                                        <!--{html_options options=$objDate->getYear($smarty.const.RELEASE_YEAR)  selected=$arrForm.buy_end_year}-->
                                    </select>年
                                    <select name="buy_end_month" style="<!--{$arrErr.buy_end_year|sfGetErrorColor}-->">
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrMonth selected=$arrForm.buy_end_month}-->
                                    </select>月
                                    <select name="buy_end_day" style="<!--{$arrErr.buy_end_year|sfGetErrorColor}-->">
                                        <option value="" selected="selected">--</option>
                                        <!--{html_options options=$arrDay selected=$arrForm.buy_end_day}-->
                                    </select>日
                                </td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">所购商品名称</td>
                                <td bgcolor="#ffffff" width="194">
                                    <!--{if $arrErr.buy_product_name}--><span class="red12"><!--{$arrErr.buy_product_name}--></span><!--{/if}-->
                                    <span style="<!--{$arrErr.buy_product_name|sfGetErrorColor}-->">
                                    <input type="text" name="buy_product_name" maxlength="<!--{$smarty.const.STEXT_LEN}-->" value="<!--{$arrForm.buy_product_name|escape}-->" size="30" class="box30" style="<!--{$arrErr.buy_product_name|sfGetErrorColor}-->"/>
                                    </span>
                                </td>
                                <td bgcolor="#f2f1ec" width="110">所购商品<br />编号</td>
                                <td bgcolor="#ffffff" width="195">
                                <!--{if $arrErr.buy_product_code}--><span class="red12"><!--{$arrErr.buy_product_code}--></span><!--{/if}-->
                                <input type="text" name="buy_product_code" value="<!--{$arrForm.buy_product_code}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="30" class="box30" style="<!--{$arrErr.buy_product_code|sfGetErrorColor}-->" >
                                </td>
                            </tr>
                            <tr class="fs12n">
                                <td bgcolor="#f2f1ec" width="110">分类目录</td>
                                <td bgcolor="#ffffff" width="499" colspan="3">
                                    <select name="category_id" style="<!--{if $arrErr.category_id != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->">
                                        <option value="">请选择</option>
                                        <!--{html_options options=$arrCatList selected=$arrForm.category_id}-->
                                    </select>
                                </td>
                            </tr>
                        </table>
                        <table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
                            <tr>
                                <td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
                                <td><img src="<!--{$TPL_DIR}-->img/contents/tbl_top.gif" width="676" height="7" alt=""></td>
                                <td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
                            </tr>
                            <tr>
                                <td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
                                <td bgcolor="#e9e7de" align="center">
                                <table border="0" cellspacing="0" cellpadding="0" summary=" ">
                                    <tr>
                                        <td class="fs12n">显示检索结果条数
                                            <select name="page_rows">
                                                <!--{html_options options=$arrPageRows selected=$arrForm.page_rows}-->
                                            </select> 条</td>
                                        </td>
                                        <td><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="10" height="1" alt=""></td>
                                        <td><input type="image" name="subm" onMouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_search_on.jpg',this)" onMouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_search.jpg',this)" src="<!--{$TPL_DIR}-->img/contents/btn_search.jpg" width="123" height="24" alt="以此条件检索" border="0" ></td>
                                    </tr>
                                </table>
                                </td>
                                <td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
                            </tr>
                            <tr>
                                <td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/tbl_bottom.gif" width="678" height="8" alt=""></td>
                            </tr>
                        </table>
                        <!--検索条件設定テーブルここまで-->
                        </td>
                        <td background="<!--{$TPL_DIR}-->img/contents/main_right.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
                    </tr>
                    <tr>
                        <td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bottom.jpg" width="706" height="14" alt=""></td>
                    </tr>
                    <tr><td height="30"></td></tr>
                </table>
                </td>
            </tr>
            <!--メインエリア-->
        </table>
        </td>
    </tr>
</form>
</table>
<!--★★メインコンテンツ★★-->

<!--{if count($arrErr) == 0 and ($smarty.post.mode == 'search' or $smarty.post.mode == 'delete') }-->

<!--★★検索結果一覧★★-->
<table width="878" border="0" cellspacing="0" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<!--{foreach from=$smarty.post key="key" item="item"}-->
<!--{if $key ne "mode" && $key ne "del_mode" && $key ne "edit_customer_id" && $key ne "del_customer_id" && $key ne "search_pageno" && $key ne "csv_mode" && $key ne "job" && $key ne "sex"}--><input type="hidden" name="<!--{$key|escape}-->" value="<!--{$item|escape}-->"><!--{/if}-->
<!--{/foreach}-->
<!--{foreach from=$smarty.post.job key="key" item="item"}-->
<input type="hidden" name="job[]" value=<!--{$item}-->>
<!--{/foreach}-->
<!--{foreach from=$smarty.post.sex key="key" item="item"}-->
<input type="hidden" name="sex[]" value=<!--{$item}-->>
<!--{/foreach}-->
<input type="hidden" name="mode" value="search">
<input type="hidden" name="del_mode" value="">
<input type="hidden" name="edit_customer_id" value="">
<input type="hidden" name="del_customer_id" value="">
<input type="hidden" name="search_pageno" value="<!--{$smarty.post.search_pageno|escape}-->">
<input type="hidden" name="csv_mode" value="">
    <tr><td colspan="2"><img src="<!--{$TPL_DIR}-->img/contents/search_line.jpg" width="878" height="12" alt=""></td></tr>
    <tr bgcolor="cbcbcb">
        <td>
        <table border="0" cellspacing="0" cellpadding="0" summary=" ">
            <tr>
                <td><img src="<!--{$TPL_DIR}-->img/contents/search_left.gif" width="19" height="22" alt=""></td>
                <td>
                <!--検索結果-->
                <table border="0" cellspacing="0" cellpadding="0" summary=" ">
                    <tr>
                        <td><img src="<!--{$TPL_DIR}-->img/contents/reselt_left_top.gif" width="22" height="5" alt=""></td>
                        <td background="<!--{$TPL_DIR}-->img/contents/reselt_top_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
                        <td><img src="<!--{$TPL_DIR}-->img/contents/reselt_right_top.gif" width="22" height="5" alt=""></td>
                    </tr>
                    <tr>
                        <td background="<!--{$TPL_DIR}-->img/contents/reselt_left_bg.gif"><img src="<!--{$TPL_DIR}-->img/contents/reselt_left_middle.gif" width="22" height="12" alt=""></td>
                        <td bgcolor="#393a48" class="white10">检索结果一览　<span class="reselt"><!--検索結果数-->检索到<!--{$tpl_linemax}-->条</span>&nbsp;。</td>
                        <td background="<!--{$TPL_DIR}-->img/contents/reselt_right_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="22" height="8" alt=""></td>
                    </tr>
                    <tr>
                        <td><img src="<!--{$TPL_DIR}-->img/contents/reselt_left_bottom.gif" width="22" height="5" alt=""></td>
                        <td background="<!--{$TPL_DIR}-->img/contents/reselt_bottom_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
                        <td><img src="<!--{$TPL_DIR}-->img/contents/reselt_right_bottom.gif" width="22" height="5" alt=""></td>
                    </tr>
                </table>
                <!--検索結果-->
                <!--{if $smarty.const.ADMIN_MODE == '1'}-->
                <input type="button" name="subm" value="删除所有检索结果" onclick="fnModeSubmit('delete_all','','');" />
                <!--{/if}-->
                </td>
                <td><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="8" height="1" alt=""></td>
                <td><a href="#" onmouseover="chgImg('<!--{$TPL_DIR}-->img/contents/btn_csv_on.jpg','btn_csv');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/contents/btn_csv.jpg','btn_csv');"  onclick="fnModeSubmit('csv','','');" ><img src="<!--{$TPL_DIR}-->img/contents/btn_csv.jpg" width="99" height="22" alt="CSV DOWNLOAD" border="0" name="btn_csv" id="btn_csv"></a></td>
                <td><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="8" height="1" alt=""></td>
                <td><a href="../contents/csv.php?tpl_subno_csv=customer"><span class="fs12n"> >> CSV输出项目设置 </span></a></td>
            </tr>
        </table>
        </td>
        <td align="right">
            <!--{include file=$tpl_pager}-->
        </td>
    </tr>
    <tr><td bgcolor="cbcbcb" colspan="2"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td></tr>
</table>

<table width="878" border="0" cellspacing="0" cellpadding="0" summary=" ">
    <tr>
        <td bgcolor="#f0f0f0" align="center">

        <!--{if count($search_data) > 0}-->

            <table width="840" border="0" cellspacing="0" cellpadding="0" summary=" ">
                <tr><td height="12"></td></tr>
                <tr>
                    <td bgcolor="#cccccc">
                    <!--検索結果表示テーブル-->
                    <table width="840" border="0" cellspacing="1" cellpadding="5" summary=" ">
                        <tr bgcolor="#636469" align="center" class="fs12n">
                            <td width="50" rowspan="2"><span class="white">类别</span></td>
                            <td width="120"><span class="white">顾客编号</span></td>
                            <td width="300" rowspan="2"><span class="white">顾客姓名/（拼音）</span></td>
                            <td width="50" rowspan="2"><span class="white">性别</span></td>
                            <td width="250"><span class="white">电话</span></td>
                            <td width="50" rowspan="2"><span class="white">编辑</span></td>
                            <td width="50" rowspan="2"><span class="white">删除</span></td>
                        </tr>
                        <tr bgcolor="#636469" align="center" class="fs12n">
                            <td width=""><span class="white">省市自治区</span></td>
                            <td width=""><span class="white">电子邮件</span></td>
                        </tr>
                        <!--{section name=data loop=$search_data}-->
                            <!--顧客<!--{$smarty.section.data.iteration}-->-->
                            <tr bgcolor="#ffffff" class="fs12n">
                                <td align="center" rowspan="2"><!--{if $search_data[data].status eq 1}-->临时<!--{else}-->正式<!--{/if}--></td>
                                <td><!--{$search_data[data].customer_id|escape}--></td>
                                <td rowspan="2"><!--{$search_data[data].name01|escape}--> <!--{$search_data[data].name02|escape}-->(<!--{$search_data[data].kana01|escape}--> <!--{$search_data[data].kana02|escape}-->)</td>
                                <td align="center" rowspan="2"><!--{if $search_data[data].sex eq 1}-->男性<!--{else}-->女性<!--{/if}--></td>
                                <td><!--{$search_data[data].tel01|escape}-->-<!--{$search_data[data].tel02|escape}-->-<!--{$search_data[data].tel03|escape}--></td>
                                <td align="center" rowspan="2"><span class="icon_edit"><a href="#" onclick="return fnEdit('<!--{$search_data[data].customer_id|escape}-->');">编辑</a></span>
                                </td>
                                <td align="center" rowspan="2"><span class="icon_delete"><a href="#" onclick="return fnDelete('<!--{$search_data[data].customer_id|escape}-->');">删除</a></span></td>
                            </tr>
                            <tr bgcolor="#ffffff" class="fs12n">
                                <td width=""><!--{assign var=pref value=$search_data[data].pref}--><!--{$arrPref[$pref]}--></td>
                                <td width=""><!--{mailto address=$search_data[data].email encode="javascript"}--></a></td>
                            </tr>
                            <!--顧客<!--{$smarty.section.data.iteration}-->-->
                        <!--{/section}-->
                    </table>
                    <!--検索結果表示テーブル-->
                    </td>
                </tr>
            </table>

        <!--{/if}-->

        </td>
    </tr>
</form>
</table>
<!--★★検索結果一覧★★-->

<!--{/if}-->
