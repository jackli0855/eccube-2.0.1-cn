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
<script type="text/javascript">
<!--
    // モードとキーを指定してSUBMITを行う。
    function fnModeSubmit(mode) {
        switch(mode) {
        case 'drop':
            if(!window.confirm('The data deleted once cannot be returned.\nStill, do you delete it?')){
                return;
            }
            break;
        default:
            break;
        }
        document.form1['mode'].value = mode;
        document.form1.submit();
    }
//-->
</script>

<table width="502" border="0" cellspacing="1" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<input type="hidden" name="mode" value="<!--{$tpl_mode}-->">
<input type="hidden" name="step" value="0">

<!--{foreach key=key item=item from=$arrHidden}-->
<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->">
<!--{/foreach}-->

<tr><td height="30"></td></tr>
<tr><td align="left" class="fs12st">■Initializing the DB</td></tr>
<tr><td align="left" class="fs12"><!--{if $tpl_db_version != ""}-->Connection information：<!--{$tpl_db_version}--><!--{/if}--></td></tr>
<tr><td align="left" class="fs12">The initialization of the DB begins. </td></tr>
<tr><td align="left" class="fs12">※If the table etc. have already been made, it is interrupted.</td></tr>
<!--{if $tpl_mode != 'complete'}-->
<tr><td align="left" class="fs12"><input type="checkbox" id="skip" name="db_skip" <!--{if $tpl_db_skip == "on"}-->checked<!--{/if}-->> <label for="skip">I don't initialize the DB.</label></td></tr>
<!--{/if}-->

<!--{if count($arrErr) > 0 || $tpl_message != ""}-->
<tr>
    <td bgcolor="#cccccc" class="fs12">
    <table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
        <tr>
            <td bgcolor="#ffffff" class="fs12" height="50">
            <!--{$tpl_message}--><br>
            <span class="red"><!--{$arrErr.all}--></span>
            <!--{if $arrErr.all != ""}-->
            <input type="button" onclick="fnModeSubmit('drop');" value="I delete all existing data.">
            <!--{/if}-->
            </td>
        </tr>
    </table>
    </td>
</tr>
<!--{/if}-->
</table>

<table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
    <tr><td height="20"></td></tr>
    <tr>
        <td align="center">
        <a href="#" onmouseover="chgImg('../<!--{$default_dir}-->/img/install/back_on.jpg','back')" onmouseout="chgImg('../<!--{$default_dir}-->/img/install/back.jpg','back')" onclick="document.form1['mode'].value='return_step2';document.form1.submit();return false;" /><img  width="105" src="../<!--{$default_dir}-->/img/install/back.jpg"  height="24" alt="Return" border="0" name="back"></a>
        <input type="image" onMouseover="chgImgImageSubmit('../<!--{$default_dir}-->/img/install/next_on.jpg',this)" onMouseout="chgImgImageSubmit('../<!--{$default_dir}-->/img/install/next.jpg',this)" src="../<!--{$default_dir}-->/img/install/next.jpg" width="105" height="24" alt="Next" border="0" name="next" onClick="document.body.style.cursor = 'wait';">
        </td>
    </tr>
    <tr><td height="30"></td></tr>
</from>
</table>
