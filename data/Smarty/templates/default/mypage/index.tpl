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
<!--▼CONTENTS-->
<div id="mypagecolumn">
  <h2 class="title"><img src="<!--{$TPL_DIR}-->img/mypage/title.jpg" width="700" height="40" alt="我的页面" /></h2>
  <!--{if $tpl_navi != ""}-->
    <!--{include file=$tpl_navi}-->
  <!--{else}-->
    <!--{include file=`$smarty.const.TEMPLATE_DIR`mypage/navi.tpl}-->
  <!--{/if}-->
  <div id="mycontentsarea">
    <form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
    <input type="hidden" name="order_id" value="" />
    <input type="hidden" name="pageno" value="<!--{$tpl_pageno}-->" />
    <h3><img src="<!--{$TPL_DIR}-->img/mypage/subtitle01.gif" width="515" height="32" alt="购物履历一览" /></h3>

<!--{if $tpl_linemax > 0}-->

    <p>有<!--{$tpl_linemax}-->条购物履历</p>
    <div>
      <!--▼ページナビ-->
      <!--{$tpl_strnavi}-->
      <!--▲ページナビ-->
    </div>
    <p>※最多显示20条。</p>

    <table summary="购物履历">
      <tr>
        <th>购物时间</th>
        <th>订单编号</th>
        <th>付款方式</th>
        <th>金额合计</th>
        <th>明细</th>
      </tr>
      <!--{section name=cnt loop=$arrOrder}-->
      <tr>
       <td><!--{$arrOrder[cnt].create_date|sfDispDBDate}--></td>
       <td><!--{$arrOrder[cnt].order_id}--></td>
       <!--{assign var=payment_id value="`$arrOrder[cnt].payment_id`"}-->
       <td><!--{$arrPayment[$payment_id]|escape}--></td>
       <td class="pricetd"><!--{$arrOrder[cnt].payment_total|number_format}-->元</td>
       <td class="centertd"><a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnChangeAction('./history.php'); fnKeySubmit('order_id','<!--{$arrOrder[cnt].order_id}-->'); return false">明细</a></td>
     </tr>
     <!--{/section}-->
    </table>

    <!--{else}-->
    <p>没有购物履历。</p>
    <!--{/if}-->
    </form>
  </div>
</div>
