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
<!--現在のカゴの中ここから-->
  <h2>
    <img src="<!--{$TPL_DIR}-->img/side/title_cartin.jpg" width="166" height="35" alt="現在のカゴの中" />
  </h2>
  <div id="cartarea">
    <p class="item">商品数：<!--{$arrCartList.0.TotalQuantity|number_format|default:0}-->件</p>
    <p>共计：<span class="price"><!--{$arrCartList.0.ProductsTotal|number_format|default:0}-->元</span><br />
    <!-- カゴの中に商品がある場合にのみ表示 -->
    <!--{if $arrCartList.0.TotalQuantity > 0 and $arrCartList.0.free_rule > 0}-->
      <!--{if $arrCartList.0.deliv_free > 0}-->
      免运费和手续费后还需<!--{$arrCartList.0.deliv_free|number_format|default:0}-->元（含税）。
      <!--{else}-->
      现在、「<span class="price">免</span>」运费。
      <!--{/if}-->
    <!--{/if}-->
    </p>
    <p class="btn">
      <a href="<!--{$smarty.const.URL_DIR}-->cart/index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/side/button_cartin_on.gif','button_cartin');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/side/button_cartin.gif','button_cartin');">
        <img src="<!--{$TPL_DIR}-->img/side/button_cartin.gif" width="87" height="22" alt="查看购物车" border="0" name="button_cartin" id="button_cartin" />
      </a>
     </p>
  </div>
<!--現在のカゴの中ここまで-->
