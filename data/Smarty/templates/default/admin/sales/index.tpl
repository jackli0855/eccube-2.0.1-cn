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
<!--▼CONTENTS-->
<table width="780" border="0" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td bgcolor="#ffffff" align="center" valign="top" height="400">
		<table width="740" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<!--▼SUB NAVI-->
				<td class="fs12n"><span class="over">■销售合计</span></td>
				<!--▲SUB NAVI-->
			</tr><tr><td height="25"></td></tr>
		</table>
		
		<!--▼MAIN CONTENTS-->
		<table width="740" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr>
				<td class="fs14n"><strong>■销售合计</strong></td>
			</tr>
			<tr><td height="10"></td></tr>
		</table>
		
		<!--▼検索テーブルここから-->
		<form name="form1" id="form1" method="post" action="">
		<table bgcolor="#cccccc" width="730" border="0" cellspacing="1" cellpadding="5" summary=" ">
			<tr class="fs12n">
				<td bgcolor="#ffffff">
				<input type="radio" value="年度指定" name="search" checked="checked">　
				<select name="year">
				<option selected="selected">--</option>
				</select>年
				<select name="month">
				<option selected="selected">--</option>
				</select>月度（30日截止）
				</td>
			</tr>
			<tr class="fs12n">
				<td bgcolor="#ffffff">
				<input type="radio" value="期间指定" name="search">　
				<select name="year_from">
				<option selected="selected">--</option>
				</select>年
				<select name="month_from">
				<option selected="selected">--</option>
				</select>月
				<select name="day_from">
				<option selected="selected">--</option>
				</select>日～
				<select name="year_to">
				<option selected="selected">--</option>
				</select>年
				<select name="month_to">
				<option selected="selected">--</option>
				</select>月
				<select name="day_to">
				<option selected="selected">--</option>
				</select>日
				</td>
			</tr>
			<tr class="fs12n">
				<td bgcolor="#ffffff">
				<select name="data">
				<option selected="selected">请选择</option>
				<option value="月別/期間別">月份/期间</option>
				<option value="売れ筋商品BEST10">畅销商品BEST10</option>
				<option value="年齢BEST10">年龄BEST10</option>
				<option value="職業BEST10">职业BEST10</option>
				<option value="売上内訳（一般/会員）">销售明细（普通/会员）</option>
				<option value="商品BEST（一般）">商品BEST（普通）</option>
				<option value="商品BEST（会員）">商品BEST（会员）</option>
				</select>
				</td>
			</tr>
		</table>
		<!--▲検索テーブルここまで-->
		
		<br />
		<input type="button" name="subm" value="以此内容检索" />
		</form>
		
		<!--▼検索結果表示エリアここから-->
		<hr noshade size="1" color="#cccccc" />
		
		<table width="740" border="0" cellspacing="0" cellpadding="0" summary=" ">
			<tr><td height="15"></td></tr>
			<tr class="fs12">
				<td align="center">保留</td>
			</tr>
			<tr><td height="5"></td></tr>
		</table>
		<!--▲検索結果表示エリアここまで-->
		
		<!--▲MAIN CONTENTS-->
		</td>
	</tr>
</table>
<!--▲CONTENTS-->