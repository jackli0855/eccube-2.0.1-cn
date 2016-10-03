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
<div id="undercolumn">
  <div id="undercolumn_entry">
    <h2 class="title">
      <img src="<!--{$TPL_DIR}-->img/entry/title.jpg" width="580" height="40" alt="会员注册" />
    </h2>
    <div id="completetext">
      <em>已完成会员注册的受理。</em>
      <p>现在是<em>临时会员</em>状态。<br />
        我们将会致信您输入的电子邮件，请成为正式会员以享受购物的乐趣。<br />
        希望您今后能经常光顾这里。</p>

      <p><!--{$arrSiteInfo.company_name|escape}--><br />
        TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}--> <!--{if $arrSiteInfo.business_hour != ""}-->（受理时间/<!--{$arrSiteInfo.business_hour}-->）<!--{/if}--><br />
        E-mail：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a>
      </p>

      <div class="tblareabtn">
        <!--{if $is_campaign}-->
        <a href="<!--{$smarty.const.URL_SHOP_TOP}-->" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$TPL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="到首页" border="0" name="b_toppage" /></a>
        <!--{else}-->
        <a href="<!--{$smarty.const.URL_DIR}-->index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$TPL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="到首页" border="0" name="b_toppage" /></a>
        <!--{/if}-->
      </div>
    </div>
  </div>
</div>
<!--▲CONTENTS-->
