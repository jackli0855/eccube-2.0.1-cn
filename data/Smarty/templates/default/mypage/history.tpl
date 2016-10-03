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
  <!--{include file=$tpl_navi}-->
  <div id="mycontentsarea">
    <h3><img src="<!--{$TPL_DIR}-->img/mypage/subtitle05.gif" width="515" height="32" alt="购物履历明细" /></h3>
    <p class="myconditionarea">
    <strong>购物时间：&nbsp;</strong><!--{$arrDisp.create_date|sfDispDBDate}--><br />
    <strong>订单编号：&nbsp;</strong><!--{$arrDisp.order_id}--><br />
    <strong>付款方式：&nbsp;</strong><!--{$arrPayment[$arrDisp.payment_id]|escape}-->
    <!--{if $arrDisp.deliv_time_id != ""}--><br />
    <strong>指定送货时间：&nbsp;</strong><!--{$arrDelivTime[$arrDisp.deliv_time_id]|escape}-->
    <!--{/if}-->
    <!--{if $arrDisp.deliv_date != ""}--><br />
    <strong>指定送货日期：&nbsp;</strong><!--{$arrDisp.deliv_date|escape}-->
    <!--{/if}-->
    </p>

    <table summary="购买商品明细">
      <tr>
        <th>商品编号</th>
        <th>商品名称</th>
        <th>单价</th>
        <th>个数</th>
        <th>小计</th>
      </tr>
      <!--{section name=cnt loop=$arrDisp.quantity}-->
      <tr>
        <td><!--{$arrDisp.product_code[cnt]|escape}--></td>
        <td><a href="<!--{$smarty.const.URL_DIR}-->products/detail.php?product_id=<!--{$arrDisp.product_id[cnt]}-->"><!--{$arrDisp.product_name[cnt]|escape}--></a></td>
        <!--{assign var=price value=`$arrDisp.price[cnt]`}-->
        <!--{assign var=quantity value=`$arrDisp.quantity[cnt]`}-->
        <td class="pricetd"><!--{$price|escape|number_format}-->元</td>
        <td><!--{$quantity|escape}--></td>
        <td class="pricetd"><!--{$price|sfPreTax:$arrSiteInfo.tax:$arrSiteInfo.tax_rule|sfMultiply:$quantity|number_format}-->元</td>
      </tr>
      <!--{/section}-->
      <tr>
        <th colspan="4" class="resulttd">小记</th>
        <td class="pricetd"><!--{$arrDisp.subtotal|number_format}-->元</td>
      </tr>
      <!--{assign var=point_discount value="`$arrDisp.use_point*$smarty.const.POINT_VALUE`"}-->
      <!--{if $point_discount > 0}-->
      <tr>
        <th colspan="4" class="resulttd">积分折扣</th>
        <td class="pricetd"><!--{$point_discount|number_format}-->元</td>
      </tr>
      <!--{/if}-->
      <!--{assign var=key value="discount"}-->
      <!--{if $arrDisp[$key] != "" && $arrDisp[$key] > 0}-->
      <tr>
        <th colspan="4" class="resulttd">折扣</th>
        <td class="pricetd"><!--{$arrDisp[$key]|number_format}-->元</td>
      </tr>
      <!--{/if}-->
      <tr>
        <th colspan="4" class="resulttd">运费</th>
        <td class="pricetd"><!--{assign var=key value="deliv_fee"}--><!--{$arrDisp[$key]|escape|number_format}-->元</td>
      </tr>
      <tr>
        <th colspan="4" class="resulttd">手续费</th>
        <!--{assign var=key value="charge"}-->
        <td class="pricetd"><!--{$arrDisp[$key]|escape|number_format}-->元</td>
      </tr>
      <tr>
        <th colspan="4" class="resulttd">合计</th>
        <td class="pricetd"><em><!--{$arrDisp.payment_total|number_format}-->元</em></td>
      </tr>
    </table>

    <!-- 使用ポイントここから -->
    <table summary="使用积分">
      <tr>
        <th>您使用的积分</th>
        <td class="pricetd"><!--{assign var=key value="use_point"}--><!--{$arrDisp[$key]|number_format|default:0}--> 点</td>
      </tr>
      <tr>
        <th>本次增加的积分</th>
        <td class="pricetd"><!--{$arrDisp.add_point|number_format|default:0}--> 点</td>
      </tr>
    </table>
    <!-- 使用ポイントここまで -->

    <table summary="送货地址" class="delivname">
      <thead>
        <tr>
          <th colspan="5">▼送货地址</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th>姓名</th>
          <!--{assign var=key1 value="deliv_name01"}-->
          <!--{assign var=key2 value="deliv_name02"}-->
          <td><!--{$arrDisp[$key1]|escape}-->&nbsp;<!--{$arrDisp[$key2]|escape}--></td>
        </tr>
        <tr>
          <th>姓名（拼音）</th>
          <!--{assign var=key1 value="deliv_kana01"}-->
          <!--{assign var=key2 value="deliv_kana02"}-->
          <td><!--{$arrDisp[$key1]|escape}-->&nbsp;<!--{$arrDisp[$key2]|escape}--></td>
        </tr>
        <tr>
          <th>邮政编码</th>
          <!--{assign var=key1 value="deliv_zip01"}-->
          <!--{assign var=key2 value="deliv_zip02"}-->
          <td>〒<!--{$arrDisp[$key1]}-->-<!--{$arrDisp[$key2]}--></td>
        </tr>
        <tr>
          <th>住址</th>
          <!--{assign var=pref value=`$arrDisp.deliv_pref`}-->
          <!--{assign var=key value="deliv_addr01"}-->
          <td><!--{$arrPref[$pref]}--><!--{$arrDisp[$key]|escape}--><!--{assign var=key value="deliv_addr02"}--><!--{$arrDisp[$key]|escape}--></td>
        </tr>
        <tr>
          <th>电话号码</th>
          <!--{assign var=key1 value="deliv_tel01"}-->
          <!--{assign var=key2 value="deliv_tel02"}-->
          <!--{assign var=key3 value="deliv_tel03"}-->
          <td><!--{$arrDisp[$key1]}-->-<!--{$arrDisp[$key2]}-->-<!--{$arrDisp[$key3]}--></td>
        </tr>
      </tbody>
    </table>

    <div class="tblareabtn">
      <a href="./index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_back_on.gif','change');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_back.gif','change');"><img src="<!--{$TPL_DIR}-->img/common/b_back.gif" width="150" height="30" alt="返回" name="change" id="change" /></a>
    </div>
  </div>
</div>
<!--▲CONTENTS-->
