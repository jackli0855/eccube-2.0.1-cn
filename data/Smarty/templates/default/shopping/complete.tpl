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
      <img src="<!--{$TPL_DIR}-->img/shopping/flow04.gif" width="700" height="36" alt="购买商品流程" />
    </p>
    <h2>
      <img src="<!--{$TPL_DIR}-->img/shopping/complete_title.jpg" width="700" height="40" alt="完成订购" />
    </h2>

    <!-- ▼クレジット(コンビニ)決済 -->
    <!--{if $arrModuleParam.module_id > 0 }-->
      <img src="<!--{$smarty.const.CREDIT_HTTP_ANALYZE_URL}-->?mid=<!--{$arrModuleParam.module_id}-->&tid=<!--{$arrModuleParam.payment_total}-->&pid=<!--{$arrModuleParam.payment_id}-->" width="0" height="0" border="0" style="width: 0px; height: 0px" />
    <!--{/if}-->
    <!-- ▲クレジット(コンビニ)決済 -->

    <!-- ▼その他決済情報を表示する場合は表示 -->
    <!--{if $arrOther.title.value }-->
    <p><em>■<!--{$arrOther.title.name}-->信息</em><br />
        <!--{foreach key=key item=item from=$arrOther}-->
        <!--{if $key != "title"}-->
          <!--{if $item.name != ""}-->
            <!--{$item.name}-->：
          <!--{/if}-->
            <!--{$item.value|nl2br}--><br />
        <!--{/if}-->
        <!--{/foreach}-->
    </p>
     <!--{/if}-->
     <!-- ▲コンビに決済の場合には表示 -->

    <div id="completetext">
      <em>非常感谢您购买<!--{$arrInfo.shop_name|escape}-->的商品。</em>

      <p>现在，为了确认你的订购，我们将发送一封电子邮件。<br />
        万一我们的确认邮件没有送达，很有可能是发生了问题。为慎重起见，请您再次进行查询，或者进行电话查询。对由此给您带来的不便，我们深表歉意。<br />
        欢迎您今后经常光顾我们这里。</p>

      <p><!--{$arrInfo.shop_name|escape}--><br />
        TEL：<!--{$arrInfo.tel01}-->-<!--{$arrInfo.tel02}-->-<!--{$arrInfo.tel03}--> <!--{if $arrInfo.business_hour != ""}-->（工作时间/<!--{$arrInfo.business_hour}-->）<!--{/if}--><br />
        E-mail：<a href="mailto:<!--{$arrInfo.email02|escape:'hex'}-->"><!--{$arrInfo.email02|escape:'hexentity'}--></a></p>
    </div>

    <div class="tblareabtn">
      <!--{if $is_campaign}-->
        <a href="<!--{$smarty.const.CAMPAIGN_URL}--><!--{$campaign_dir}-->/index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$TPL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="トップページへ" border="0" name="b_toppage" /></a>
      <!--{else}-->
        <a href="<!--{$smarty.const.URL_DIR}-->index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$TPL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="トップページへ" border="0" name="b_toppage" /></a>
      <!--{/if}-->
    </div>
  </div>
</div>
<!--▲CONTENTS-->
