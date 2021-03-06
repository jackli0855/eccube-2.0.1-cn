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
<title><!--{$arrSiteInfo.shop_name}-->/アンケート　<!--{$QUESTION.title|escape}--></title>
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
			<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
			<input type="hidden" name="question_id" value="<!--{$question_id}-->">
			<tr>
				<td class="fs12"><!--{$QUESTION.contents|escape|nl2br}-->
				</td>
			</tr>
			<tr><td height="10"></td></tr>
			<!--{if $errmsg}--><tr><td class="fs12n"><span class="red"><br>输入中有错误发生。请确认各个项目的错误信息后，输入正确的内容。</span></td></tr><!--{/if}-->	
			<tr>
				<td bgcolor="#cccccc">
				<table width="600" border="0" cellspacing="1" cellpadding="10" summary=" ">
				<!--{include file=inquiry/inquiry.tpl}-->
				</table>
				</td>
			</tr>
			<tr><td height="30"></td></tr>
			<tr>
				<td class="fs12n">有<span class="red">※</span>记号的是必须输入项目。</td>
			</tr>
			<tr><td height="5"></td></tr>
			<input type="hidden" name="mode" value="confirm">
			<tr>
				<td bgcolor="#cccccc">
				<table width="600" border="0" cellspacing="1" cellpadding="10">
					
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>姓名</td>
						<td class="fs12n"bgcolor="#ffffff" width="407">
							<span class="red"><!--{$arrErr.name01}--><!--{$arrErr.name02}--></span>
										<input type="text" name="name01" value="<!--{$arrForm.name01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="20" class="box20" <!--{if $arrErr.name01}--><!--{sfSetErrorStyle}--><!--{/if}--> />
							&nbsp;&nbsp;<input type="text" name="name02" value="<!--{$arrForm.name02|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="20" class="box20" <!--{if $arrErr.name02}--><!--{sfSetErrorStyle}--><!--{/if}--> />
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>拼音</td>
						<td class="fs12n" bgcolor="#ffffff" width="407">
							<span class="red"><!--{$arrErr.kana01}--><!--{$arrErr.kana02}--></span>
										<input type="text" name="kana01" value="<!--{$arrForm.kana01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="20" class="box20" <!--{if $arrErr.kana01}--><!--{sfSetErrorStyle}--><!--{/if}--> />
							&nbsp;&nbsp;<input type="text" name="kana02" value="<!--{$arrForm.kana02|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="20" class="box20" <!--{if $arrErr.kana02}--><!--{sfSetErrorStyle}--><!--{/if}--> />
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>邮政编码</td>
						<td bgcolor="#ffffff" width="407">
						<table width="407" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr>
								<td class="fs12n" width="267">
									<span class="red"><!--{$arrErr.zip01}--><!--{$arrErr.zip02}--></span>
									〒&nbsp;<input type="text" name="zip01" value="<!--{$arrForm.zip01|escape}-->" maxlength="<!--{$smarty.const.ZIP01_LEN}-->" size="6" class="box6" maxlength="3"  <!--{if $arrErr.zip01}--><!--{sfSetErrorStyle}--><!--{/if}--> />
										&nbsp;-&nbsp;
										<input type="text" name="zip02" value="<!--{$arrForm.zip02|escape}-->" maxlength="<!--{$smarty.const.ZIP02_LEN}-->" size="6" class="box6" maxlength="4"  <!--{if $arrErr.zip02}--><!--{sfSetErrorStyle}--><!--{/if}--> />&nbsp;<input type="button" name="address_input" value="输入住址" onclick="fnCallAddress('<!--{$smarty.const.URL_INPUT_ZIP}-->', 'zip01', 'zip02', 'pref', 'addr01'); return false;" />
								</td>								
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>住址</td>
						<td bgcolor="#ffffff">
						<table width="407" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr>
								<td class="fs12n" colspan="2">
								<span class="red"><!--{$arrErr.pref}--><!--{$arrErr.addr01}--><!--{$arrErr.addr02}--></span>
								<select name="pref" <!--{if $arrErr.pref}--><!--{sfSetErrorStyle}--><!--{/if}-->>
									<option value="" selected>请选择</option>
									<!--{html_options options=$arrPref selected=$arrForm.pref}-->
								</select>
								</td>
							</tr>
							<tr><td height="5"></td></tr>
							<tr>
								<td width="207">
									<input type="text" name="addr01" value="<!--{$arrForm.addr01|escape}-->" size="35" class="box35" <!--{if $arrErr.addr01}--><!--{sfSetErrorStyle}--><!--{/if}--> />
								</td>
								<td width="200"><span class="fs10n">住址1</span></td>
							</tr>
							<tr><td height="3"></td></tr>
							<tr>
								<td class="fs12n">
									<input type="text" name="addr02" value="<!--{$arrForm.addr02|escape}-->" size="35" class="box35" <!--{if $arrErr.addr02}--><!--{sfSetErrorStyle}--><!--{/if}--> />
								</td>
								<td><span class="fs10n">住址2</span><br></td>
							</tr>
							<tr>
								<td><span class="fs10n"><span class="red">住址请分2段分别填写。公寓名称是必须输入的。</span></span></td>
							</tr>
						</table>
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>电话号码</td>
						<td class="fs12n" bgcolor="#ffffff" width="407">
							<span class="red"><!--{$arrErr.tel01}--><!--{$arrErr.tel02}--><!--{$arrErr.tel03}--></span>
							<input type="text" name="tel01" value="<!--{$arrForm.tel01|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" size="6" class="box6" <!--{if $arrErr.tel01}--><!--{sfSetErrorStyle}--><!--{/if}--> />&nbsp;-&nbsp;
							<input type="text" name="tel02" value="<!--{$arrForm.tel02|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" size="6" class="box6" <!--{if $arrErr.tel02}--><!--{sfSetErrorStyle}--><!--{/if}--> />&nbsp;-&nbsp;
							<input type="text" name="tel03" value="<!--{$arrForm.tel03|escape}-->" maxlength="<!--{$smarty.const.TEL_ITEM_LEN}-->" size="6" class="box6" <!--{if $arrErr.tel03}--><!--{sfSetErrorStyle}--><!--{/if}--> />
						</td>
					</tr>
					<tr>
						<td class="fs12n" bgcolor="#ebf9ff" width="150"><span class="red">※</span>电子邮件</td>
						<td bgcolor="#ffffff">
						<table width="407" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td class="fs12n" colspan="2">
									<span class="red"><!--{$arrErr.email}--></span>
									<input type="text" name="email" value="<!--{$arrForm.email|escape}-->" size="35" class="box35" <!--{if $arrErr.email}--><!--{sfSetErrorStyle}--><!--{/if}--> />
								</td>
							</tr>
							<tr><td height="3"></td></tr>
							<tr>
								<td class="fs12n" width="227">
									<span class="red"><!--{$arrErr.email02}--></span>
									<input type="text" name="email02" value="<!--{$arrForm.email02|escape}-->" size="35" class="box35" <!--{if $arrErr.email02}--><!--{sfSetErrorStyle}--><!--{/if}--> />
								</td>
								<td width="180" class="fs10"><span class="red">请输入二遍以进行确认。</span></td>
							</tr>
						</table>
						</td>
					</tr>
				</table>
				</td>
			</tr>
			<tr><td height="15"></td></tr>
			<tr>
				<td align="center"><input type="submit" name="subm1" value="到确认页面"></td>
			</tr>
			</form>
		</table>
		<br>			

		</td>
	</tr>
</table>

</body>
</html>