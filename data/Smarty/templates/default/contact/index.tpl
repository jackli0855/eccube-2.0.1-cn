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
    <h2 class="title"><img src="<!--{$TPL_DIR}-->img/contact/title.jpg" width="580" height="40" alt="咨询" /></h2>
    
    <p>我们接受邮件方式的咨询。<br />
    由于内容的不同，我们的回复可能会需要一些时间。另外，六日，节假日，年末年初等期间，我们将在其后的营业日进行回复，请您谅解。</p>
    
    <p class="mini"><em>※有关您订单的咨询，请一定写上「订单编号」和「姓名」，再将邮件发给我们。</em></p>
    
    <form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
    <input type="hidden" name="mode" value="confirm" />
    
    <table summary="咨询">
      <tr>
        <th>姓名<span class="attention">※</span></th>
        <td>
          <span class="attention"><!--{$arrErr.name01}--><!--{$arrErr.name02}--></span>
          姓&nbsp;<input type="text"
                         class="box120"
                         name="name01"
                         value="<!--{$name01|default:$arrData.name01|escape}-->"
                         maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                         style="<!--{$arrErr.name01|sfGetErrorColor}-->" />　
          名&nbsp;<input type="text" class="box120" name="name02"
                         value="<!--{$name02|default:$arrData.name02|escape}-->"
                         maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                         style="<!--{$arrErr.name02|sfGetErrorColor}-->" />
        </td>
      </tr>
      <tr>
        <th>姓名（拼音）<span class="attention">※</span></th>
        <td>
          <span class="attention"><!--{$arrErr.kana01}--><!--{$arrErr.kana02}--></span>
          姓&nbsp;<input type="text"
                           class="box120"
                           name="kana01"
                           value="<!--{$kana01|default:$arrData.kana01|escape}-->"
                           maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                           style="<!--{$arrErr.kana01|sfGetErrorColor}-->" />　
          名&nbsp;<input type="text"
                           class="box120"
                           name="kana02"
                           value="<!--{$kana02|default:$arrData.kana02|escape}-->"
                           maxlength="<!--{$smarty.const.STEXT_LEN}-->"
                           style="<!--{$arrErr.kana02|sfGetErrorColor}-->" />
        </td>
      </tr>
      <tr>
        <th>邮政编码</th>
        <td>
          <span class="attention"><!--{$arrErr.zip01}--><!--{$arrErr.zip02}--></span>
          <p>
            〒&nbsp;
            <input type="text"
                   name="zip01"
                   class="box60"
                   value="<!--{$zip01|default:$arrData.zip01|escape}-->"
                   maxlength="<!--{$smarty.const.ZIP01_LEN}-->"
                   style="<!--{$arrErr.zip01|sfGetErrorColor}-->" />&nbsp;-&nbsp;
            <input type="text"
                   name="zip02"
                   class="box60"
                   value="<!--{$zip02|default:$arrData.zip02|escape}-->"
                   maxlength="<!--{$smarty.const.ZIP02_LEN}-->"
                   style="<!--{$arrErr.zip02|sfGetErrorColor}-->" />　
            <!-- a href="http://search.post.japanpost.jp/zipcode/" target="_blank"><span class="fs10">检索邮政编码</span></a -->
          </p>
<!--
          <p class="zipimg">
            <a href="javascript:fnCallAddress('<!--{$smarty.const.URL_INPUT_ZIP}-->', 'zip01', 'zip02', 'pref', 'addr01');">
              <img src="<!--{$TPL_DIR}-->img/common/address.gif" width="86" height="20" alt="自动输入住址" />
            </a>
            <span class="mini">&nbsp;输入邮政编码后，请点击。</span>
          </p>
