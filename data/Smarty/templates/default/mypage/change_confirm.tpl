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

    <h3><img src="<!--{$TPL_DIR}-->img/mypage/subtitle02.gif" width="515" height="32" alt="修改会员注册信息" /></h3>
    <p>将要发送以下的内容。<br />
      如果没有问题的话，请点击最下面的「到会员注册结束页面」按钮。</p>

    <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
      <input type="hidden" name="mode" value="complete" />
      <input type="hidden" name="customer_id" value="<!--{$arrForm.customer_id|escape}-->" />
      <!--{foreach from=$arrForm key=key item=item}-->
        <!--{if $key ne "mode" && $key ne "subm"}-->
        <input type="hidden" name="<!--{$key|escape}-->" value="<!--{$item|escape}-->" />
        <!--{/if}-->
      <!--{/foreach}-->
      <table summary=" " class="delivname">
        <tr>
          <th>姓名<span class="attention">※</span></th>
          <td><!--{$arrForm.name01|escape}-->　<!--{$arrForm.name02|escape}--></td>
        </tr>
        <tr>
          <th>姓名（拼音）<span class="attention">※</span></th>
          <td><!--{$arrForm.kana01|escape}-->　<!--{$arrForm.kana02|escape}--></td>
        </tr>
        <tr>
          <th>邮政编码<span class="attention">※</span></th>
          <td><!--{$arrForm.zip01}-->-<!--{$arrForm.zip02}--></td>
        </tr>
        <tr>
          <th>住址<span class="attention">※</span></th>
          <td><!--{$arrPref[$arrForm.pref]}--><!--{$arrForm.addr01|escape}--><!--{$arrForm.addr02|escape}--></td>
        </tr>
        <tr>
          <th>电话号码<span class="attention">※</span></th>
          <td><!--{$arrForm.tel01|escape}-->-<!--{$arrForm.tel02}-->-<!--{$arrForm.tel03}--></td>
        </tr>
        <tr>
          <th>传真</th>
          <td><!--{if strlen($arrForm.fax01) > 0}--><!--{$arrForm.fax01}-->-<!--{$arrForm.fax02}-->-<!--{$arrForm.fax03}--><!--{else}-->未注册<!--{/if}--></td>
        </tr>
        <tr>
          <th>电子邮件<span class="attention">※</span></th>
          <td><a href="<!--{$arrForm.email|escape:'hex'}-->"><!--{$arrForm.email|escape:'hexentity'}--></a></td>
        </tr>
        <tr>
          <th>手机电子邮件</th>
          <td>
            <!--{if strlen($arrForm.email_mobile) > 0}-->
            <a href="<!--{$arrForm.email_mobile|escape:'hex'}-->"><!--{$arrForm.email_mobile|escape:'hexentity'}--></a>
            <!--{else}-->
            未注册
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>性别<span class="attention">※</span></th>
          <td><!--{$arrSex[$arrForm.sex]}--></td>
        </tr>
        <tr>
          <th>职业</th>
          <td><!--{$arrJob[$arrForm.job]|escape|default:"未注册"}--></td>
        </tr>
        <tr>
          <th>出生年月日</th>
          <td><!--{if strlen($arrForm.year) > 0 && strlen($arrForm.month) > 0 && strlen($arrForm.day) > 0}--><!--{$arrForm.year|escape}-->年<!--{$arrForm.month|escape}-->月<!--{$arrForm.day|escape}-->日<!--{else}-->未注册<!--{/if}--></td>
        </tr>
        <tr>
          <th>您希望的密码<br />
            <span class="mini">密码在购物时是必要的。</span></th>
          <td><!--{$passlen}--></td>
        </tr>
        <tr>
          <th>密码忘记时的提示<span class="attention">※</span></th>
          <td>提问：&nbsp;<!--{$arrReminder[$arrForm.reminder]|escape}--><br />
              回答：&nbsp;<!--{$arrForm.reminder_answer|escape}--></td>
        </tr>
        <tr>
          <th>关于电子杂志的发送<span class="attention">※</span></th>
          <td><!--{$arrMAILMAGATYPE[$arrForm.mailmaga_flg]}--></td>
        </tr>
      </table>

      <div class="tblareabtn">
        <a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnModeSubmit('return', '', ''); return false;" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_back_on.gif','back');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_back.gif','back');"><img src="<!--{$TPL_DIR}-->img/common/b_back.gif" width="150" height="30" alt="返回" name="back" id="back" /></a>
        &nbsp;
       <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_send_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_send.gif',this)" src="<!--{$TPL_DIR}-->img/common/b_send.gif" class="box150" alt="发送" name="complete" id="complete" />
      </div>
    </form>
  </div>
<!--▲CONTENTS-->
