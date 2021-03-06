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
<script type="text/javascript">
<!--
	function fnEdit(customer_id) {
		document.form1.action = '/admin/customer/edit.php';
		document.form1.mode.value = "edit"
		document.form1['edit_customer_id'].value = customer_id;
		document.form1.submit();
		return false;
	}
//-->
</script>
<!--★★メインコンテンツ★★-->
<table width="878" border="0" cellspacing="0" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<input type="hidden" name="mode" value="edit">
<input type="hidden" name="order_id" value="<!--{$tpl_order_id}-->">
<input type="hidden" name="edit_customer_id" value="<!--{$tpl_order_id}-->">
	<tr valign="top">
		<td background="<!--{$TPL_DIR}-->img/contents/navi_bg.gif" height="402">
			<!--▼SUB NAVI-->
			<!--{include file=$tpl_subnavi}-->
			<!--▲SUB NAVI-->
		</td>
		<td class="mainbg" >
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
						
						<!--登録テーブルここから-->
						<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_top.gif" width="678" height="7" alt=""></td>
							</tr>
							<tr>
								<td background="<!--{$TPL_DIR}-->img/contents/contents_title_left_bg.gif"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_left.gif" width="22" height="12" alt=""></td>
								<td bgcolor="#636469" width="638" class="fs14n"><span class="white"><!--コンテンツタイトル-->订购履历编辑</span></td>
								<td background="<!--{$TPL_DIR}-->img/contents/contents_title_right_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="18" height="1" alt=""></td>
							</tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_bottom.gif" width="678" height="7" alt=""></td>
							</tr>
							<tr>
								<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td>
							</tr>
						</table>

						<!--▼お客様情報ここから-->
						<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">处理状况</td>
								<td bgcolor="#ffffff">
									<!--{assign var=key value="status"}-->
									<span class="red12"><!--{$arrErr[$key]}--></span>
									<select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">
									<option value="">请选择</option>
									<!--{html_options options=$arrORDERSTATUS selected=$arrForm[$key].value}-->
									</select>
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">送货日期</td>
								<td bgcolor="#ffffff"><!--{$arrDisp.commit_date|sfDispDBDate|default:"未送货"}--></td>
							</tr>
						</table>
						
						<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td></tr>
						</table>
						
						<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
							<!--{foreach key=key item=item from=$arrSearchHidden}-->
								<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->">
							<!--{/foreach}-->
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="717" colspan="4">▼客户信息</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">订单编号</td>
								<td bgcolor="#ffffff" width="248"><!--{$arrDisp.order_id}--></td>
								<td bgcolor="#f2f1ec" width="110">顾客ID</td>
								<td bgcolor="#ffffff" width="249">
								<!--{if $arrDisp.customer_id > 0}-->
									<!--{$arrDisp.customer_id}-->
								<!--{else}-->
									（非会员）
								<!--{/if}-->
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">订购日期</td>
								<td bgcolor="#ffffff" width="607" colspan="3"><!--{$arrDisp.create_date|sfDispDBDate}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">顾客名</td>
								<td bgcolor="#ffffff" width="248"><!--{$arrDisp.order_name01|escape}--> <!--{$arrDisp.order_name02|escape}--></td>
								<td bgcolor="#f2f1ec" width="110">顾客名（拼音）</td>
								<td bgcolor="#ffffff" width="249"><!--{$arrDisp.order_kana01|escape}--> <!--{$arrDisp.order_kana02|escape}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">电子邮件</td>
								<td bgcolor="#ffffff" width="248"><a href="mailto:<!--{$arrDisp.order_email|escape}-->"><!--{$arrDisp.order_email|escape}--></a></td>
								<td bgcolor="#f2f1ec" width="110">TEL</td>
								<td bgcolor="#ffffff" width="249"><!--{$arrDisp.order_tel01}-->-<!--{$arrDisp.order_tel02}-->-<!--{$arrDisp.order_tel03}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">住址</td>
								<td bgcolor="#ffffff" width="607" colspan="3">〒<!--{$arrDisp.order_zip01}-->-<!--{$arrDisp.order_zip02}--><br>
								<!--{assign var=key value=$arrDisp.order_pref}-->
								<!--{$arrPref[$key]}--><!--{$arrDisp.order_addr01|escape}--><!--{$arrDisp.order_addr02|escape}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">备注</td>
								<td bgcolor="#ffffff" width="607" colspan="3"><!--{$arrDisp.message|escape|nl2br}--></td>
							</tr>
						</table>
						<!--▲お客様情報ここまで-->
						
						<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td></tr>
						</table>
						
						<!--▼配送先情報ここから-->
						<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="717" colspan="4">▼送货信息</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">姓名</td>
								<td bgcolor="#ffffff" width="248">
								<!--{assign var=key1 value="deliv_name01"}-->
								<!--{assign var=key2 value="deliv_name02"}-->
								<span class="red12"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
								<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="15" class="box15" />
								<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->" size="15" class="box15" />
								</td>
								<td bgcolor="#f2f1ec" width="110">姓名（拼音）</td>
								<td bgcolor="#ffffff" width="249">
								<!--{assign var=key1 value="deliv_kana01"}-->
								<!--{assign var=key2 value="deliv_kana02"}-->
								<span class="red12"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
								<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="15" class="box15" />
								<input type="text" name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->" size="15" class="box15" />
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">邮政编码</td>
								<td bgcolor="#ffffff" width="248">
								<!--{assign var=key1 value="deliv_zip01"}-->
								<!--{assign var=key2 value="deliv_zip02"}-->
								<span class="red12"><!--{$arrErr[$key1]}--><!--{$arrErr[$key2]}--></span>
								〒
								<input type="text" name="<!--{$key1}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->"  size="6" class="box6" />
								 - 
								<input type="text"  name="<!--{$key2}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->"  size="6" class="box6" />
								<input type="button" name="address_input" value="地址输入" onclick="fnCallAddress('<!--{$smarty.const.URL_INPUT_ZIP}-->', 'deliv_zip01', 'deliv_zip02', 'deliv_pref', 'deliv_addr01');" />
								</td>
								<td bgcolor="#f2f1ec" width="110">TEL</td>
								<td bgcolor="#ffffff" width="249">
								<!--{assign var=key1 value="deliv_tel01"}-->
								<!--{assign var=key2 value="deliv_tel02"}-->
								<!--{assign var=key3 value="deliv_tel03"}-->
								<span class="red12"><!--{$arrErr[$key1]}--></span>
								<span class="red12"><!--{$arrErr[$key2]}--></span>
								<span class="red12"><!--{$arrErr[$key3]}--></span>
								<input type="text" name="<!--{$arrForm[$key1].keyname}-->" value="<!--{$arrForm[$key1].value|escape}-->" maxlength="<!--{$arrForm[$key1].length}-->" style="<!--{$arrErr[$key1]|sfGetErrorColor}-->" size="6" class="box6" /> - 
								<input type="text" name="<!--{$arrForm[$key2].keyname}-->" value="<!--{$arrForm[$key2].value|escape}-->" maxlength="<!--{$arrForm[$key2].length}-->" style="<!--{$arrErr[$key2]|sfGetErrorColor}-->"  size="6" class="box6" /> - 
								<input type="text" name="<!--{$arrForm[$key3].keyname}-->" value="<!--{$arrForm[$key3].value|escape}-->" maxlength="<!--{$arrForm[$key3].length}-->" style="<!--{$arrErr[$key3]|sfGetErrorColor}-->" size="6" class="box6" />
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec">住址</td>
								<td bgcolor="#ffffff" colspan="3">
								<table border="0" cellspacing="0" cellpadding="0" summary=" ">
									<tr>
									<td>
										<!--{assign var=key value="deliv_pref"}-->
										<span class="red12"><!--{$arrErr[$key]}--></span>
										<select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">							
										<option value="" selected="">选择省市自治区</option>
										<!--{html_options options=$arrPref selected=$arrForm[$key].value}-->
										</select>
									</td>
									</tr>
									<tr><td height="5"></td></tr>
									<tr class="fs10n">
										<td>
										<!--{assign var=key value="deliv_addr01"}-->
										<span class="red12"><!--{$arrErr[$key]}--></span>
										<input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" size="60" class="box60" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" />
										</td>
										</tr>
										<tr><td height="5"></td></tr>
										<tr class="fs10n">
											<td>
											<!--{assign var=key value="deliv_addr02"}-->
											<span class="red12"><!--{$arrErr[$key]}--></span>
											<input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" size="60" class="box60" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" />
											</td>
										</tr>
								</table>
								</td>
							</tr>
						</table>
						<!--▲配送先情報ここまで-->

						<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td></tr>
						</table>

						<!--▼受注商品情報ここから-->
						<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="717" colspan="7">▼订购商品信息
								<input type="button" name="cheek" value="确认计算结果" onclick="fnModeSubmit('cheek','','');" />
								<br />
								<span class="red12"><!--{$arrErr.quantity}--></span>
								<span class="red12"><!--{$arrErr.price}--></span>
								</td>
							</tr>
							<tr bgcolor="#f2f1ec" align="center" class="fs12n">
								<td width="140">商品编号</td>
								<td width="215">商品名/规格1/规格2</td>
								<td width="84">单价</td>
								<td width="45">数量</td>
								<td width="84">含税价格</td>
								<td width="94">小计</td>
							</tr>
							<!--{section name=cnt loop=$arrForm.quantity.value}-->
							<!--{assign var=key value="`$smarty.section.cnt.index`"}-->
							<tr bgcolor="#ffffff" class="fs12">
								<td width="140"><!--{$arrDisp.product_code[$key]|escape}--></td>
								<td width="215"><!--{$arrDisp.product_name[$key]|escape}-->/<!--{$arrDisp.classcategory_name1[$key]|escape|default:"(无)"}-->/<!--{$arrDisp.classcategory_name2[$key]|escape|default:"(无)"}--></td>
								<input type="hidden" name="product_id[]" value="<!--{$arrDisp.product_id[$key]}-->">
								<input type="hidden" name="product_code[]" value="<!--{$arrDisp.product_code[$key]}-->">
								<input type="hidden" name="product_name[]" value="<!--{$arrDisp.product_name[$key]}-->">
								<input type="hidden" name="point_rate[]" value="<!--{$arrDisp.point_rate[$key]}-->">	
								<input type="hidden" name="classcategory_id1[]" value="<!--{$arrDisp.classcategory_id1[$key]}-->">	
								<input type="hidden" name="classcategory_id2[]" value="<!--{$arrDisp.classcategory_id2[$key]}-->">
								<input type="hidden" name="classcategory_name1[]" value="<!--{$arrDisp.classcategory_name1[$key]}-->">	
								<input type="hidden" name="classcategory_name2[]" value="<!--{$arrDisp.classcategory_name2[$key]}-->">				
								<td width="84" align="center"><input type="text" name="price[]" value="<!--{$arrForm.price.value[$key]|escape}-->" size="6" class="box6" maxlength="<!--{$arrForm.price.length}-->"/> 元</td>
								<td width="45" align="center"><input type="text" name="quantity[]" value="<!--{$arrForm.quantity.value[$key]|escape}-->" size="3" class="box3" maxlength="<!--{$arrForm.quantity.length}-->"/></td>
								<!--{assign var=price value=`$arrForm.price.value[$key]`}-->
								<!--{assign var=quantity value=`$arrForm.quantity.value[$key]`}-->
								<td width="84" align="right"><!--{$price|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}--> 元</td>
								<td width="94" align="right"><!--{$price|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|sfMultiply:$quantity|number_format}-->元</td>
							</tr>
							<!--{/section}-->
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">小计</td>
								<td align="right"><!--{$arrForm.subtotal.value|number_format}-->元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">折扣</td>
								<td align="right">
							<!--{assign var=key value="discount"}-->
							<span class="red12"><!--{$arrErr[$key]}--></span>
							<input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->"  size="5" class="box6" />
							 円</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">运费</td>
								<td align="right">
							<!--{assign var=key value="deliv_fee"}-->
							<span class="red12"><!--{$arrErr[$key]}--></span>
							<input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->"  size="5" class="box6" />
							 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">手续费</td>
								<td align="right">
							<!--{assign var=key value="charge"}-->
							<span class="red12"><!--{$arrErr[$key]}--></span>
							<input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->"  size="5" class="box6" />
							 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">合计</td>
								<td align="right">
								<span class="red12"><!--{$arrErr.total}--></span>
								<!--{$arrForm.total.value|number_format}--> 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">付款合计</td>
								<td align="right">
								<span class="red12"><!--{$arrErr.payment_total}--></span>
								<!--{$arrForm.payment_total.value|number_format}-->
								 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">所用积分</td>
								<td align="right">
								<!--{assign var=key value="use_point"}-->
								<span class="red12"><!--{$arrErr[$key]}--></span>
								<input type="text" name="<!--{$key}-->" value="<!--{$arrForm[$key].value|escape|number_format|default:0}-->" maxlength="<!--{$arrForm[$key].length}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->"  size="5" class="box6" />
								 点</td>
							</tr>
							<!--{if $arrForm.birth_point.value > 0}-->
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">生日积分</td>
								<td align="right">
								<!--{$arrForm.birth_point.value|number_format}-->
								 点</td>
							</tr>
							<!--{/if}-->
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">增加积分</td>
								<td align="right">
								<!--{$arrForm.add_point.value|number_format|default:0}-->
								 点</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<!--{if $arrDisp.customer_id > 0}-->
								<td colspan="5" align="right">现有积分（积分的修改请用<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="return fnEdit('<!--{$arrDisp.customer_id}-->');">顾客编辑</a>手动进行。）</td>
								<td align="right">
								<!--{$arrForm.point.value|number_format}-->
								 点</td>
								<!--{else}-->
								<td colspan="5" align="right">现有积分</td><td align="center">（无）</td>
								<!--{/if}-->
							</tr>
							<!--{*
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">最终积分（积分的修改请用<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="return fnEdit('<!--{$arrDisp.customer_id}-->');">顾客编辑</a>手动进行。）</td>
								<td align="right">
								<span class="red12"><!--{$arrErr.total_point}--></span>
								<!--{$arrForm.total_point.value}-->
								 点</td>
							</tr>
							*}-->
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" colspan="6">▼支付方法<span class="red">（请手动修改由于支付方法的变更所导致的手续费的变更。)</span></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#ffffff" colspan="6">
								<!--{assign var=key value="payment_id"}-->
								<span class="red12"><!--{$arrErr[$key]}--></span>
								<select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">
								<option value="" selected="">请选择</option>
								<!--{html_options options=$arrPayment selected=$arrForm[$key].value}-->
								</select></td>
							</tr>
							
							<!--{if $arrDisp.payment_info|@count > 0}-->
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" colspan="6">▼<!--{$arrDisp.payment_type}-->信息</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#ffffff" colspan="6">
									<!--{foreach key=key item=item from=$arrDisp.payment_info}-->
									<!--{if $key != "title"}--><!--{if $item.name != ""}--><!--{$item.name}-->：<!--{/if}--><!--{$item.value}--><br/><!--{/if}-->
									<!--{/foreach}-->
								</td>
							</tr>
							<!--{/if}-->
							
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" colspan="6">▼时间指定</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#ffffff" colspan="6">
								<!--{assign var=key value="deliv_time_id"}-->
								<span class="red12"><!--{$arrErr[$key]}--></span>
								<select name="<!--{$key}-->" style="<!--{$arrErr[$key]|sfGetErrorColor}-->">	
								<option value="" selected="0">指定無し</option>
								<!--{html_options options=$arrDelivTime selected=$arrForm[$key].value}-->
								</select>
								</td>
							</tr>
							<!--{assign var=key value="deliv_date"}-->
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" colspan="6">▼送货日期指定</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#ffffff" colspan="6">
								<!--{assign var=key value="deliv_date"}-->
								<span class="red12"><!--{$arrErr[$key]}--></span>
								<!--{$arrForm[$key].value|default:"无指定"}-->
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" colspan="6">▼备注</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#ffffff" colspan="6">
								<!--{assign var=key value="note"}-->
								<span class="red12"><!--{$arrErr[$key]}--></span>
								<textarea name="<!--{$key}-->" maxlength="<!--{$arrForm[$key].length}-->" cols="80" rows="6" class="area80" style="<!--{$arrErr[$key]|sfGetErrorColor}-->" ><!--{$arrForm[$key].value|escape}--></textarea></td>
								</td>
							</tr>
						</table>
						<!--▲受注商品情報ここまで-->
				
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
											<!--{if count($arrSearchHidden) > 0}-->		
											<a href="#" onmouseover="chgImg('<!--{$TPL_DIR}-->img/contents/btn_search_back_on.jpg','back');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/contents/btn_search_back.jpg','back');" onclick="fnChangeAction('<!--{$smarty.const.URL_SEARCH_ORDER}-->'); fnModeSubmit('search','',''); return false;"><img src="<!--{$TPL_DIR}-->img/contents/btn_search_back.jpg" width="123" height="24" alt="返回检索页面" border="0" name="back"></a>
											<!--{/if}-->
											<input type="image" onMouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist_on.jpg',this)" onMouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist.jpg',this)" src="<!--{$TPL_DIR}-->img/contents/btn_regist.jpg" width="123" height="24" alt="以此内容注册" border="0" name="subm" onclick="return fnConfirm();">
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

						<!--登録テーブルここまで-->
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
		</td>
	</tr>
</form>
</table>
<!--★★メインコンテンツ★★-->		
