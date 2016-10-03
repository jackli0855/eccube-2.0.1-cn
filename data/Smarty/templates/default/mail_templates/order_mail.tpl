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
<!--{$arrOrder.order_name01}--> <!--{$arrOrder.order_name02}-->

<!--{$tpl_header}-->

******************************************************************
　送货信息及收费金额
******************************************************************

订单编号：<!--{$arrOrder.order_id}-->
支付合计：￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
结算方法：<!--{$arrOrder.payment_method}-->
送货日期：<!--{$arrOrder.deliv_date|default:"无指定"}-->
送货时间：<!--{$arrOrder.deliv_time|default:"无指定"}-->
信息　　：<!--{$Message_tmp}-->
◎送货地址
　姓名　　：<!--{$arrOrder.deliv_name01}--> <!--{$arrOrder.deliv_name02}-->
　邮政编码：〒<!--{$arrOrder.deliv_zip01}-->-<!--{$arrOrder.deliv_zip02}-->
　住址　　：<!--{$arrOrder.deliv_pref}--><!--{$arrOrder.deliv_addr01}--><!--{$arrOrder.deliv_addr02}-->
　电话号码：<!--{$arrOrder.deliv_tel01}-->-<!--{$arrOrder.deliv_tel02}-->-<!--{$arrOrder.deliv_tel03}-->

<!--{if $arrOther.title.value }-->
******************************************************************
　<!--{$arrOther.title.name}-->信息
******************************************************************

<!--{foreach key=key item=item from=$arrOther}-->
<!--{if $key != "title"}-->
<!--{if $item.name != ""}--><!--{$item.name}-->：<!--{/if}--><!--{$item.value}-->
<!--{/if}-->
<!--{/foreach}-->
<!--{/if}-->

******************************************************************
　订购商品明细
******************************************************************

<!--{section name=cnt loop=$arrOrderDetail}-->
商品名：<!--{$arrOrderDetail[cnt].product_name}--> <!--{$arrOrderDetail[cnt].classcategory_name1}--> <!--{$arrOrderDetail[cnt].classcategory_name2}-->
商品编号：<!--{$arrOrderDetail[cnt].product_code}-->
数量：<!--{$arrOrderDetail[cnt].quantity}--> 个
金额：￥ <!--{$arrOrderDetail[cnt].price|sfPreTax:$arrInfo.tax:$arrInfo.tax_rule|number_format}-->

<!--{/section}-->
-----------------------------------------------------------
小　计 ￥ <!--{$arrOrder.subtotal|number_format|default:0}--> (其中消费税 ￥<!--{$arrOrder.tax|number_format|default:0}-->）
折　扣 ￥ <!--{$arrOrder.use_point+$arrOrder.discount|number_format|default:0}-->
运　费 ￥ <!--{$arrOrder.deliv_fee|number_format|default:0}-->
手续费 ￥ <!--{$arrOrder.charge|number_format|default:0}-->
===============================================================
合　计 ￥ <!--{$arrOrder.payment_total|number_format|default:0}-->
<!--{if $arrOrder.customer_id}-->
===============================================================
<!--{* ご注文前のポイント {$tpl_user_point} pt *}-->
所用积分 <!--{$arrOrder.use_point|default:0}--> pt
本次增加的积分 <!--{$arrOrder.add_point|default:0}--> pt
拥有积分 <!--{$arrCustomer.point|default:0}--> pt
<!--{/if}-->
<!--{$tpl_footer}-->