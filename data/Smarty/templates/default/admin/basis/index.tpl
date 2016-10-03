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
<form name="form1" id="form1" method="post" action="./index.php">
<input type="hidden" name="mode" value="<!--{$tpl_mode}-->">
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
										<td bgcolor="#636469" width="638" class="fs14n"><span class="white"><!--コンテンツタイトル-->SHOP Master登记</span></td>
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
									<tr>
										<td bgcolor="#f2f1ec" colspan="2" class="fs12n">▼基本信息</td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">公司名称</td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.company_name}--></span>
										<input type="text" name="company_name" value="<!--{$arrForm.company_name|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.company_name != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">公司名称（拼音）</td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.company_kana}--></span>
										<input type="text" name="company_kana" value="<!--{$arrForm.company_kana|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.company_kana != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">店名<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.shop_name}--></span>
										<input type="text" name="shop_name" value="<!--{$arrForm.shop_name|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.shop_name != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">店名（拼音）</td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.shop_kana}--></span>
										<input type="text" name="shop_kana" value="<!--{$arrForm.shop_kana|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.shop_kana != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr class="fs12n">
										<td bgcolor="#f2f1ec" width="160">邮政编码<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537">
										<span class="red12"><!--{$arrErr.zip01}--></span>
										<span class="red12"><!--{$arrErr.zip02}--></span>
										〒 <input type="text" name="zip01" value="<!--{$arrForm.zip01|escape}-->" maxlength="3" size="6" class="box6" style="<!--{if $arrErr.zip01 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /> - <input type="text" name="zip02" value="<!--{$arrForm.zip02|escape}-->" maxlength="4"  size="6" class="box6" style="<!--{if $arrErr.zip02 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" />
										<input type="button" name="address_input" value="地址输入" onclick="fnCallAddress('<!--{$smarty.const.URL_INPUT_ZIP}-->', 'zip01', 'zip02', 'pref', 'addr01');" />
										</td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12">SHOP地址<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537">
										<table width="537" border="0" cellspacing="0" cellpadding="0" summary=" ">
											<tr>
												<td>
													<span class="red12"><!--{$arrErr.pref}--></span>
													<select name="pref" style="<!--{if $arrErr.pref != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" >							
													<option value="" selected="selected">选择省市自治区</option>
													<!--{html_options options=$arrPref selected=$arrForm.pref}-->
													</select>
												</td>
											</tr>
											<tr><td height="5"></td></tr>
											<tr class="fs10n">
												<td>
												<span class="red12"><!--{$arrErr.addr01}--></span>
												<input type="text" name="addr01" value="<!--{$arrForm.addr01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.addr01 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span><br />
												<!--{$smarty.const.SAMPLE_ADDRESS1}--></td>
											</tr>
											<tr><td height="5"></td></tr>
											<tr class="fs10n">
												<td>
												<span class="red12"><!--{$arrErr.addr02}--></span>
												<input type="text" name="addr02" value="<!--{$arrForm.addr02|escape}-->"  maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.addr02 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span><br />
												<!--{$smarty.const.SAMPLE_ADDRESS2}--></td>
											</tr>
										</table>
										</td>
									</tr>
									<tr class="fs12n">
										<td bgcolor="#f2f1ec" width="160">TEL</td>
										<td bgcolor="#ffffff" width="537">
										<span class="red12"><!--{$arrErr.tel01}--></span>
										<input type="text" name="tel01" value="<!--{$arrForm.tel01}-->" maxlength="6" size="6" class="box6" style="<!--{if $arrErr.tel01 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /> - 
										<input type="text" name="tel02" value="<!--{$arrForm.tel02}-->" maxlength="6" size="6" class="box6" style="<!--{if $arrErr.tel01 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /> - 
										<input type="text" name="tel03" value="<!--{$arrForm.tel03}-->" maxlength="6" size="6" class="box6" style="<!--{if $arrErr.tel01 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /></td>
									</tr>
									<tr class="fs12n">
										<td bgcolor="#f2f1ec" width="160">FAX</td>
										<td bgcolor="#ffffff" width="537">
										<span class="red12"><!--{$arrErr.fax01}--></span>
										<input type="text" name="fax01" value="<!--{$arrForm.fax01}-->" maxlength="6" size="6" class="box6" style="<!--{if $arrErr.fax01 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /> - 
										<input type="text" name="fax02" value="<!--{$arrForm.fax02}-->" maxlength="6" size="6" class="box6" style="<!--{if $arrErr.fax02 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /> - 
										<input type="text" name="fax03" value="<!--{$arrForm.fax03}-->" maxlength="6" size="6" class="box6" style="<!--{if $arrErr.fax03 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->"/></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">商店营业时间</td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.business_hour}--></span>
										<input type="text" name="business_hour" value="<!--{$arrForm.business_hour|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.business_hour != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">商品订单受理<br>电子邮件<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.email01}--></span>
										<input type="text" name="email01" value="<!--{$arrForm.email01|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.email01 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">咨询受理<br>电子邮件<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.email02}--></span>
										<input type="text" name="email02" value="<!--{$arrForm.email02|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.email02 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->"/><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">邮件发送人<br>电子邮件<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.email03}--></span>
										<input type="text" name="email03" value="<!--{$arrForm.email03|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.email03 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->"/><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">邮件发送错误受理<br>电子邮件<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<span class="red12"><!--{$arrErr.email04}--></span>
										<input type="text" name="email04" value="<!--{$arrForm.email04|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" size="60" class="box60" style="<!--{if $arrErr.email04 != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->"/><span class="red"> （最多<!--{$smarty.const.STEXT_LEN}-->字）</span></td>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">经办商品</td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<!--{assign var=key value="good_traded"}-->
										<span class="red12"><!--{$arrErr[$key]}--></span>
										<textarea name="<!--{$key}-->" maxlength="<!--{$smarty.const.LLTEXT_LEN}-->" cols="60" rows="8" class="area60" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" ><!--{$arrForm[$key]|escape}--></textarea><span class="red"> （最多<!--{$smarty.const.LLTEXT_LEN}-->字）</span>
									</tr>
									<tr>
										<td bgcolor="#f2f1ec" width="180" class="fs12n">信息</td>
										<td bgcolor="#ffffff" width="537" class="fs10n">
										<!--{assign var=key value="message"}-->
										<span class="red12"><!--{$arrErr[$key]}--></span>
										<textarea name="<!--{$key}-->" maxlength="<!--{$smarty.const.LLTEXT_LEN}-->" cols="60" rows="8" class="area60" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" ><!--{$arrForm[$key]|escape}--></textarea><span class="red"> （最多<!--{$smarty.const.LLTEXT_LEN}-->字）</span>
									</tr>
									<tr class="fs12n">
										<td bgcolor="#f2f1ec" colspan="2">▼SHOP功能</td>
									</tr>
									<tr class="fs12n">
										<td bgcolor="#f2f1ec" width="180">消费税率<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537">
										<span class="red12"><!--{$arrErr.tax}--></span>
										<input type="text" name="tax" value="<!--{$arrForm.tax|escape}-->" maxlength="<!--{$smarty.const.PERCENTAGE_LEN}-->" size="6" class="box6" style="<!--{if $arrErr.tax != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /> ％</td>
									</tr>
									<tr class="fs12n">
										<td bgcolor="#f2f1ec" width="180">征税规则<span class="red"> *</span></td>
										<td bgcolor="#ffffff" width="537">
										<span class="red12"><!--{$arrErr.tax_rule}--></span>
										<!--{html_radios name="tax_rule" options=$arrTAXRULE selected=$arrForm.tax_rule}-->
										</td>
									</tr>
									<tr class="fs12n">
										<td bgcolor="#f2f1ec" width="180">免运费条件</td>
										<td bgcolor="#ffffff" width="537">
										<span class="red12"><!--{$arrErr.free_rule}--></span>
										购买<input type="text" name="free_rule" value="<!--{$arrForm.free_rule|escape}-->" maxlength="<!--{$smarty.const.PRICE_LEN}-->" size="6" class="box6" style="<!--{if $arrErr.free_rule != ""}-->background-color: <!--{$smarty.const.ERR_COLOR}--><!--{/if}-->" /> 元以上时免费</td>
									</tr>
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
												<td><input type="image" onMouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist_on.jpg',this)" onMouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist.jpg',this)" src="<!--{$TPL_DIR}-->img/contents/btn_regist.jpg" width="123" height="24" alt="以此内容注册" border="0" name="subm" ></td>
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
</form>
</table>
<!--★★メインコンテンツ★★-->