-->
        </td>
      </tr>
      <tr>
        <th>住所</th>
        <td>
          <span class="attention"><!--{$arrErr.pref}--><!--{$arrErr.addr01}--><!--{$arrErr.addr02}--></span>
          
          <select name="pref" style="<!--{$arrErr.pref|sfGetErrorColor}-->">
          <option value="">选择省市自治区</option>
          <!--{html_options options=$arrPref selected=$pref|default:$arrData.pref|escape}-->
          </select>
          
          <p class="mini">
            <input type="text"
                   class="box380"
                   name="addr01"
                   value="<!--{$addr01|default:$arrData.addr01|escape}-->"
                   style="<!--{$arrErr.addr01|sfGetErrorColor}-->" /><br />
            <!--{$smarty.const.SAMPLE_ADDRESS1}-->
          </p>
          
          <p class="mini">
            <input type="text"
                   class="box380"
                   name="addr02"
                   value="<!--{$addr02|default:$arrData.addr02|escape}-->"
                   style="<!--{$arrErr.addr02|sfGetErrorColor}-->" /><br />
            <!--{$smarty.const.SAMPLE_ADDRESS1}-->
          </p>
          
          <p class="mini"><em>住址可以分二段分别填写。公寓名称是必须输入的。</em></p>
        </td>
      </tr>
      <tr>
        <th>电话号码</th>
        <td>
          <span class="attention"><!--{$arrErr.tel01}--><!--{$arrErr.tel02}--><!--{$arrErr.tel03}--></span>
          <input type="text" 
                 class="box60"
                 name="tel01"
                 value="<!--{$tel01|default:$arrData.tel01|escape}-->"
                 maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->"
                 style="<!--{$arrErr.tel01|sfGetErrorColor}-->" />&nbsp;-&nbsp;
          <input type="text" 
                 class="box60"
                 name="tel02"
                 value="<!--{$tel02|default:$arrData.tel02|escape}-->"
                 maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->"
                 style="<!--{$arrErr.tel02|sfGetErrorColor}-->" />&nbsp;-&nbsp;
          <input type="text" 
                 class="box60"
                 name="tel03"
                 value="<!--{$tel03|default:$arrData.tel03|escape}-->"
                 maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->"
                 style="<!--{$arrErr.tel03|sfGetErrorColor}-->" />
        </td>
      </tr>
      <tr>
        <th>电子邮件<span class="attention">※</span></th>
        <td>
          <span class="attention"><!--{$arrErr.email}--><!--{$arrErr.email02}--></span>
          <input type="text"
                 class="box380"
                 name="email"
                 value="<!--{$email|default:$arrData.email|escape}-->"
                 maxlength="<!--{$smarty.const.MTEXT_LEN}-->"
                 style="<!--{$arrErr.email|sfGetErrorColor}-->" /><br />
          <!--{* ログインしていれば入力済みにする *}-->
          <!--{if $smarty.server.REQUEST_METHOD != 'POST' && $smarty.session.customer}-->
          <!--{assign var=email02 value=$arrData.email}-->
          <!--{/if}-->
          <input type="text"
                 class="box380"
                 name="email02"
                 value="<!--{$email02|escape}-->"
                 maxlength="<!--{$smarty.const.MTEXT_LEN}-->"
                 style="<!--{$arrErr.email02|sfGetErrorColor}-->" /><br />
          <p class="mini"><em>请再次输入以进行确认。</em></p>
        </td>
      </tr>        
      <tr>
        <th>您的咨询内容<span class="attention">※</span><br />
        <span class="mini">（全角<!--{$smarty.const.MLTEXT_LEN}-->字以内）</span></th>
        <td>
          <span class="attention"><!--{$arrErr.contents}--></span>
          <textarea name="contents"
                    class="area380"
                    cols="60"
                    rows="20"
                    style="<!--{$arrErr.contents|sfGetErrorColor}-->"><!--{$contents|escape}--></textarea>
        </td>
      </tr>
    </table>
    
    <div class="tblareabtn">
      <input type="image"
             onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_confirm_on.gif', this)"
             onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_confirm.gif', this)"
             src="<!--{$TPL_DIR}-->img/common/b_confirm.gif"
             style="width:150px; height=30px;"
             alt="到确认页面"
             name="confirm" />
    </div>
    </form>
  </div>
</div>
<!--▲CONTENTS-->
