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
<div id="mynavarea">
  <ul>
  <!--{if $tpl_mypageno == 'index'}-->
    <li><a href="./index.php"><img src="<!--{$TPL_DIR}-->img/mypage/navi01_on.jpg" width="170" height="30" alt="购物履历一览" border="0" name="m_navi01" /></a></li>
  <!--{else}-->
    <li><a href="./index.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/mypage/navi01_on.jpg','m_navi01');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/mypage/navi01.jpg','m_navi01');"><img src="<!--{$TPL_DIR}-->img/mypage/navi01.jpg" width="170" height="30" alt="购物履历一览" border="0" name="m_navi01" /></a></li>
  <!--{/if}-->
  <!--{if $tpl_mypageno == 'change'}-->
    <li><a href="./change.php"><img src="<!--{$TPL_DIR}-->img/mypage/navi02_on.jpg" width="170" height="30" alt="修改会员注册内容" border="0" name="m_navi02" /></a></li>
  <!--{else}-->
    <li><a href="./change.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/mypage/navi02_on.jpg','m_navi02');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/mypage/navi02.jpg','m_navi02');"><img src="<!--{$TPL_DIR}-->img/mypage/navi02.jpg" width="170" height="30" alt="修改会员注册内容" border="0" name="m_navi02" /></a></li>
  <!--{/if}-->
  <!--{if $tpl_mypageno == 'delivery'}-->
    <li><a href="./delivery.php"><img src="<!--{$TPL_DIR}-->img/mypage/navi03_on.jpg" width="170" height="30" alt="添加修改送货地址" border="0" name="m_navi03" /></a></li>
  <!--{else}-->
    <li><a href="./delivery.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/mypage/navi03_on.jpg','m_navi03');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/mypage/navi03.jpg','m_navi03');"><img src="<!--{$TPL_DIR}-->img/mypage/navi03.jpg" width="170" height="30" alt="添加修改送货地址" border="0" name="m_navi03" /></a></li>
  <!--{/if}-->
  <!--{if $tpl_mypageno == 'refusal'}-->
    <li><a href="./refusal.php"><img src="<!--{$TPL_DIR}-->img/mypage/navi04_on.jpg" width="170" height="30" alt="退会手续" border="0" name="m_navi04" /></a></li>
  <!--{else}-->
    <li><a href="./refusal.php" onmouseover="chgImg('<!--{$TPL_DIR}-->img/mypage/navi04_on.jpg','m_navi04');" onmouseout="chgImg('<!--{$TPL_DIR}-->img/mypage/navi04.jpg','m_navi04');"><img src="<!--{$TPL_DIR}-->img/mypage/navi04.jpg" width="170" height="30" alt="退会手续" border="0" name="m_navi04" /></a></li>
  <!--{/if}-->
  <!-- 現在のポイント ここから -->
  <!--{if $point_disp !== false}-->
     <li>欢迎 <br />
       <!--{$CustomerName1|escape}--> <!--{$CustomerName2|escape}--><br />
       您现在所拥有的积分是<em><!--{$CustomerPoint|number_format|escape|default:"0"}-->点</em>。</li>
<!--{/if}-->
<!-- 現在のポイント ここまで -->
  </ul>
</div>
<!--▲NAVI-->
