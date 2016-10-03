<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="ja">
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
<head>
<link rel="stylesheet" href="<!--{$smarty.const.URL_DIR}--><!--{$smarty.const.USER_DIR}-->css/common.css" type="text/css">
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/css.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/navi.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/site.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/win_op.js"></script>
<title><!--{$arrSiteInfo.shop_name}-->/アンケート　<!--{$QUESTION.title|escape}-->/确认画面</title>
<script type="text/javascript">
<!--

function func_return(){
	document.form1.mode.value = "return";
	document.form1.submit();
}

//-->
</script>
</head>
<body bgcolor="#ffffff" text="#555555" link="#0099cc" vlink="#CC0000" alink="#993399" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">


<!--▲TITLE-->
<table width="760" border="0" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td height="40" bgcolor="#f6f6f6" align="center">
		<table width="710" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<td height="30" bgcolor="ff0000"><img src="../misc/_.gif" width="7" height="1" alt=""></td>
				<td height="30"><img src="../misc/_.gif" width="8" height="1" alt=""></td>
				<td height="30"width="695" class="red"><strong><span class="fs18n"><!--{$QUESTION.title|escape}--></span></strong></td>
			</tr>
		</table>
		</td>
	</tr>
	<tr>
		<td bgcolor="#e2e2e2"><img src="../misc/_.gif" width="10" height="1" alt=""></td>
	</tr>
	<tr><td height="10"></td></tr>
	<tr>
		<td align="center" valign="top">
		<table width="600" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<td class="fs12"><!--{$QUESTION.contents|nl2br}-->
				</td>
			</tr>
			<tr><td height="10"></td></tr>
			<!--{if $errmsg}--><tr><td class="fs12n"><span class="red"><br>输入中有错误发生。请确认各个项目的错误信息后，输入正确的内容。</span></td></tr><!--{/if}-->	
			<tr>
				<td bgcolor="#cccccc">
				<table width="600" border="0" cellspacing="1" cellpadding="10" summary=" ">
				<!--{section name=question loop=$QUESTION.question}-->
				<!--{if $QUESTION.question[question].kind ne '0' }-->
					<tr>
						<td colspan="2" bgcolor="#edf6ff" class="fs12n">问题<!--{$smarty.section.question.iteration}-->：<!--{$QUESTION.question[question].name|escape}--></td>
					</tr>
					<!--{if $QUESTION.question[question].kind eq 1}-->
					<tr>
						<td colspan="2" bgcolor="ffffff" class="fs12n">
						<!--{$smarty.post.option[$smarty.section.question.index]|nl2br}-->
						</td>
					</tr>
					<!--{elseif $QUESTION.question[question].kind eq 2}-->
					<tr>
						<td colspan="2" bgcolor="ffffff" class="fs12n">
						<!--{$smarty.post.option[$smarty.section.question.index]|escape}-->
						</td>
						</tr>
					<!--{elseif $QUESTION.question[question].kind eq 4}-->
					<tr>
						<td colspan="2" bgcolor="ffffff" class="fs12n">
						<!--{lfArray_Search_key_Smarty arr=$QUESTION.question[question].option val=$smarty.post.option[$smarty.section.question.index] }-->
						</td>
					</tr>
					<!--{elseif $QUESTION.question[question].kind eq 3}-->
					<tr>
						<td colspan="2" bgcolor="ffffff" class="fs12n">
						<!--{foreach item=sub from=$smarty.post.option[question]}-->	
							<!--{if strlen($sub) > 0}-->
								<!--{lfArray_Search_key_Smarty arr=$QUESTION.question[question].option val=$sub }--><br>
							<!--{/if}-->
						<!--{/foreach}-->
						</td>
					</tr>
					<!--{/if}-->
				<!--{/if}-->
				<!--{/section}-->				
				</table>
				</td>
			</tr>
			<tr><td height="30"></td></tr>
			<tr>
				<td class="fs12n">有<span class="red">※</span>记号的是必须输入项目。</td>
			</tr>
			<tr><td height="5"></td></tr>
			<form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
			<input type="hidden" name="mode" value="regist">
			<!--{foreach key=key item=item from=$arrHidden}-->
			<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->" >
			<!--{/foreach}-->
			<tr>
				<td bgcolor="#cccccc">
				<table width="600" border="0" cellspacing="1" cellpadding="10">
					
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>姓名</td>
						<td class="fs12"bgcolor="#ffffff" width="407" class="fs12n">
							<!--{$arrForm.name01|escape}-->&nbsp;<!--{$arrForm.name02|escape}-->
							<input type="hidden" name="name01" value="<!--{$arrForm.name01|escape}-->" />
							<input type="hidden" name="name02" value="<!--{$arrForm.name02|escape}-->" />
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>拼音</td>
						<td class="fs12n" bgcolor="#ffffff" width="407">
							<!--{$arrForm.kana01|escape}-->&nbsp;<!--{$arrForm.kana02|escape}-->
							<input type="hidden" name="kana01" value="<!--{$arrForm.kana01|escape}-->"/>
							<input type="hidden" name="kana02" value="<!--{$arrForm.kana02|escape}-->"/>
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>邮政编码</td>
						<td class="fs12n" bgcolor="#ffffff" width="407">
							〒<!--{$arrForm.zip01|escape}-->-<!--{$arrForm.zip02|escape}-->
							<input type="hidden" name="zip01" value="<!--{$arrForm.zip01|escape}-->" />
							<input type="hidden" name="zip02" value="<!--{$arrForm.zip02|escape}-->" />
							<!--{* <input type="button" name="address_input" value="输入住址" onclick="fnCallAddress('<!--{$smarty.const.URL_INPUT_ZIP}-->', 'zip01', 'zip02', 'pref', 'addr01');" /> *}-->
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>住址</td>
						<td bgcolor="#ffffff" class="fs12n">
							<input type="hidden" name="pref" value="<!--{$arrForm.pref|escape}-->" />
							<input type="hidden" name="addr01" value="<!--{$arrForm.addr01|escape}-->" />
							<input type="hidden" name="addr02" value="<!--{$arrForm.addr02|escape}-->" />
							<!--{$arrPref[$arrForm.pref]|escape}--><!--{$arrForm.addr01|escape}--> <!--{$arrForm.addr02|escape}-->
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>电话号码</td>
						<td class="fs12n" bgcolor="#ffffff" width="407">
							<!--{$arrForm.tel01|escape}-->-<!--{$arrForm.tel02|escape}-->-<!--{$arrForm.tel03|escape}-->
							<input type="hidden" name="tel01" value="<!--{$arrForm.tel01|escape}-->" />
							<input type="hidden" name="tel02" value="<!--{$arrForm.tel02|escape}-->" />
							<input type="hidden" name="tel03" value="<!--{$arrForm.tel03|escape}-->" />
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>电子邮件</td>
						<td class="fs12n" bgcolor="#ffffff" width="407">
							<!--{$arrForm.email|escape}-->
							<input type="hidden" name="email" value="<!--{$arrForm.email|escape}-->" />
							<input type="hidden" name="email02" value="<!--{$arrForm.email02|escape}-->" />
						</td>
					</tr>
				</table>
				</td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr>
				<td align="center"><input type="button" name="subm1" onclick="return func_return();"value="返回">　<input type="submit" name="subm2" value="发送"></td>
			</tr>
			</form>
		</table>
		<br>			

		</td>
	</tr>
</table>

</body>
</html>