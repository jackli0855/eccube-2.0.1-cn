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
  <div id="under02column_shopping">
    <p class="flowarea">
      <img src="<!--{$TPL_DIR}-->img/shopping/flow01.gif" width="700" height="36" alt="采购流程" />
    </p>
    <h2 class="title">
      <img src="<!--{$TPL_DIR}-->img/shopping/deliv_title.jpg" width="700" height="40" alt="指定送货地址" />
    </h2>

    <p>在下面的一览表中选择送货地址，然后点击「送至您选择的地址」按钮。<br />
      若一览表中没有您希望的地址，请按「添加新的送货地址」进行追加登记。<br />
      ※最多可以登记20条。</p>
    <!--{if $tpl_addrmax < $smarty.const.DELIV_ADDR_MAX}-->
    <p class="addbtn">
      <a href="<!--{$smarty.const.URL_DIR}-->mypage/delivery_addr.php" onclick="win02('<!--{$smarty.const.URL_DIR}-->mypage/delivery_addr.php?page=<!--{$smarty.server.PHP_SELF|escape}-->','new_deiv','600','640'); return false;" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/newadress_on.gif','addition');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/newadress.gif','addition');"><img src="<!--{$TPL_DIR}-->img/common/newadress.gif" width="160" height="22" alt="添加新的送货地址" name="addition" id="addition" /></a>
    </p>
    <!--{/if}-->
    <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
      <input type="hidden" name="mode" value="customer_addr" />
      <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
      <input type="hidden" name="other_deliv_id" value="" />
      <!--{if $arrErr.deli != ""}-->
      <p class="attention"><!--{$arrErr.deli}--></p>
      <!--{/if}-->
      <table summary="指定送货地址">
        <tr>
          <th>选择</th>
          <th>住址类别</th>
          <th>送货地址</th>
          <th>修改</th>
          <th>删除</th>
        </tr>
       <!--{section name=cnt loop=$arrAddr}-->
       <tr>
         <td class="centertd">
           <!--{if $smarty.section.cnt.first}-->
           <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="-1" <!--{if $arrForm.deliv_check.value == "" || $arrForm.deliv_check.value == -1}--> checked="checked"<!--{/if}--> />
           <!--{else}-->
           <input type="radio" name="deliv_check" id="chk_id_<!--{$smarty.section.cnt.iteration}-->" value="<!--{$arrAddr[cnt].other_deliv_id}-->" <!--{if $arrForm.deliv_check.value == $arrAddr[cnt].other_deliv_id}--> checked="checked"<!--{/if}--> />
           <!--{/if}-->
        </td>
        <td>
          <label for="chk_id_<!--{$smarty.section.cnt.iteration}-->">
            <!--{if $smarty.section.cnt.first}-->
            会员登记住址
            <!--{else}-->
            添加登记住址
            <!--{/if}-->
          </label>
        </td>
        <td>
          <!--{assign var=key value=$arrAddr[cnt].pref}-->
          <!--{$arrPref[$key]}--><!--{$arrAddr[cnt].addr01|escape}--><!--{$arrAddr[cnt].addr02|escape}--><br />
          <!--{$arrAddr[cnt].name01|escape}--> <!--{$arrAddr[cnt].name02|escape}-->
        </td>
        <td class="centertd">
        <!--{if !$smarty.section.cnt.first}-->
          <a href="<!--{$smarty.const.URL_DIR}-->mypage/delivery_addr.php" onclick="win02('<!--{$smarty.const.URL_DIR}-->mypage/delivery_addr.php?page=<!--{$smarty.server.PHP_SELF|escape}-->&amp;other_deliv_id=<!--{$arrAddr[cnt].other_deliv_id}-->','new_deiv','600','640'); return false;">修改</a>
        <!--{/if}-->
        </td>
        <td class="centertd">
        <!--{if !$smarty.section.cnt.first}-->
          <a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnModeSubmit('delete', 'other_deliv_id', '<!--{$arrAddr[cnt].other_deliv_id}-->'); return false">删除</a>
        <!--{/if}-->
        </td>
      </tr>
      <!--{/section}-->
    </table>

      <div class="tblareabtn">
        <a href="<!--{$smarty.const.URL_DIR}-->cart/index.php" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_back_on.gif',back03)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_back.gif',back03)">
          <img src="<!--{$TPL_DIR}-->img/common/b_back.gif" width="150" height="30" alt="返回" border="0" name="back03" id="back03" />
        </a>
        <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/shopping/b_select_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/shopping/b_select.gif',this)" src="<!--{$TPL_DIR}-->img/shopping/b_select.gif" alt="送至您选择的地址" class="box190" name="send_button" id="send_button" />
      </div>
    </form>
  </div>
</div>
<!--▲CONTENTS-->
