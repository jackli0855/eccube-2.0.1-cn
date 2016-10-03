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
<!--　-->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ja" lang="ja">

<head>
<meta http-equiv="content-type" content="application/xhtml+xml; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="content-script-type" content="text/javascript" />
<meta http-equiv="content-style-type" content="text/css" />
<link rel="stylesheet" href="<!--{$smarty.const.URL_DIR}-->admin/css/contents.css" type="text/css" media="all" />
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/css.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/navi.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/win_op.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/site.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/admin.js"></script>
<!--{include file='css/contents.tpl'}-->
<title><!--{$smarty.const.ADMIN_TITLE}--></title>
<script language="JavaScript">
<!--
<!--{$tpl_javascript}-->
//-->
</script>

</head>
<body bgcolor="#ffffff" text="#000000" link="#006699" vlink="#006699" alink="#006699" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onload="preLoadImg('<!--{$smarty.const.URL_DIR}-->'); <!--{$tpl_onload}-->">
<noscript>
<link rel="stylesheet" href="<!--{$smarty.const.URL_ADMIN_CSS}-->common.css" type="text/css" />
</noscript>
<div align="center">

<!--▼CONTENTS-->
<table width="780" border="0" cellspacing="0" cellpadding="0" summary=" ">
	<tr valign="top">
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
								<td bgcolor="#636469" width="638" class="fs14n"><span class="white"><!--コンテンツタイトル-->订单明细</span></td>
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
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" width="110">处理状况</td>
								<td bgcolor="#ffffff">
									<!--{if $arrDisp.delete == 1}-->已删除
									<!--{else}-->
									<!--{assign var=status value=`$arrForm.status.value`}-->
									<!--{$arrORDERSTATUS[$status]}-->
									<!--{/if}-->
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" width="110">送货日期</td>
								<td bgcolor="#ffffff"><!--{$arrDisp.commit_date|sfDispDBDate|default:"未送货"}--></td>
							</tr>
						</table>

						<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td></tr>
						</table>
						
						<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" colspan="4">▼客户信息</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" width="110">订单编号</td>
								<td bgcolor="#ffffff" width="248"><!--{$arrDisp.order_id}--></td>
								<td bgcolor="#f0f0f0" width="110">顾客ID</td>
								<td bgcolor="#ffffff" width="249">
								<!--{if $arrDisp.customer_id > 0}-->
									<!--{$arrDisp.customer_id}-->
								<!--{else}-->
									（非会员）
								<!--{/if}-->
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0">订货日期</td>
								<td bgcolor="#ffffff" colspan="3"><!--{$arrDisp.create_date|sfDispDBDate}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" >顾客名</td>
								<td bgcolor="#ffffff" ><!--{$arrDisp.order_name01|escape}--> <!--{$arrDisp.order_name02|escape}--></td>
								<td bgcolor="#f0f0f0" >顾客名（拼音）</td>
								<td bgcolor="#ffffff" ><!--{$arrDisp.order_kana01|escape}--> <!--{$arrDisp.order_kana02|escape}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" >电子邮件</td>
								<td bgcolor="#ffffff" ><a href="mailto:<!--{$arrDisp.order_email|escape}-->"><!--{$arrDisp.order_email|escape}--></a></td>
								<td bgcolor="#f0f0f0" >TEL</td>
								<td bgcolor="#ffffff" ><!--{$arrDisp.order_tel01}-->-<!--{$arrDisp.order_tel02}-->-<!--{$arrDisp.order_tel03}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" >住址</td>
								<td bgcolor="#ffffff" colspan="3">〒<!--{$arrDisp.order_zip01}-->-<!--{$arrDisp.order_zip02}--><br>
								<!--{assign var=key value=$arrDisp.order_pref}-->
								<!--{$arrPref[$key]}--><!--{$arrDisp.order_addr01}--><!--{$arrDisp.order_addr02}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" >备注</td>
								<td bgcolor="#ffffff" colspan="3"><!--{$arrDisp.message|escape|nl2br}--></td>
							</tr>
						</table>
						
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
								<!--{$arrForm[$key1].value|escape}-->
								<!--{$arrForm[$key2].value|escape}-->
								</td>
								<td bgcolor="#f2f1ec" width="110">姓名（拼音）</td>
								<td bgcolor="#ffffff" width="249">
								<!--{assign var=key1 value="deliv_kana01"}-->
								<!--{assign var=key2 value="deliv_kana02"}-->
								<!--{$arrForm[$key1].value|escape}-->
								<!--{$arrForm[$key2].value|escape}-->
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">邮政编码</td>
								<td bgcolor="#ffffff" width="248">
								<!--{assign var=key1 value="deliv_zip01"}-->
								<!--{assign var=key2 value="deliv_zip02"}-->
								〒<!--{$arrForm[$key1].value|escape}-->-<!--{$arrForm[$key2].value|escape}-->
								</td>
								<td bgcolor="#f2f1ec" width="110">TEL</td>
								<td bgcolor="#ffffff" width="249">
								<!--{assign var=key1 value="deliv_tel01"}-->
								<!--{assign var=key2 value="deliv_tel02"}-->
								<!--{assign var=key3 value="deliv_tel03"}-->
								<!--{$arrForm[$key1].value|escape}-->-<!--{$arrForm[$key2].value|escape}-->-<!--{$arrForm[$key3].value|escape}-->
								</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f2f1ec" width="110">住址</td>
								<td bgcolor="#ffffff" width="607" colspan="3">
									<!--{assign var=pref value=`$arrForm.deliv_pref.value`}-->
									<!--{$arrPref[$pref]}-->
									<!--{assign var=key value="deliv_addr01"}-->
									<!--{$arrForm[$key].value|escape}-->
									<!--{assign var=key value="deliv_addr02"}-->
									<!--{$arrForm[$key].value|escape}-->
								</td>
							</tr>
						</table>
						<!--▲配送先情報ここまで-->	

						<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td></tr>
						</table>
						
						<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" width="717" colspan="7">▼所购商品信息</td>
							</tr>
							<tr bgcolor="#f0f0f0" align="center" class="fs12n">
								<td width="140">商品编号</td>
								<td width="215">商品名/规格1/规格2</td>
								<td width="84">单价</td>
								<td width="45">数量</td>
								<td width="94">小计</td>
							</tr>
							<!--{section name=cnt loop=$arrForm.quantity.value}-->
							<!--{assign var=key value="`$smarty.section.cnt.index`"}-->
							<tr bgcolor="#ffffff" class="fs12">
								<td width="140"><!--{$arrDisp.product_code[$key]|escape}--></td>
								<td width="215"><!--{$arrDisp.product_name[$key]|escape}-->/<!--{$arrDisp.classcategory_name1[$key]|escape|default:"(なし)"}-->/<!--{$arrDisp.classcategory_name2[$key]|escape|default:"(无)"}--></td>
								<td width="84" align="center"><!--{if $arrForm.price.value[$key] != 0}--><!--{$arrForm.price.value[$key]|escape}-->元<!--{else}-->免费<!--{/if}--></td>
								<td width="45" align="center"><!--{$arrForm.quantity.value[$key]|escape}--></td>
								<!--{assign var=price value=`$arrForm.price.value[$key]`}-->
								<!--{assign var=quantity value=`$arrForm.quantity.value[$key]`}-->
								<td width="94" align="right"><!--{if $price != 0}--><!--{$price|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|sfMultiply:$quantity|number_format}-->元<!--{else}-->免费<!--{/if}--></td>
							</tr>
							<!--{/section}-->
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">小计</td>
								<td align="right"><!--{$arrForm.subtotal.value|number_format}-->元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">积分折扣</td>
								<td align="right"><!--{assign var=point_discount value="`$arrForm.use_point.value*$smarty.const.POINT_VALUE`"}--><!--{$point_discount}-->元</td>
							</tr>
							<!--{assign var=discount value="`$arrForm.discount.value`"}-->
							<!--{if $discount != "" && $discount > 0}-->
				 			<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">折扣</td>
								<td align="right"><!--{$discount}-->元</td>
							</tr>
							<!--{/if}-->
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">运费</td>
								<td align="right"><!--{assign var=key value="deliv_fee"}--><!--{$arrForm[$key].value|escape|number_format}--> 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">手续费</td>
								<td align="right"><!--{assign var=key value="charge"}-->
							<span class="red12"><!--{$arrErr[$key]}--></span><!--{$arrForm[$key].value|escape|number_format}--> 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">合计</td>
								<td align="right"><!--{$arrForm.total.value|number_format}--> 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">支付合计</td>
								<td align="right"><!--{$arrForm.payment_total.value|number_format}--> 元</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">所用积分</td>
								<td align="right"><!--{assign var=key value="use_point"}--><!--{if $arrForm[$key].value != ""}--><!--{$arrForm[$key].value}--><!--{else}-->0<!--{/if}--> 点</td>
							</tr>
							<!--{if $arrForm.birth_point.value > 0}-->
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">生日积分</td>
								<td align="right">
								<!--{$arrForm.birth_point.value}-->
								 点</td>
							</tr>
							<!--{/if}-->
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="4" align="right">增加积分</td>
								<td align="right">
								<!--{$arrForm.add_point.value|default:0}-->
								 点</td>
							</tr>
							<tr bgcolor="#ffffff" class="fs12n">
								<!--{if $arrDisp.customer_id > 0}-->
								<td colspan="4" align="right">现有积分</td>
								<td align="right">
								<!--{$arrForm.point.value}-->
								 点</td>
								<!--{else}-->
								<td colspan="4" align="right">现有积分</td><td align="center">（无）</td>
								<!--{/if}-->
							</tr>
							<!--{*
							<tr bgcolor="#ffffff" class="fs12n">
								<td colspan="5" align="right">最终积分（积分的修改请通过<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onclick="return fnEdit('<!--{$arrDisp.customer_id}-->');">顾客编辑</a>手动进行。）</td>
								<td align="right">
								<span class="red12"><!--{$arrErr.total_point}--></span>
								<!--{$arrForm.total_point.value}-->
								 点</td>
							</tr>
							*}-->
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" colspan="5">▼支付方法</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#ffffff" colspan="5" height="24">
								<!--{assign var=payment_id value="`$arrForm.payment_id.value`"}-->
								<!--{$arrPayment[$payment_id]|escape}--></td>
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
								<td bgcolor="#f0f0f0" colspan="5">▼时间指定</td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#ffffff" colspan="5" height="24">
								<!--{assign var=deliv_time_id value="`$arrForm.deliv_time_id.value`"}-->
								<!--{$arrDelivTime[$deliv_time_id]|default:"无指定"}--></td>
							</tr>
							<tr class="fs12n">
								<td bgcolor="#f0f0f0" colspan="6">▼送货日期指定</td>
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
								<!--{$arrForm[$key].value|escape|nl2br}-->
								</td>
							</tr>							
						</table>					
						
						
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
</div>

</body>
</html>
