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
      <img src="<!--{$TPL_DIR}-->img/shopping/flow02.gif" width="700" height="36" alt="采购流程" />
    </p>
    <h2 class="title">
      <img src="<!--{$TPL_DIR}-->img/shopping/payment_title.jpg" width="700" height="40" alt="指定支付方法，递送时间等" /></h2>

    <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
      <input type="hidden" name="mode" value="confirm" />
      <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
      <div class="payarea">
        <h3><img src="<!--{$TPL_DIR}-->img/shopping/subtitle01.gif" width="670" height="33" alt="指定支付方法" /></h3>
        <p>请选择支付方法。</p>

        <!--{assign var=key value="payment_id"}-->
        <!--{if $arrErr[$key] != ""}-->
        <p class="attention"><!--{$arrErr[$key]}--></p>
        <!--{/if}-->
        <table summary="选择支付方法">
          <tr>
            <th>选择</th>
            <th colspan="<!--{if $arrPayment[cnt].payment_image == ""}-->2<!--{else}-->3<!--{/if}-->">支付方法</th>
          </tr>
          <!--{section name=cnt loop=$arrPayment}-->
          <tr>
            <td class="centertd"><input type="radio" id="pay_<!--{$smarty.section.cnt.iteration}-->" name="<!--{$key}-->" onclick="fnModeSubmit('payment', '', '');" value="<!--{$arrPayment[cnt].payment_id}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" <!--{$arrPayment[cnt].payment_id|sfGetChecked:$arrForm[$key].value}--> />
            </td>
            <td>
              <label for="pay_<!--{$smarty.section.cnt.iteration}-->"><!--{$arrPayment[cnt].payment_method|escape}--><!--{if $arrPayment[cnt].note != ""}--><!--{/if}--></label>
            </td>
            <!--{if $arrPayment[cnt].payment_image != ""}-->
            <td>
              <img src="<!--{$smarty.const.IMAGE_SAVE_URL}--><!--{$arrPayment[cnt].payment_image}-->" />
            </td>
            <!--{/if}-->
          </tr>
          <!--{/section}-->
        </table>
      </div>

      <div class="payarea02">
        <h3><img src="<!--{$TPL_DIR}-->img/shopping/subtitle02.gif" width="670" height="33" alt="指定发送时间" /></h3>
        <p>有需要的话，请选择递送时间。</p>
        <div>
          <!--★指定发货日期★-->
          <!--{assign var=key value="deliv_date"}-->
          <span class="attention"><!--{$arrErr[$key]}--></span>
          <em>指定送达日期：</em>
          <!--{if !$arrDelivDate}-->
            无法指定。
          <!--{else}-->
            <select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">
              <option value="" selected="">无指定</option>
              <!--{html_options options=$arrDelivDate selected=$arrForm[$key].value}-->
            </select>
          <!--{/if}-->
          <!--{assign var=key value="deliv_time_id"}-->
          <span class="attention"><!--{$arrErr[$key]}--></span>
          <em>指定送达时间：</em>
          <select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">
            <option value="" selected="">无指定</option>
            <!--{html_options options=$arrDelivTime selected=$arrForm[$key].value}-->
          </select>
         </div>
      </div>

      <div class="payarea02">
        <h3><img src="<!--{$TPL_DIR}-->img/shopping/subtitle03.gif" width="670" height="33" alt="其他查询" /></h3>
        <p>如果有其他查询事项，请在这里输入。</p>
        <div>
         <!--★その他お問い合わせ事項★-->
         <!--{assign var=key value="message"}-->
         <span class="attention"><!--{$arrErr[$key]}--></span>
         <textarea name="<!--{$key}-->"  style="<!--{$arrErr[$key]|sfGetErrorColor}-->" cols="80" rows="8" class="area660" wrap="head"><!--{$arrForm[$key].value|escape}--></textarea>
         <span class="attention"> （限<!--{$smarty.const.LTEXT_LEN}-->字）</span>
        </div>
      </div>

      <!-- ▼ポイント使用 ここから -->
      <!--{if $tpl_login == 1}-->
    <div class="pointarea">
      <h3><img src="<!--{$TPL_DIR}-->img/shopping/subtitle_point.jpg" width="670" height="32" alt="指定积分的使用" /></h3>

        <p><span class="attention">1分可以作为1元</span>来使用。<br />
          如果用积分的话，在「使用积分」处打勾后，填入使用的积分</p>
      <div>
        <p><!--{$objCustomer->getValue('name01')|escape}--> <!--{$objCustomer->getValue('name02')|escape}-->的，现在所持有的积分为「<em><!--{$tpl_user_point|default:0}-->点</em>」。</p>
        <p>本次采购合计金额：<span class="price"><!--{$arrData.subtotal|number_format}-->元</span><span class="attention">（不含运费，手续费。）</span></p>
        <ul>
          <li><input type="radio" id="point_on" name="point_check" value="1" <!--{$arrForm.point_check.value|sfGetChecked:1}--> onclick="fnCheckInputPoint();" /><label for="point_on">使用积分</label></li>
           <!--{assign var=key value="use_point"}-->

           <li class="underline">本次购物中，使用了<input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|default:$tpl_user_point}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="6" class="box60" />&nbsp;积分。<span class="attention"><!--{$arrErr[$key]}--></span></li>
           <li><input type="radio" id="point_off" name="point_check" value="2" <!--{$arrForm.point_check.value|sfGetChecked:2}--> onclick="fnCheckInputPoint();" /><label for="point_off">不使用积分</label></li>
         </ul>
      </div>
    </div>
      <!--{/if}-->
      <!-- ▲ポイント使用 ここまで -->

      <div class="tblareabtn">
        <a href="<!--{$tpl_back_url|escape}-->" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_back_on.gif','back03')" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_back.gif','back03')">
          <img src="<!--{$TPL_DIR}-->img/common/b_back.gif" width="150" height="30" alt="返回" border="0" name="back03" id="back03" />
        </a>&nbsp;
        <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next.gif',this)" src="<!--{$TPL_DIR}-->img/common/b_next.gif" class="box150" alt="继续" name="next" id="next" />
      </div>
    </form>
  </div>
</div>
<!--▲CONTENTS-->
