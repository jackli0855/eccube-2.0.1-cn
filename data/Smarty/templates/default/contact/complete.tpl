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
  <div id="undercolumn_contact">
    <h2 class="title">
      <img src="<!--{$TPL_DIR}-->img/contact/title.jpg" width="580" height="40" alt="咨询" />
    </h2>
    <div id="completetext">
      您所咨询的内容已送出。<br />
      万一我们的回复信函没有送到，有可能是系统故障。如果方便的话，请再次咨询我们，或者通过电话咨询。<br />
      希望您今后能经常光顾这里。
    <p><!--{$arrSiteInfo.company_name|escape}--><br />
      TEL：<!--{$arrSiteInfo.tel01}-->-<!--{$arrSiteInfo.tel02}-->-<!--{$arrSiteInfo.tel03}-->
       <!--{if $arrSiteInfo.business_hour != ""}-->
      （受理时间/<!--{$arrSiteInfo.business_hour}-->）
       <!--{/if}--><br />
      E-mail：<a href="mailto:<!--{$arrSiteInfo.email02|escape:'hex'}-->"><!--{$arrSiteInfo.email02|escape:'hexentity'}--></a></p>
    </div>
    <div class="tblareabtn">
    <!--{if $is_campaign}-->
      <a href="<!--{$smarty.const.CAMPAIGN_URL}--><!--{$campaign_dir}-->/index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$TPL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="到首页" border="0" name="b_toppage" id="b_toppage" /></a>

    <!--{else}-->

      <a href="<!--{$smarty.const.URL_DIR}-->index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage_on.gif','b_toppage');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_toppage.gif','b_toppage');"><img src="<!--{$TPL_DIR}-->img/common/b_toppage.gif" width="150" height="30" alt="到首页" border="0" name="b_toppage" id="b_toppage" /></a>
    <!--{/if}-->
    </div>
  </div>
</div>
