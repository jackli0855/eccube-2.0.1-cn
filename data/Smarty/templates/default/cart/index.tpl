<!--{*
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
 *}-->
<!--▼CONTENTS-->
<div id="under02column">
  <div id="under02column_cart">
    <h2 class="title">
      <img src="<!--{$TPL_DIR}-->img/cart/title.jpg" width="700" height="40" alt="现在的购物车中" />
    </h2>
    <p class="totalmoneyarea">
      <!--{if $tpl_login}-->
      <!--メインコメント-->
        <!--{$tpl_name|escape}--> ，您现在的积分是「<em><!--{$tpl_user_point|number_format|default:0}--> 点</em>」。<br />
      <!--{else}-->
        <!--メインコメント-->如果被利用变成点制度，拜托是会员登记后进入的抱。<br />
      <!--{/if}-->
      在购买商品时，可以将积分1点作为<!--{$smarty.const.POINT_VALUE}-->元来使用。<br />
      <!--{* カゴの中に商品がある場合にのみ表示 *}-->
      <!--{if count($arrProductsClass) > 0 }-->
        您所购买商品的金额合计为「<em><!--{$tpl_total_pretax|number_format}-->元</em>」。
        <!--{if $arrInfo.free_rule > 0}-->
          <!--{if $arrData.deliv_fee|number_format > 0}-->
            还差「<em><!--{$tpl_deliv_free|number_format}-->元</em>」就可以免收运费了！！
          <!--{else}-->
            现在，「<em>免收运费</em>」！！
          <!--{/if}-->
        <!--{/if}-->
      <!--{/if}-->
    </p>

   <!--{if $tpl_message != ""}-->
    <p class="attention"><!--{$tpl_message|escape}--></p>
   <!--{/if}-->

   <!--{if count($arrProductsClass) > 0}-->
   <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
     <input type="hidden" name="mode" value="confirm" />
     <input type="hidden" name="cart_no" value="" />
     <table summary="商品信息">
       <tr>
         <th>删除</th>
         <th>商品图片</th>
         <th>商品名称</th>
         <th>单价</th>
         <th>数量</th>
         <th>小计</th>
       </tr>
      <!--{section name=cnt loop=$arrProductsClass}-->
       <tr>
         <td><a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('delete', 'cart_no', '<!--{$arrProductsClass[cnt].cart_no}-->'); return false;">删除</a>
         </td>
         <td class="phototd">
           <a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="win01('../products/detail_image.php?product_id=<!--{$arrProductsClass[cnt].product_id}-->&image=main_image','detail_image','<!--{$arrProductsClass[cnt].tpl_image_width}-->','<!--{$arrProductsClass[cnt].tpl_image_height}-->'); return false;" target="_blank">
           <img src="<!--{$smarty.const.URL_DIR}-->resize_image.php?image=<!--{$arrProductsClass[cnt].main_list_image}-->&amp;width=65&amp;height=65" alt="<!--{$arrProductsClass[cnt].name|escape}-->" />
           </a>
         </td>
         <td><!--{* 商品名 *}--><strong><!--{$arrProductsClass[cnt].name|escape}--></strong><br />
           <!--{if $arrProductsClass[cnt].classcategory_name1 != ""}-->
             <!--{$arrProductsClass[cnt].class_name1}-->：<!--{$arrProductsClass[cnt].classcategory_name1}--><br />
           <!--{/if}-->
           <!--{if $arrProductsClass[cnt].classcategory_name2 != ""}-->
             <!--{$arrProductsClass[cnt].class_name2}-->：<!--{$arrProductsClass[cnt].classcategory_name2}-->
           <!--{/if}-->
         </td>
         <td class="pricetd">
         <!--{if $arrProductsClass[cnt].price02 != ""}-->
           <!--{$arrProductsClass[cnt].price02|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->元
         <!--{else}-->
           <!--{$arrProductsClass[cnt].price01|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->元
         <!--{/if}-->
         </td>
         <td id="quantity"><!--{$arrProductsClass[cnt].quantity}-->
           <ul id="quantity_level">
            <li><a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('up','cart_no','<!--{$arrProductsClass[cnt].cart_no}-->'); return false"><img src="<!--{$TPL_DIR}-->img/cart/plus.gif" width="16" height="16" alt="＋" /></a></li>
            <li><a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnChangeAction('<!--{$smarty.server.PHP_SELF|escape}-->'); fnModeSubmit('down','cart_no','<!--{$arrProductsClass[cnt].cart_no}-->'); return false"><img src="<!--{$TPL_DIR}-->img/cart/minus.gif" width="16" height="16" alt="-" /></a></li>
           </ul>
         </td>
         <td class="pricetd"><!--{$arrProductsClass[cnt].total_pretax|number_format}-->元</td>
     </tr>
     <!--{/section}-->
     <tr>
       <th colspan="5" class="resulttd">小计</th>
       <td class="pricetd"><!--{$tpl_total_pretax|number_format}--></td>
    </tr>
    <tr>
      <th colspan="5" class="resulttd">合计</th>
      <td class="pricetd"><em><!--{$arrData.total-$arrData.deliv_fee|number_format}-->元</em></td>
    </tr>
    <!--{if $arrData.birth_point > 0}-->
    <tr>
      <th colspan="5" class="resulttd">生日月份积分</th>
      <td class="pricetd"><!--{$arrData.birth_point|number_format}-->点</td>
    </tr>
    <!--{/if}-->
    <tr>
      <th colspan="5" class="resulttd">本次增加的积分</th>
      <td class="pricetd"><!--{$arrData.add_point|number_format}-->点</td>
    </tr>
  </table>
  <p class="mini">※商品图片仅供参考。即使图片显示的颜色和您所订购商品的颜色不同，我们也会按照商品编号所记载的颜色发货，尽请放心。</p>
  <div class="tblareabtn">
    <p>
	<img src="<!--{$TPL_DIR}-->img/cart/text.gif" width="390" height="30" alt="上面的内容如果没有问题的话，请点击「到收银台」按钮。" />
    </p>

   <!--{if $tpl_prev_url != ""}-->
     <p>
       <a href="<!--{$tpl_prev_url}-->" onmouseover="chgImg('<!--{$TPL_DIR}-->img/cart/b_pageback_on.gif','back');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/cart/b_pageback.gif','back');">
         <img src="<!--{$TPL_DIR}-->img/cart/b_pageback.gif" width="150" height="30" alt="继续购物" name="back" id="back" />
       </a>&nbsp;&nbsp;
   <!--{/if}-->
       <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/cart/b_buystep_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/cart/b_buystep.gif',this)" src="<!--{$TPL_DIR}-->img/cart/b_buystep.gif" class="box150"  alt="到购买手续页面" name="confirm" />
     </p>
  </div>
</form>
<!--{else}-->
<p class="empty"><em>※ 现在购物车中没有商品。</em></p>
<!--{/if}-->
</div>
</div>
<!--▲CONTENTS-->
