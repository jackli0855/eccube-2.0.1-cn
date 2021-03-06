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
  <div id="under02column_customer">
    <p class="flowarea"><img src="<!--{$TPL_DIR}-->img/shopping/flow01.gif" width="700" height="36" alt="采购流程" /></p>
    <h2 class="title"><img src="<!--{$TPL_DIR}-->img/shopping/info_title.jpg" width="700" height="40" alt="输入客户信息" /></h2>

    <p>请输入以下项目：有「<span class="attention">※</span>」标记的是必须输入项目。<br />
      输入后，请点击最下面的「到确认页面」按钮。</p>
    <form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
      <input type="hidden" name="mode" value="nonmember_confirm" />
      <input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->" />
      <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
      <table summary=" ">
        <tr>
          <th>姓名<span class="attention">※</span></th>
          <td>
            <!--{assign var=key1 value="order_name01"}-->
            <!--{assign var=key2 value="order_name02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            姓&nbsp;<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="15" class="box120" />&nbsp;
            名&nbsp;<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->" size="15" class="box120" />
          </td>
        </tr>
        <tr>
          <th>姓名（拼音）<span class="attention">※</span></th>
          <td>
            <!--{assign var=key1 value="order_kana01"}-->
            <!--{assign var=key2 value="order_kana02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            XING&nbsp;<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="15" class="box120" />&nbsp;
            MING&nbsp;<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->" size="15" class="box120" />
          </td>
        </tr>
        <tr>
          <th>邮政编码<span class="attention">※</span></th>
          <td>
            <!--{assign var=key1 value="order_zip01"}-->
            <!--{assign var=key2 value="order_zip02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <p>〒&nbsp;<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->"  size="6" class="box60" />&nbsp;-&nbsp;  <input type="text"  name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->"  size="6" class="box60" />　
              <a href="http://search.post.japanpost.jp/zipcode/" target="_blank"><span class="fs10">检索邮政编码</span></a></p>

            <p class="zipimg"><a href="<!--{$smarty.const.URL_DIR}-->address/index.php" onclick="fnCallAddress('<!--{$smarty.const.URL_INPUT_ZIP}-->', 'order_zip01', 'order_zip02', 'order_pref', 'order_addr01'); return false;" target="_blank"><img src="<!--{$TPL_DIR}-->img/common/address.gif" width="86" height="20" alt="自动输入住址" /></a>
               <span class="mini">&nbsp;输入邮政编码后，请点击。</span></p>
          </td>
        </tr>
        <tr>
          <th>住址<span class="attention">※</span></th>
          <td>
            <!--{assign var=key value="order_pref"}-->
            <span class="attention"><!--{$arrErr.order_pref}--><!--{$arrErr.order_addr01}--><!--{$arrErr.order_addr02}--></span>
            <select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">
              <option value="">选择省市自治区</option>
              <!--{html_options options=$arrPref selected=$arrForm[$key].value}-->
            </select>
            <p class="mini">
              <!--{assign var=key value="order_addr01"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" size="40" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" class="box380" /><br />
              <!--{$smarty.const.SAMPLE_ADDRESS1}--></p>
            <p class="mini">
              <!--{assign var=key value="order_addr02"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" size="40"  maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" class="box380" /><br />
              <!--{$smarty.const.SAMPLE_ADDRESS2}--></p>
            <p class="mini"><em>住址可以分二段分别填写。公寓名称是必须输入的。</em></p></td>
        </tr>
        <tr>
          <th>电话号码<span class="attention">※</span></th>
          <td>
            <!--{assign var=key1 value="order_tel01"}-->
            <!--{assign var=key2 value="order_tel02"}-->
            <!--{assign var=key3 value="order_tel03"}-->
            <span class="attention"><!--{$arrErr[$key1]}--></span>
            <span class="attention"><!--{$arrErr[$key2]}--></span>
            <span class="attention"><!--{$arrErr[$key3]}--></span>
            <input type="text" name="<!--{$arrForm[$key1].keyname}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="6" class="box60" /> -
            <input type="text" name="<!--{$arrForm[$key2].keyname}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->"  size="6" class="box60" /> -
            <input type="text" name="<!--{$arrForm[$key3].keyname}-->" value="<!--{$arrForm[$key3].value|escape}-->" maxlength="<!--{$arrForm[$key3].length}-->" style="<!--{$arrErr[$key3]|sfGetErrorColor}-->" size="6" class="box60" />
          </td>
        </tr>
        <tr>
          <th>FAX</th>
          <td>
            <!--{assign var=key1 value="order_fax01"}-->
            <!--{assign var=key2 value="order_fax02"}-->
            <!--{assign var=key3 value="order_fax03"}-->
            <span class="attention"><!--{$arrErr[$key1]}--></span>
            <span class="attention"><!--{$arrErr[$key2]}--></span>
            <span class="attention"><!--{$arrErr[$key3]}--></span>
            <input type="text" name="<!--{$arrForm[$key1].keyname}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="6" class="box60" /> -
            <input type="text" name="<!--{$arrForm[$key2].keyname}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->"  size="6" class="box60" /> -
            <input type="text" name="<!--{$arrForm[$key3].keyname}-->" value="<!--{$arrForm[$key3].value|escape}-->" maxlength="<!--{$arrForm[$key3].length}-->" style="<!--{$arrErr[$key3]|sfGetErrorColor}-->" size="6" class="box60" />
          </td>
        </tr>
        <tr>
          <th>电子邮件<span class="attention">※</span></th>
          <td>
            <!--{assign var=key value="order_email"}-->
            <span class="attention"><!--{$arrErr[$key]}--></span>
            <input type="text" name="<!--{$arrForm[$key].keyname}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box380" /><br />
            <!--{assign var=key value="order_email_check"}-->
            <span class="attention"><!--{$arrErr[$key]}--></span>
            <input type="text" name="<!--{$arrForm[$key].keyname}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box380" /><br />
            <p class="mini"><em>请再次输入以便确认。</em></p>
          </td>
        </tr>
        <tr>
          <th>性别<span class="attention">※</span></th>
          <td>
            <!--{assign var=key value="order_sex"}-->
            <span class="attention"><!--{$arrErr[$key]}--></span>
            <!--{if $arrErr[$key]}-->
              <!--{assign var=err value="background-color: `$smarty.const.ERR_COLOR`"}-->
            <!--{/if}-->
            <!--{html_radios name="$key" options=$arrSex selected=$arrForm[$key].value style="$err"}-->
          </td>
        </tr>
        <tr>
          <th>职业</th>
          <td>
            <!--{assign var=key value="order_job"}-->
            <!--{if $arrErr[$key]}-->
              <!--{assign var=err value="background-color: `$smarty.const.ERR_COLOR`"}-->
            <!--{/if}-->
            <select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">
              <option value="">请选择</option>
              <!--{html_options options=$arrJob selected=$arrForm[$key].value}-->
            </select>
          </td>
        </tr>
        <tr>
          <th>出生年月日</th>
          <td>
           <span class="attention"><!--{$arrErr.year}--><!--{$arrErr.month}--><!--{$arrErr.day}--></span>
            <select name="year" style="<!--{$arrErr.year|sfGetErrorColor}-->">
              <!--{html_options options=$arrYear selected=$arrForm.year.value}-->
            </select>年
            <select name="month" style="<!--{$arrErr.year|sfGetErrorColor}-->">
              <option value="">--</option>
              <!--{html_options options=$arrMonth selected=$arrForm.month.value}-->
            </select>月
            <select name="day" style="<!--{$arrErr.year|sfGetErrorColor}-->">
              <option value="">--</option>
              <!--{html_options options=$arrDay selected=$arrForm.day.value}-->
            </select>日
          </td>
        </tr>
        <tr>
          <th colspan="2">
          <!--{assign var=key value="deliv_check"}-->
          <input type="checkbox" name="<!--{$key}-->" value="1" onclick="fnCheckInputDeliv();" <!--{$arrForm[$key].value|sfGetChecked:1}--> id="deliv_label" />
          <label for="deliv_label"><em>指定送货地址</em>　※若与上面输入的地址相同，则可以省略。</label>
          </th>
        </tr>
        <tr>
          <th>姓名<span class="attention">※</span></th>
          <td>
            <!--{assign var=key1 value="deliv_name01"}-->
            <!--{assign var=key2 value="deliv_name02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            姓&nbsp;<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="15" class="box120" />&nbsp;
            名&nbsp;<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->" size="15" class="box120" />
          </td>
        </tr>
        <tr>
          <th>姓名（拼音）<span class="attention">※</span></th>
          <td>
            <!--{assign var=key1 value="deliv_kana01"}-->
            <!--{assign var=key2 value="deliv_kana02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            XING&nbsp;<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="15" class="box120" />&nbsp;
            MING&nbsp;<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->" size="15" class="box120" />
          </td>
        </tr>
        <tr>
          <th>邮政编码<span class="attention">※</span></th>
          <td>
           <!--{assign var=key1 value="deliv_zip01"}-->
           <!--{assign var=key2 value="deliv_zip02"}-->
            <span class="attention"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
            <p>〒&nbsp;<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->"  size="6" class="box60" />&nbsp;-&nbsp;  <input type="text"  name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->"  size="6" class="box60" />　
              <a href="http://search.post.japanpost.jp/zipcode/" target="_blank"><span class="fs10">检索邮政编码</span></a></p>

            <p class="zipimg"><a href="<!--{$smarty.const.URL_DIR}-->address/index.php" onclick="fnCallAddress('<!--{$smarty.const.URL_INPUT_ZIP}-->', 'deliv_zip01', 'deliv_zip02', 'deliv_pref', 'deliv_addr01'); return false;" target="_blank"><img src="<!--{$TPL_DIR}-->img/common/address.gif" width="86" height="20" alt="住址自動入力" /></a>
              <span class="mini">&nbsp;输入邮政编码后，请点击</span></p>
          </td>
        </tr>
        <tr>
          <th>住址<span class="attention">※</span></th>
          <td>
            <!--{assign var=key value="deliv_pref"}-->
            <span class="attention"><!--{$arrErr.deliv_pref}--><!--{$arrErr.deliv_addr01}--><!--{$arrErr.deliv_addr02}--></span>
            <select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">
              <option value="">选择省市自治区</option>
              <!--{html_options options=$arrPref selected=$arrForm[$key].value}-->
            </select>
            <p class="mini">
              <!--{assign var=key value="deliv_addr01"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" size="40" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" class="box380" /><br />
              <!--{$smarty.const.SAMPLE_ADDRESS1}--></p>
            <p class="mini">
              <!--{assign var=key value="deliv_addr02"}-->
              <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" size="40"  maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" class="box380" /><br />
              <!--{$smarty.const.SAMPLE_ADDRESS2}--></p>
            <p class="mini"><em>住址可以分二段分别填写。公寓名称是必须输入的。</em></p>

          </td>
        </tr>
        <tr>
          <th>电话号码<span class="attention">※</span></th>
          <td>
            <!--{assign var=key1 value="deliv_tel01"}-->
            <!--{assign var=key2 value="deliv_tel02"}-->
            <!--{assign var=key3 value="deliv_tel03"}-->
            <span class="attention"><!--{$arrErr[$key1]}--></span>
            <span class="attention"><!--{$arrErr[$key2]}--></span>
            <span class="attention"><!--{$arrErr[$key3]}--></span>
            <input type="text" name="<!--{$arrForm[$key1].keyname}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="6" class="box60" /> -
            <input type="text" name="<!--{$arrForm[$key2].keyname}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->"  size="6" class="box60" /> -
            <input type="text" name="<!--{$arrForm[$key3].keyname}-->" value="<!--{$arrForm[$key3].value|escape}-->" maxlength="<!--{$arrForm[$key3].length}-->" style="<!--{$arrErr[$key3]|sfGetErrorColor}-->" size="6" class="box60" />
          </td>
        </tr>
      </table>

      <div class="tblareabtn">
       <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next.gif',this)" src="<!--{$TPL_DIR}-->img/common/b_next.gif" class="box150" alt="继续" name="next" id="next" />
      </div>
    </form>
  </div>
</div>
<!--▲CONTENTS-->
