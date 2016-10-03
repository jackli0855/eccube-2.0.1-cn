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
<!--▼会員登録がお済みのお客様-->
<div id="under02column_login">
    <h2 class="title">
      <img src="<!--{$TPL_DIR}-->img/login/title.jpg" width="700" height="40" alt="登录" />
   </h2>
    <form name="member_form" id="member_form" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->" onsubmit="return fnCheckLogin('member_form')">
   <div class="loginarea">
     <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
     <p><img src="<!--{$TPL_DIR}-->img/login/member.gif" width="202" height="16" alt="已完成会员注册的客户" /></p>
     <p class="inputtext">会员客户请用注册时输入的电子邮件和密码进行登录。</p>
       <input type="hidden" name="mode" value="login" />
       <div class="inputbox">
       <!--{assign var=key value="login_email"}--><span class="attention"><!--{$arrErr[$key]}--></span>
       <p><img src="<!--{$TPL_DIR}-->img/login/mailadress.gif" width="92" height="13" alt="电子邮件" />&nbsp;
         <input type="text" name="<!--{$key}-->"
                value="<!--{$tpl_login_email|escape}-->"
                maxlength="<!--{$arrForm[$key].length}-->"
                style="<!--{$arrErr[$key]|sfGetErrorColor}-->; ime-mode: disabled;"
                size="40" class="box300" />
       </p>
       <p class="mini">
         <input type="checkbox" name="login_memory" value="1" <!--{$tpl_login_memory|sfGetChecked:1}--> id="login_memory" />
         <label for="login_memory">让电脑记住会员的电子邮件</label>
       </p>
       <p class="passwd">
         <!--{assign var=key value="login_pass"}--><span class="attention"><!--{$arrErr[$key]}--></span>
         <img src="<!--{$TPL_DIR}-->img/login/password.gif"
              width="92" height="13" alt="密码" />
         &nbsp;<input type="password" name="<!--{$key}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box300" />
       </p>
     </div>
     <div class="tblareabtn">
      <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/login/b_login_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/login/b_login.gif',this)" src="<!--{$TPL_DIR}-->img/login/b_login.gif" alt="登录" name="log" id="log" class="box140" />
     </div>
     <p class="inputtext02">
       忘记密码的客户，请点<a href="<!--{$smarty.const.SSL_URL|sfTrimURL}-->/forgot/index.php" onclick="win01('<!--{$smarty.const.SSL_URL|sfTrimURL}-->/forgot/index.php','forget','600','400'); return false;" target="_blank">这里</a>重新生成密码。<br />
      忘记电子邮件的客户，对不起，请在<a href="<!--{$smarty.const.URL_DIR}-->contact/index.php">咨询页面</a>进行咨询。
     </p>
   </div>
    </form>

<!--▲会員登録がお済みのお客様-->
