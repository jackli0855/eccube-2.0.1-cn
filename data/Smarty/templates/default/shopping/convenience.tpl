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
<table width="780" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="18" alt="" /></td>
		<td bgcolor="#ffffff" colspan="3"><img src="../img/_.gif" width="778" height="1" alt="" /></td>

		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="18" alt="" /></td>		
	</tr>
	<tr>
		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="10" alt="" /></td>
		<td bgcolor="#ffffff"><img src="../img/_.gif" width="10" height="1" alt="" /></td>
		<td><img src="../img/shopping/flow06.gif" width="758" height="78" alt="购物流程" /></td>
		<td bgcolor="#ffffff"><img src="../img/_.gif" width="10" height="1" alt="" /></td>
		<td bgcolor="#cccccc"><img src="../img/_.gif" width="1" height="10" alt="" /></td>		
	</tr>
</table>

<table width="780" cellspacing="0" cellpadding="0" summary=" ">
	<tr>
		<td bgcolor="#cccccc" width="1"><img src="../img/_.gif" width="1" height="10" alt="" /></td>
		<td bgcolor="#ffffff" width="9"><img src="../img/_.gif" width="39" height="1" alt="" /></td>
		<td bgcolor="#ffffff" align="left"> 
		<!--▼MAIN CONTENTS-->
		<table cellspacing="0" cellpadding="0" summary=" " id="containerfull">
			<tr><td height="20"></td></tr>
			<tr valign="top">
				<!--▼CONTENTS-->

				<td>
				<div id="maintitle"><img src="../img/shopping/conveni_title.jpg" width="700" height="40" alt="24小时店结算" /></div>
				<div class="fs12n" id="comment01">请从下面选择进行支付的24小时店。<br />
				选择后，请点击最下面的「到订购结束页面」按钮。</div>
				<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
				<input type="hidden" name="mode" value="complete">
				<input type="hidden" name="uniqid" value="<!--{$tpl_uniqid}-->">
				<span class="red12st"><!--{$arrErr.convenience}--></span>
				<table cellspacing="1" cellpadding="8" summary=" " id="frame">
					<tr class="fs12n">
						<td id="select">选择</td>
						<td id="payment">24小时店的类别</td>
					</tr>
					<!--{foreach key=key item=item from=$arrCONVENIENCE}-->
					<tr>
						<td id="select_c"><input type="radio" name="convenience" value="<!--{$key}-->" style="<!--{$arrErr.convenience|sfGetErrorColor}-->"></td>
						<td class="fs12n" id="payment_c"><!--{$item|escape}--></td>
					</tr>
					<!--{/foreach}-->
				</table>
				<div class="red12" id="comment02">※点击「到订购结束页面」后，请等待“完成页面”的显示。</div>
				<div id="button">
				<!--「戻る」「登録」-->
				<a href="<!--{$smarty.server.PHP_SELF|escape}-->" onmouseover="chgImg('/img/button/back03_on.gif','back03')" onmouseout="chgImg('/img/button/back03.gif','back03')" onclick="fnModeSubmit('return', '', ''); return false;" /><img src="/img/button/back03.gif" width="110" height="30" alt="返回" border="0" name="back03" id="back03" ></a><img src="../img/_.gif" width="20" height="" alt="" /><input type="image" onmouseover="chgImgImageSubmit('../img/shopping/complete_on.gif',this)" onmouseout="chgImgImageSubmit('../img/shopping/complete.gif',this)" src="../img/shopping/complete.gif" width="170" height="30" alt="到订购结束页面" border="0" name="complete" id="complete" />
				</div>
				</form>
				
				<table cellspacing="0" cellpadding="0" summary=" " id="verisign">
					<tr>
						<td><script src=https://seal.verisign.com/getseal?host_name=secure.tokado.jp&size=S&use_flash=YES&use_transparent=NO&lang=jp></script></td>
						<td><img src="../img/_.gif" width="10" height="1" alt="" /></td>
						<td class="fs10">网络购物时，为确保通信安全，设定安全模式。选择「加密(SSL)」的话，所传送的数据将被加密，以降低泄漏的危险。而且，因由中国 VeriSign 公司公司的通信服务器进行认证，ID和口令被非法盗用的可能性也将降低。</td>
					</tr>

				</table>
				</td>
				<!--▲ONTENTS-->	
			</tr>
		</table>
		<!--▲MAIN CONTENTS-->
		</td>
		<td bgcolor="#ffffff" width="10"><img src="../img/_.gif" width="39" height="1" alt="" /></td>
		<td bgcolor="#cccccc" width="1"><img src="../img/_.gif" width="1" height="10" alt="" />
<!-- EBiS start -->
<script type="text/javascript">
if ( location.protocol == 'http:' ){ 
	strServerName = 'http://daikoku.ebis.ne.jp'; 
} else { 
	strServerName = 'https://secure2.ebis.ne.jp/ver3';
}
cid = 'tqYg3k6U'; pid = 'shopping_card'; m1id=''; a1id=''; o1id=''; o2id=''; o3id=''; o4id=''; o5id='';
document.write("<scr" + "ipt type=\"text\/javascript\" src=\"" + strServerName + "\/ebis_tag.php?cid=" + cid + "&pid=" + pid + "&m1id=" + m1id + "&a1id=" + a1id + "&o1id=" + o1id + "&o2id=" + o2id + "&o3id=" + o3id + "&o4id=" + o4id + "&o5id=" + o5id + "\"><\/scr" + "ipt>");
</script>
<!-- EBiS end -->
		</td>

	</tr>
</table>
<!--▲CONTENTS-->