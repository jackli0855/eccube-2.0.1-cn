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
<div id="undercolumn">

  <div id="undercolumn_aboutus">
    <h2 class="title"><img src="<!--{$TPL_DIR}-->img/aboutus/title.jpg" width="580" height="40" alt="关于本站" /></h2>

    <table summary="关于本站">

    <!--{assign var=_site value=$arrSiteInfo}-->

      <!--{if $_site.shop_name}-->
        <tr>
          <th>店名</th>
          <td><!--{$_site.shop_name|escape}--></td>
        </tr>
      <!--{/if}-->

      <!--{if $_site.company_name}-->
      <tr>
        <th>公司名</th>
        <td><!--{$_site.company_name|escape}--></td>
      </tr>
      <!--{/if}-->

      <!--{if $_site.zip01}-->
      <tr>
        <th>住址</th>
        <td>〒<!--{$_site.zip01|escape}-->-<!--{$_site.zip02|escape}--><br /><!--{$_site.pref|escape}--><!--{$_site.addr01|escape}--><!--{$_site.addr02|escape}--></td>
      </tr>
      <!--{/if}-->

      <!--{if $_site.tel01}-->
      <tr>
        <th>电话号码</th>
        <td><!--{$_site.tel01|escape}-->-<!--{$_site.tel02|escape}-->-<!--{$_site.tel03|escape}--></td>
      </tr>
      <!--{/if}-->

      <!--{if $_site.fax01}-->
      <tr>
        <th>传真</th>
        <td><!--{$_site.fax01|escape}-->-<!--{$_site.fax02|escape}-->-<!--{$_site.fax03|escape}--></td>
      </tr>
      <!--{/if}-->

      <!--{if $_site.email02}-->
      <tr>
        <th>电子邮件</th>
        <td><a href="mailto:<!--{$_site.email02|escape:'hex'}-->"><!--{$_site.email02|escape:'hexentity'}--></a></td>
      </tr>
      <!--{/if}-->

      <!--{if $_site.business_hour}-->
      <tr>
        <th>营业时间</th>
        <td><!--{$_site.business_hour|escape}--></td>
      </tr>
      <!--{/if}-->

      <!--{if $_site.business_hour}-->
      <tr>
        <th>销售商品</th>
        <td><!--{$_site.good_traded|escape|nl2br}--></td>
      </tr>
      <!--{/if}-->

      <!--{if $_site.message}-->
      <tr>
        <th>信息</th>
        <td><!--{$_site.message|escape|nl2br}--></td>
      </tr>
      <!--{/if}-->

    </table>

  </div>
</div>
<!--▲CONTENTS-->

