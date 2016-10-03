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
<!--★★メインコンテンツ★★-->
<table width="878" border="0" cellspacing="0" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<!--{foreach key=key item=val from=$arrHidden}-->	
	<input type="hidden" name="<!--{$key}-->" value="<!--{$val|escape}-->">
<!--{/foreach}-->
	<tr valign="top">
		<td background="<!--{$TPL_DIR}-->img/contents/navi_bg.gif" height="402">
			<!--▼SUB NAVI-->
			<!--{include file=$tpl_subnavi}-->
			<!--▲SUB NAVI-->
		</td>
		<td class="mainbg">
			<!--▼登録テーブルここから-->
			<table width="737" border="0" cellspacing="0" cellpadding="0" summary=" ">
				<!--メインエリア-->
				<tr>
					<td align="center">
						<table width="706" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td height="14"></td></tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_top.jpg" width="706" height="14" alt=""></td>
							</tr>
							<tr>
								<td background="<!--{$TPL_DIR}-->img/contents/main_left.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
								<td bgcolor="#cccccc">
								<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_top.gif" width="678" height="7" alt=""></td>
									</tr>
									<tr>
										<td background="<!--{$TPL_DIR}-->img/contents/contents_title_left_bg.gif"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_left.gif" width="22" height="12" alt=""></td>
										<td bgcolor="#636469" width="638" class="fs14n"><span class="white"><!--コンテンツタイトル-->送信设置：送信内容设置</span></td>
										<td background="<!--{$TPL_DIR}-->img/contents/contents_title_right_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="18" height="1" alt=""></td>
									</tr>
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_bottom.gif" width="678" height="7" alt=""></td>
									</tr>
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td>
									</tr>
								</table>

								<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
									<!--{if $smarty.const.MELMAGA_BATCH_MODE}-->
									<tr class="fs12n">
										<td bgcolor="#f2f1ec">送信时间设置<span class="red"> *</span></td>
										<td bgcolor="#ffffff">
										<!--{$list_data.send_year}-->年<!--{$list_data.send_month}-->月<!--{$list_data.send_day}-->日
										<!--{$list_data.send_hour}-->时<!--{$list_data.send_minutes}-->分
										</td>
									</tr>
									<!--{/if}-->
									<!--▼インクルードここから-->
									<!--{if $list_data.template_id}-->
									<tr>
										<td bgcolor="#f2f1ec" class="fs12n">Subject<span class="red"> *</span></td>
										<td bgcolor="#ffffff" class="fs12n"><!--{$list_data.subject|escape}--></td>
									</tr>
									<!--{if $list_data.mail_method ne 2}-->
									<tr>
										<td bgcolor="#ffffff" colspan="2" class="fs10n"><a href="#" onClick="return document.form2.submit();">以HTML确认</a></td>
									</tr>
									<!--{/if}-->
									<!--{if $smarty.post.template_mode ne "html_template"}-->
									<tr>
										<td bgcolor="#f2f1ec" colspan="2" class="fs10n">正文<span class="red"> *</span>（插入姓名时请输入 {name} ）</td>
									</tr>
									<tr>
										<td bgcolor="#ffffff" colspan="2" class="fs10n"><!--{$list_data.body|escape|nl2br}--></td>
									</tr>
									<!--{/if}-->
									<!--{/if}-->
									<!--▲インクルードここまで-->
								</table>

								<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
									<tr>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
										<td><img src="<!--{$TPL_DIR}-->img/contents/tbl_top.gif" width="676" height="7" alt=""></td>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
									</tr>
									<tr>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
										<td bgcolor="#e9e7de" align="center">
										<table border="0" cellspacing="0" cellpadding="0" summary=" ">
											<tr>
												<td>
													<input type="hidden" name="mode" value="template">
													<input type="button" name="subm02" onClick="return fnInsertValAndSubmit( document.form1, 'mode', 'regist_back', '' )" value="返回模板设置页面" />
													<!--{if $smarty.const.MELMAGA_BATCH_MODE}-->
													<input type="button" name="subm03" onClick="return fnInsertValAndSubmit( document.form1, 'mode', 'regist_complete', '' )" value="预约送信" <!--{$list_data.template_id|sfGetEnabled}-->/>
													<!--{else}-->
													<input type="button" name="subm03" onClick="return fnInsertValAndSubmit( document.form1, 'mode', 'regist_complete', '' )" value="发送" <!--{$list_data.template_id|sfGetEnabled}-->/>
													<!--{/if}-->
													</form>
													<form name="form2" id="form2" method="post" action="./preview.php" target="_blank">
													<input type="hidden" name="subject" value="<!--{$list_data.subject|escape}-->">
													<input type="hidden" name="body" value="<!--{$list_data.body|escape}-->">
													</form>
												</td>
											</tr>
										</table>
										</td>
										<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
									</tr>
									<tr>
										<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/tbl_bottom.gif" width="678" height="8" alt=""></td>
									</tr>
								</table>
								</td>
								<td background="<!--{$TPL_DIR}-->img/contents/main_right.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
							</tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bottom.jpg" width="706" height="14" alt=""></td>
							</tr>
							<tr><td height="30"></td></tr>
						</table>
					</td>
				</tr>
				<!--メインエリア-->
			</table>
			<!--▲登録テーブルここまで-->
		</td>
	</tr>
</table>
<!--★★メインコンテンツ★★-->
