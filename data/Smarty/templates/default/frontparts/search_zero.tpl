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
 <!--検索該当0の時-->
<table width="570" cellspacing="0" cellpadding="0" summary=" ">
	<tr><td height="15"></td></tr>
	<tr>
		<!--{if $smarty.get.mode == "search"}-->
		<td height="150" align="center" class="fs12">符合条件的<strong><span class="red">共0件</span></strong>。<br />
		请再用其他关键字检索。</td>
		<!--{else}-->
		<td height="150" align="center" class="fs12">现在没有商品。</td>
		<!--{/if}-->
	</tr>
</table>
<!--{*
<table width="570" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td colspan="3" align="center"><img src="<!--{$TPL_DIR}-->img/right_search/subtitle.gif" width="520" height="30" alt="现在举办的专集在这里" /></td>
	</tr>
	<tr><td height="15"></td></tr>
	<tr>
		<td align="right"><a href="../campaign/nabe.php"><img src="<!--{$TPL_DIR}-->img/right_search/b_01.jpg" width="218" height="117" alt="锅的专集" border="0" /></a></td>
		<td><img src="<!--{$TPL_DIR}-->img/_.gif" width="20" height="1" alt="" /></td>
		<td><a href="../campaign/christmas.php"><img src="<!--{$TPL_DIR}-->img/right_search/b_02.jpg" width="218" height="117" alt="圣诞专集" border="0" /></a></td>
	</tr>
</table>
*}-->
<!--検索該当0の時-->