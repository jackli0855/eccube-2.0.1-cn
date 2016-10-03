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
<script type="text/javascript">//<![CDATA[
var send = true;

function fnCheckSubmit() {
	if(send) {
		send = false;
		return true;
	} else {
		alert("现在正在进行处理。请稍等。");
		return false;
	}
}
//]]>
</script>
<!--▼CONTENTS-->
<div id="under02column">
  <div id="under02column_shopping">
    <p class="flowarea"><img src="<!--{$TPL_DIR}-->img/shopping/flow03.gif" width="700" height="36" alt="采购流程" /></p>
    <h2 class="title"><img src="<!--{$TPL_DIR}-->img/shopping/confirm_title.jpg" width="700" height="40" alt="请确认您输入的内容" /></h2>

    <p>以下订购内容将被发送。如果没有问题的话，<br />
      请点击最下面的「<!--{if $payment_type != ""}-->继续<!--{else}-->到订购完成页面<!--{/if}-->」按钮。</p>

    <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
      <input type="hidden" name="mode" value="confirm" />
      <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
      <table summary="确认订购内容">
        <tr>
          <th>商品照片</th>
          <th>商品名称</th>
          <th>单价</th>
          <th>个数</th>
          <th>小计</th>
        </tr>
        <!--{section name=cnt loop=$arrProductsClass}-->
        <tr>
          <td class="phototd">
            <a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="win01('<!--{$smarty.const.URL_DIR}-->products/detail_image.php?product_id=<!--{$arrProductsClass[cnt].product_id}-->&amp;image=main_image','detail_image','<!--{$arrProductsClass[cnt].tpl_image_width}-->','<!--{$arrProductsClass[cnt].tpl_image_height}-->'); return false;" target="_blank">
              <img src="<!--{$smarty.const.SITE_URL}-->resize_image.php?image=<!--{$arrProductsClass[cnt].main_list_image}-->&amp;width=65&amp;height=65" alt="<!--{$arrProductsClass[cnt].name|escape}-->" />
            </a>
          </td>
          <td>
            <ul>
              <li><strong><!--{$arrProductsClass[cnt].name|escape}--></strong></li>
              <!--{if $arrProductsClass[cnt].classcategory_name1 != ""}-->
              <li><!--{$arrProductsClass[cnt].class_name1}-->：<!--{$arrProductsClass[cnt].classcategory_name1}--></li>
              <!--{/if}-->
              <!--{if $arrProductsClass[cnt].classcategory_name2 != ""}-->
              <li><!--{$arrProductsClass[cnt].class_name2}-->：<!--{$arrProductsClass[cnt].classcategory_name2}--></li>
              <!--{/if}-->
            </ul>
         </td>
         <td class="pricetd">
         <!--{if $arrProductsClass[cnt].price02 != ""}-->
           <!--{$arrProductsClass[cnt].price02|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->元
         <!--{else}-->
           <!--{$arrProductsClass[cnt].price01|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->元
         <!--{/if}-->
         </td>
         <td><!--{$arrProductsClass[cnt].quantity|number_format}-->个</td>
         <td class="pricetd"><!--{$arrProductsClass[cnt].total_pretax|number_format}-->元</td>
       </tr>
       <!--{/section}-->
        <tr>
          <th colspan="4" class="resulttd">小计</th>
          <td class="pricetd"><!--{$tpl_total_pretax|number_format}-->元</td>
        </tr>
        <tr>
          <th colspan="4" class="resulttd">折扣（使用积分时）</th>
          <td class="pricetd">
          <!--{assign var=discount value=`$arrData.use_point*$smarty.const.POINT_VALUE`}-->
           -<!--{$discount|number_format|default:0}-->元</td>
        </tr>
        <tr>
          <th colspan="4" class="resulttd">运费</th>
          <td class="pricetd"><!--{$arrData.deliv_fee|number_format}-->元</td>
        </tr>
        <tr>
          <th colspan="4" class="resulttd">手续费</th>
          <td class="pricetd"><!--{$arrData.charge|number_format}-->元</td>
        </tr>
        <tr>
          <th colspan="4" class="resulttd">合计</th>
          <td class="pricetd"><em><!--{$arrData.payment_total|number_format}-->元</em></td>
        </tr>
      </table>

    <!--{* ログイン済みの会員のみ *}-->
    <!--{if $tpl_login == 1 || $arrData.member_check == 1}-->
      <table summary="确认积分" class="delivname">
        <tr>
          <th>您订购前的积分</th>
          <td><!--{$tpl_user_point|number_format|default:0}-->点</td>
        </tr>
        <tr>
          <th>使用的积分</th>
          <td>-<!--{$arrData.use_point|number_format|default:0}-->点</td>
        </tr>
        <!--{if $arrData.birth_point > 0}-->
        <tr>
          <th>您诞生月的积分</th>
          <th>+<!--{$arrData.birth_point|number_format|default:0}-->点</td>
        </tr>
        <!--{/if}-->
        <tr>
          <th>本次增加的积分</th>
          <td>+<!--{$arrData.add_point|number_format|default:0}-->点</td>
        </tr>
        <tr>
        <!--{assign var=total_point value=`$tpl_user_point-$arrData.use_point+$arrData.add_point`}-->
          <th>订购完成后的积分</th>
          <td><!--{$total_point|number_format}-->点</td>
        </tr>
      </table>
    <!--{/if}-->
    <!--{* ログイン済みの会員のみ *}-->

      <table summary="确认送货地址" class="delivname">
        <thead>
          <tr>
            <th colspan="2">▼送货地址</th>
          </tr>
        </thead>
        <tbody>
        <!--{* 別のお届け先が選択されている場合 *}-->
        <!--{if $arrData.deliv_check >= 1}-->
        <tr>
          <th>姓名</th>
          <td><!--{$arrData.deliv_name01|escape}--> <!--{$arrData.deliv_name02|escape}--></td>
        </tr>
        <tr>
          <th>姓名（拼音）</th>
          <td><!--{$arrData.deliv_kana01|escape}--> <!--{$arrData.deliv_kana02|escape}--></td>
        </tr>
        <tr>
          <th>邮政编码</th>
          <td>〒<!--{$arrData.deliv_zip01|escape}-->-<!--{$arrData.deliv_zip02|escape}--></td>
        </tr>
        <tr>
          <th>住址</th>
          <td><!--{$arrPref[$arrData.deliv_pref]}--><!--{$arrData.deliv_addr01|escape}--><!--{$arrData.deliv_addr02|escape}--></td>
        </tr>
        <tr>
          <th>电话号码</th>
          <td><!--{$arrData.deliv_tel01}-->-<!--{$arrData.deliv_tel02}-->-<!--{$arrData.deliv_tel03}--></td>
        </tr>
      </table>
      <!--{else}-->
      <tr>
          <th>姓名</th>
          <td><!--{$arrData.order_name01|escape}--> <!--{$arrData.order_name02|escape}--></td>
        </tr>
        <tr>
          <th>姓名（拼音）</th>
          <td><!--{$arrData.order_kana01|escape}--> <!--{$arrData.order_kana02|escape}--></td>
        </tr>
        <tr>
          <th>邮政编码</th>
          <td>〒<!--{$arrData.order_zip01|escape}-->-<!--{$arrData.order_zip02|escape}--></td>
        </tr>
        <tr>
          <th>住址</th>
          <td><!--{$arrPref[$arrData.order_pref]}--><!--{$arrData.order_addr01|escape}--><!--{$arrData.order_addr02|escape}--></td>
        </tr>
        <tr>
          <th>电话号码</th>
          <td><!--{$arrData.order_tel01}-->-<!--{$arrData.order_tel02}-->-<!--{$arrData.order_tel03}--></td>
        </tr>
        <!--{/if}-->
        </tbody>
      </table>
      <!--お届け先ここまで-->

      <table summary="支付方法、送货时间的指定、其他查询" class="delivname">
        <thead>
        <tr>
          <th colspan="2">▼支付方法、送货时间的指定、其他查询</th>
        </tr>
        </thead>
        <tbody>
        <tr>
          <th>支付方法</th>
          <td><!--{$arrData.payment_method|escape}--></td>
        </tr>
        <tr>
          <th>送货日期</th>
          <td><!--{$arrData.deliv_date|escape|default:"无指定"}--></td>
        </tr>
        <tr>
          <th>送货时间</th>
          <td><!--{$arrData.deliv_time|escape|default:"无指定"}--></td>
        </tr>
        <tr>
          <th>其他查询</th>
          <td><!--{$arrData.message|escape|nl2br}--></td>
        </tr>
        <!--{if $tpl_login == 1}-->
        <tr>
          <th>积分使用</th>
          <td><!--{$arrData.use_point|default:0}-->点</td>
        </tr>
        <!--{/if}-->
        </tbody>
      </table>

      <div class="tblareabtn">
        <a href="./payment.php" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_back_on.gif',back03)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_back.gif',back03)"><img src="<!--{$TPL_DIR}-->img/common/b_back.gif" width="150" height="30" alt="返回" border="0" name="back03" id="back03" /></a>&nbsp;
        <!--{if $payment_type != ""}-->
        <input type="image" onclick="return fnCheckSubmit();" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next.gif',this)" src="<!--{$TPL_DIR}-->img/common/b_next.gif" alt="继续" class="box150" name="next" id="next" />
        <!--{else}-->
        <input type="image" onclick="return fnCheckSubmit();" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/shopping/b_ordercomp_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/shopping/b_ordercomp.gif',this)" src="<!--{$TPL_DIR}-->img/shopping/b_ordercomp.gif" alt="到订购完成页面" class="box150" name="next" id="next" />
        <!--{/if}-->
      </div>
    </form>
  </div>
</div>
<!--▲CONTENTS-->
