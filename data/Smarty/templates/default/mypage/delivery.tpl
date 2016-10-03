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
<script type="text/javascript">//<![CDATA[

function fnCheckAfterOpenWin(){
    if (<!--{$tpl_linemax}--> >= <!--{$smarty.const.DELIV_ADDR_MAX}-->){
        alert('超过了最大注册数');
        return false;
    }else{
        win02('./delivery_addr.php','new_deiv','600','640');
    }
}
//]]>
</script>

<!--▼CONTENTS-->
<div id="mypagecolumn">
  <h2 class="title"><img src="<!--{$TPL_DIR}-->img/mypage/title.jpg" width="700" height="40" alt="MYページ" /></h2>
<!--{include file=$tpl_navi}-->
  <div id="mycontentsarea">
    <h3><img src="<!--{$TPL_DIR}-->img/mypage/subtitle03.gif" width="515" height="32" alt="添加、修改送货地址" /></h3>
    <p>如果要送到注册地址以外的地方时，可以使用此功能。<br />
     ※最多可以注册<!--{$smarty.const.DELIV_ADDR_MAX}-->个。</p>

    <p class="addbtn">
    <!--{if $tpl_linemax < 20}-->
      <a href="<!--{$smarty.const.URL_DIR}-->mypage/delivery_addr.php" onclick="win03('./delivery_addr.php','delivadd','600','640'); return false;" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/newadress_on.gif','newadress');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/newadress.gif','newadress');" target="_blank"><img src="<!--{$TPL_DIR}-->img/common/newadress.gif" width="160" height="22" alt="添加新的送货地址" border="0" name="newadress" /></a>
    <!--{/if}-->
    </p>

    <!--{if $tpl_linemax > 0}-->
    <form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->" >
      <input type="hidden" name="mode" value="" />
      <input type="hidden" name="other_deliv_id" value="" />
      <input type="hidden" name="pageno" value="<!--{$tpl_pageno}-->" />

      <table summary="送货地址">
        <tr>
          <th colspan="5">▼送货地址</th>
        </tr>
       <!--{section name=cnt loop=$arrOtherDeliv}-->
       <!--{assign var=OtherPref value="`$arrOtherDeliv[cnt].pref`"}-->
        <tr>
          <td class="centertd"><!--{$smarty.section.cnt.iteration}--></td>
          <td><label for="add<!--{$smarty.section.cnt.iteration}-->">送货地址</label></td>
          <td>
            〒<!--{$arrOtherDeliv[cnt].zip01}-->-<!--{$arrOtherDeliv[cnt].zip02}--><br />
            <!--{$arrPref[$OtherPref]|escape}--><!--{$arrOtherDeliv[cnt].addr01|escape}--><!--{$arrOtherDeliv[cnt].addr02|escape}--><br />
        <!--{$arrOtherDeliv[cnt].name01|escape}-->&nbsp;<!--{$arrOtherDeliv[cnt].name02|escape}-->
          </td>
          <td class="centertd">
            <a href="./delivery_addr.php" onclick="win02('./delivery_addr.php?other_deliv_id=<!--{$arrOtherDeliv[cnt].other_deliv_id}-->','deliv_disp','600','640'); return false;">修改</a>
          </td>
          <td class="centertd">
            <a href="<!--{$smarty.server.PHP_SELF}-->" onclick="fnModeSubmit('delete','other_deliv_id','<!--{$arrOtherDeliv[cnt].other_deliv_id}-->');">删除</a>
          </td>
        </tr>
        <!--{/section}-->
      </table>
    </form>
    <!--{else}-->
    <p class="delivempty"><strong>没有新的送货地址。</strong></p>
    <!--{/if}-->
  </div>
</div>
<!--▲CONTENTS-->
