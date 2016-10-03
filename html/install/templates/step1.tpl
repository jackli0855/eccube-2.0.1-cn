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
<table width="502" border="0" cellspacing="1" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<input type="hidden" name="mode" value="<!--{$tpl_mode}-->">
<input type="hidden" name="step" value="0">

<!--{foreach key=key item=item from=$arrHidden}-->
<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->">
<!--{/foreach}-->

<tr><td height="30"></td></tr>
<tr><td align="left" class="fs12st">■Setting the ec site.</td></tr>
<tr>
    <td bgcolor="#cccccc">
    <table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
        <tr>
            <td bgcolor="#f2f1ec" width="150" class="fs12n">Shop name<span class="red">※</span></td>
            <td bgcolor="#ffffff" width="332">
            <!--{assign var=key value="shop_name"}-->
            <span class="red"><span class="fs12n"><!--{$arrErr[$key]}--></span></span>
            <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box40" />
            <br><span class="fs10">※Please enter your shop name.</span>
            </td>
        </tr>
        <tr>
            <td bgcolor="#f2f1ec" width="150" class="fs12n">Manager's e-mail address<span class="red">※</span></td>
            <td bgcolor="#ffffff" width="332">
            <!--{assign var=key value="admin_mail"}-->
            <span class="red"><span class="fs12n"><!--{$arrErr[$key]}--></span></span>
            <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box40" />
            <br><span class="fs10">※It becomes the address of the order e-mail so on. ：<br/>(e.g.) example@ec-cube.net</span>
            </td>
        </tr>
        <tr>
            <td bgcolor="#f2f1ec" width="150"><span class="fs12n">Manager's ID<span class="red">※</span></span><br/><span class="fs10">(Within alphanumeric 15 character.)</span></td>
            <td bgcolor="#ffffff" width="332">
            <!--{assign var=key value="login_id"}-->
            <span class="red"><span class="fs12n"><!--{$arrErr[$key]}--></span></span>
            <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box40" />
            <br><span class="fs10">※It is ID to login to the manager page.</span>
            </td>
        </tr>
        <tr>
            <td bgcolor="#f2f1ec" width="150"><span class="fs12n">Manager's password<span class="red">※</span></span><br/><span class="fs10">(Within alphanumeric 15 character.)</span></td>
            <td bgcolor="#ffffff" width="332">
            <!--{assign var=key value="login_pass"}-->
            <span class="red"><span class="fs12n"><!--{$arrErr[$key]}--></span></span>
            <input type="password" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->;" size="40" class="box40" />
            <br><span class="fs10">※It is password to login to the manager page. </span>
            </td>
        </tr>
    </table>
    </td>
</tr>
<tr><td height="20"></td></tr>
<tr><td align="left" class="fs12st">■Setting the web server.</td></tr>
<tr>
    <td bgcolor="#cccccc">
    <table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
        <tr>
            <td bgcolor="#f2f1ec" width="150" class="fs12n">HTML Path<span class="red">※</span></td>
            <td bgcolor="#ffffff" width="332" class="fs12">
            <!--{assign var=key value="install_dir"}-->
            <span class="red"><!--{$arrErr[$key]}--></span>
            <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box40" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#f2f1ec" width="150" class="fs12n">URL<span class="red">※</span></td>
            <td bgcolor="#ffffff" width="332" class="fs12">
            <!--{assign var=key value="normal_url"}-->
            <span class="red"><!--{$arrErr[$key]}--></span>
            <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box40" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#f2f1ec" width="150" class="fs12n">URL(SSL)<span class="red">※</span></td>
            <td bgcolor="#ffffff" width="332" class="fs12">
            <!--{assign var=key value="secure_url"}-->
            <span class="red"><!--{$arrErr[$key]}--></span>
            <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box40" />
            </td>
        </tr>
        <tr>
            <td bgcolor="#f2f1ec" width="150" class="fs12n">Common domain</td>
            <td bgcolor="#ffffff" width="332">
            <!--{assign var=key value="domain"}-->
            <span class="red"><span class="fs12n"><!--{$arrErr[$key]}--></span></span>
            <input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" size="40" class="box40" />
            <br><span class="fs10">※If the subdomain is different in URL and URL(SSL), it specifies. </span>
            </td>
        </tr>
    </table>
    </td>
</tr>
</table>

<table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
    <tr><td height="20"></td></tr>
    <tr>
        <td align="center">
        <a href="#" onmouseover="chgImg('../<!--{$default_dir}-->/img/install/back_on.jpg','back')" onmouseout="chgImg('../<!--{$default_dir}-->/img/install/back.jpg','back')" onclick="document.form1['mode'].value='return_step0';document.form1.submit();return false;" /><img  width="105" src="../<!--{$default_dir}-->/img/install/back.jpg"  height="24" alt="Return" border="0" name="back"></a>
        <input type="image" onMouseover="chgImgImageSubmit('../<!--{$default_dir}-->/img/install/next_on.jpg',this)" onMouseout="chgImgImageSubmit('../<!--{$default_dir}-->/img/install/next.jpg',this)" src="../<!--{$default_dir}-->/img/install/next.jpg" width="105" height="24" alt="Next" border="0" name="next">
        </td>
    </tr>
    <tr><td height="30"></td></tr>
</from>
</table>
