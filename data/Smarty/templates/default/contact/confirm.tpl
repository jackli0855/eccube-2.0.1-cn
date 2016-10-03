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

<div id="undercolumn">
  <div id="undercolumn_contact">
    <h2 class="title">
      <img src="<!--{$TPL_DIR}-->img/contact/title.jpg" width="580" height="40" alt="咨询" />
    </h2>
    <p>将要发送您输入的以下内容。<br />
      如果没有问题的话，请点击最下面的「发送」按钮。</p>
    <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
      <input type="hidden" name="mode" value="complete" />
      <!--{foreach key=key item=item from=$arrForm}-->
        <!--{if $key ne 'mode'}-->
      <input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->" />
        <!--{/if}-->
      <!--{/foreach}-->
      <table summary="确认咨询内容">
        <tr>
          <th>姓名<span class="attention">※</span></th>
          <td><!--{$arrForm.name01|escape}-->　<!--{$arrForm.name02|escape}--></td>
        </tr>
        <tr>
          <th>姓名（拼音）<span class="attention">※</span></th>
          <td><!--{$arrForm.kana01|escape}-->　<!--{$arrForm.kana02|escape}--></td>
        </tr>
        <tr>
          <th>邮政编码</th>
          <td>
             <!--{if strlen($arrForm.zip01) > 0 && strlen($arrForm.zip02) > 0}-->
               〒<!--{$arrForm.zip01|escape}-->-<!--{$arrForm.zip02|escape}-->
             <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>住址</th>
          <td><!--{$arrPref[$arrForm.pref]}--><!--{$arrForm.addr01|escape}--><!--{$arrForm.addr02|escape}--></td>
        </tr>
        <tr>
          <th>电话号码</th>
          <td>
            <!--{if strlen($arrForm.tel01) > 0 && strlen($arrForm.tel02) > 0 && strlen($arrForm.tel03) > 0}-->
              <!--{$arrForm.tel01|escape}-->-<!--{$arrForm.tel02|escape}-->-<!--{$arrForm.tel03|escape}-->
            <!--{/if}-->
          </td>
        </tr>
        <tr>
          <th>电子邮件<span class="attention">※</span></th>
          <td><a href="mailto:<!--{$arrForm.email|escape:'hex'}-->"><!--{$arrForm.email|escape:'hexentity'}--></a></td>
        </tr>
        <tr>
          <th>您的咨询内容<span class="attention">※</span><br />
             <span class="mini">（全角1000字以内）</span></th>
          <td><!--{$arrForm.contents|escape|nl2br}--></td>
        </tr>
      </table>
      <div class="tblareabtn">
      <a href="<!--{$smarty.server.PHP_SELF|escape}-->"
         onclick="fnModeSubmit('return', '', ''); return false;"
         onmouseover="chgImg('<!--{$TPL_DIR}-->img/common/b_back_on.gif','back02');"
         onmouseout="chgImg('<!--{$TPL_DIR}-->img/common/b_back.gif','back02');">
        <img src="<!--{$TPL_DIR}-->img/common/b_back.gif" width="150" height="30"
             alt="返回" name="back02" id="back02" />
      </a>
      <input type="image"
             onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_complete_on.gif',this)"
             onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_complete.gif',this)"
             src="<!--{$TPL_DIR}-->img/common/b_complete.gif" alt="到结束页面" name="send" id="send" class="box150" />
       </div>
     </form>
   </div>
</div>
<!--▲CONTENTS-->
