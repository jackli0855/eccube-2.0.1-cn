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
    <h2 class="title"><img src="<!--{$TPL_DIR}-->img/entry/title.jpg" width="580" height="40" alt="会员注册" /></h2>
    <p>将要发送以下的内容。<br />
      如果没有问题的话，请点击最下面的「到会员注册结束页面」按钮。</p>
    <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
      <input type="hidden" name="mode" value="complete">
      <!--{foreach from=$list_data key=key item=item}-->
        <input type="hidden" name="<!--{$key|escape}-->" value="<!--{$item|escape}-->" />
      <!--{/foreach}-->
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />

      <table summary="输入内容确认">
        <tr>
          <th>姓名<span class="attention">※</span></th>
          <td>
            <!--{$list_data.name01|escape}-->&nbsp;
            <!--{$list_data.name02|escape}-->
          </td>
        </tr>
        <tr>
          <th>姓名（拼音）<span class="attention">※</span></th>
          <td>
            <!--{$list_data.kana01|escape}-->&nbsp;
            <!--{$list_data.kana02|escape}-->
          </td>
        </tr>
        <tr>
          <th>邮政编码<span class="attention">※</span></th>
          <td>
            〒<!--{$list_data.zip01|escape}--> - <!--{$list_data.zip02|escape}-->
          </td>
        </tr>
        <tr>
          <th>住址<span class="attention">※</span></th>
          <td>
            <!--{$arrPref[$list_data.pref]|escape}--><!--{$list_data.addr01|escape}--><!--{$list_data.addr02|escape}-->
          </td>
        </tr>
        <tr>
          <th>电话号码<span class="attention">※</span></th>
          <td>
            <!--{$list_data.tel01|escape}--> - <!--{$list_data.tel02|escape}--> - <!--{$list_data.tel03|escape}-->
          </td>
        </tr>
        <tr>
          <th>传真</th>
          <td>
            <!--{if strlen($list_data.fax01) > 0 && strlen($list_data.fax02) > 0 && strlen($list_data.fax03) > 0}-->
              <!--{$list_data.fax01|escape}--> - <!--{$list_data.fax02|escape}--> - <!--{$list_data.fax03|escape}-->
            <!--{else}-->
              未注册
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>电子邮件<span class="attention">※</span></th>
          <td>
            <a href="mailto:<!--{$list_data.email|escape:'hex'}-->"><!--{$list_data.email|escape:'hexentity'}--></a>
          </td>
        </tr>
        <tr>
          <th>性别<span class="attention">※</span></th>
          <td>
            <!--{if $list_data.sex eq 1}-->
            男性
            <!--{else}-->
            女性
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>职业</th>
          <td><!--{$arrJob[$list_data.job]|escape|default:"未注册"}--></td>
        </tr>
        <tr>
          <th>出生年月日</th>
          <td>
            <!--{if strlen($list_data.year) > 0 && strlen($list_data.month) > 0 && strlen($list_data.day) > 0}-->
              <!--{$list_data.year|escape}-->年<!--{$list_data.month|escape}-->月<!--{$list_data.day|escape}-->日
            <!--{else}-->
            未注册
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>希望使用的密码<span class="attention">※</span><br />
            <span class="mini">密码在购物时是必须的</span>
          </th>
          <td><!--{$passlen}--></td>
        </tr>
        <tr>
          <th>忘记密码时的提示<span class="attention">※</span></th>
          <td>
              问题：<!--{$arrReminder[$list_data.reminder]|escape}--><br />
              回答：<!--{$list_data.reminder_answer|escape}-->
          </td>
        </tr>
        <tr>
          <th>关于电子杂志的发送<span class="attention">※</span></th>
          <td>
            <!--{if $list_data.mailmaga_flg eq 1}-->
            接受HTML邮件+文本邮件
            <!--{elseif $list_data.mailmaga_flg eq 2}-->
            接受文本邮件
            <!--{else}-->
            不接受
            <!--{/if}-->
          </td>
        </tr>
      </table>

      <div class="tblareabtn">
        <a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="fnModeSubmit('return', '', ''); return false;" onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_back_on.gif','back')" onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_back.gif','back')"><img src="<!--{$TPL_DIR}-->img/common/b_back.gif" width="150" height="30" alt="返回" border="0" name="back" id="back" /></a>&nbsp;
        <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/entry/b_entrycomp_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/entry/b_entrycomp.gif',this)" src="<!--{$TPL_DIR}-->img/entry/b_entrycomp.gif" class="box150" alt="发送" border="0" name="send" id="send" />
      </div>
    </form>
  </div>
</div>
<!--▲CONTENTS-->
