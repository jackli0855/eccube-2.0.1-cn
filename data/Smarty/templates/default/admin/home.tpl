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
	<tr valign="top">
		<td class="mainbg">
		<table width="588" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<!--メインエリア-->
			<tr>
				<td align="center">
				<table width="562" border="0" cellspacing="0" cellpadding="0" summary=" ">
				<form name="form1" method="post" action="#">
					<tr><td height="14"></td></tr>
					<tr>
						<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/home_top.jpg" width="562" height="14" alt=""></td>
					</tr>
					<tr>
						<td background="<!--{$TPL_DIR}-->img/contents/main_left.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
						<td bgcolor="#cccccc">
						<!--システム情報ここから-->
						<table width="534" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr>
								<td><img src="<!--{$TPL_DIR}-->img/contents/homettl_system.gif" width="534" height="26" alt="系统信息"></td>
							</tr>
							<tr><td><img src="<!--{$TPL_DIR}-->img/contents/home_bar.jpg" width="534" height="10" alt=""></td></tr>
						</table>
						<table width="534" border="0" cellspacing="1" cellpadding="4" summary=" ">
							<tr>
								<td bgcolor="#f2f1ec" width="178" class="fs12">EC-CUBE版本</td>
								<td bgcolor="#ffffff" width="337" class="fs12" align="right"><!--{$smarty.const.ECCUBE_VERSION}--></td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">PHP版本</td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$php_version}--></td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">DB版本</td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$db_version}--></td>
							</tr>							
						</table>
						
						<!--ショップの状況ここから-->
						<table width="534" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td><img src="<!--{$TPL_DIR}-->img/contents/home_bar02.jpg" width="534" height="20" alt=""></td></tr>
							<tr>
								<td><img src="<!--{$TPL_DIR}-->img/contents/homettl_shop.gif" width="534" height="26" alt="商店的状况"></td>
							</tr>
							<tr><td><img src="<!--{$TPL_DIR}-->img/contents/home_bar.jpg" width="534" height="10" alt=""></td></tr>
						</table>
						<table width="534" border="0" cellspacing="1" cellpadding="4" summary=" ">
							<tr>
								<td bgcolor="#f2f1ec" width="178" class="fs12">当前会员数量</td>
								<td bgcolor="#ffffff" width="337" class="fs12" align="right"><!--{$customer_cnt|default:"0"|number_format}-->名</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">昨天的销售额</td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$order_yesterday_amount|default:"0"|number_format}-->元</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">昨天的销售数量</td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$order_yesterday_cnt|default:"0"|number_format}-->件</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec"><span class="fs12">本月的销售额</span><span class="fs10">(截至到昨天) </span></td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$order_month_amount|default:"0"|number_format}-->元</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec"><span class="fs12">本月的销售数量 </span><span class="fs10">(截至到昨天) </span></td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$order_month_cnt|default:"0"|number_format}-->件</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">昨天的批评写入数</td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$review_yesterday_cnt|default:"0"}-->件</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">顾客所拥有的积分合计</td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$customer_point|default:"0"}-->点</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">批评写入非表示数</td>
								<td bgcolor="#ffffff" class="fs12" align="right"><!--{$review_nondisp_cnt|default:"0"}-->件</td>
							</tr>
							<tr>
								<td bgcolor="#f2f1ec" class="fs12">脱销商品</td>
								<td bgcolor="#ffffff" class="fs12">
								<!--{section name=i loop=$arrSoldout}-->
								<!--{$arrSoldout[i].product_id}-->:<!--{$arrSoldout[i].name|escape}--><br>
								<!--{/section}-->			
								</td>
							</tr>
						</table>
						<!--ショップの状況ここまで-->
						<table width="534" border="0" cellspacing="0" cellpadding="0" summary=" ">
							<tr><td><img src="<!--{$TPL_DIR}-->img/contents/home_bar02.jpg" width="534" height="20" alt=""></td></tr>
							<tr>
								<td><img src="<!--{$TPL_DIR}-->img/contents/homettl_list.gif" width="534" height="26" alt="新的订购一览"></td>
							</tr>
							<tr><td><img src="<!--{$TPL_DIR}-->img/contents/home_bar.jpg" width="534" height="10" alt=""></td></tr>
						</table>
						<!--新規受付一覧ここから-->
						<table width="534" border="0" cellspacing="1" cellpadding="5" summary=" ">
							<tr bgcolor="#636469" align="center" class="fs10n">
								<td width="100"><span class="white">订购日期</span></td>
								<td width="90"><span class="white">顾客姓名</span></td>
								<td width="159"><span class="white">所购商品</span></td>
								<td width="70"><span class="white">支付方法</span></td>
								<td width="70"><span class="white">所付金额(元)</span></td>
							</tr>
							<!--{section name=i loop=$arrNewOrder}-->
							<tr bgcolor="#ffffff" class="fs10">
								<td><!--{$arrNewOrder[i].create_date}--></td>
								<td><!--{$arrNewOrder[i].name01|escape}--> <!--{$arrNewOrder[i].name02|escape}--></td>
								<td><!--{$arrNewOrder[i].product_name|escape}--></td>
								<td><!--{$arrNewOrder[i].payment_method|escape}--></td>
								<td align="right"><!--{$arrNewOrder[i].total|number_format}-->元</td>
							</tr>
							<!--{/section}-->
						</table>
						<!--新規受付一覧ここまで-->
						</td>
						<td background="<!--{$TPL_DIR}-->img/contents/main_right.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
					</tr>
					<tr>
						<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/home_bottom.jpg" width="562" height="14" alt=""></td>
					</tr>
					<tr><td height="30"></td></tr>
				</form>
				</table>
				</td>
			</tr>
			<!--メインエリア-->
		</table>
		</td>
		<td bgcolor="#a8a8a8"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
		<td class="infobg" bgcolor="#e3e3e3">
		<table width="288" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<td align="center">
				<table width="266" border="0" cellspacing="0" cellpadding="0" summary=" ">
				</table>
				</td>
			</tr>
		</table>
		</td>
	</tr>
</table>
<!--★★メインコンテンツ★★-->		
<!--▲CONTENTS-->
