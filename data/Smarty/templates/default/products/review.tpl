<!--{printXMLDeclaration}--><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<html xmlns="http://www.w3.org/1999/xhtml" lang="ja" xml:lang="ja">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=<!--{$smarty.const.CHAR_CODE}-->" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<link rel="stylesheet" href="<!--{$smarty.const.URL_DIR}--><!--{$smarty.const.USER_DIR}-->css/common.css" type="text/css" media="all" />
<link rel="alternate" type="application/rss+xml" title="RSS" href="<!--{$smarty.const.SITE_URL}-->/rss/index.php" />
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/css.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/navi.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/win_op.js"></script>
<script type="text/javascript" src="<!--{$TPL_DIR}-->js/site.js"></script>
<meta name="author" content="<!--{$arrPageLayout.author|escape}-->" />
<meta name="description" content="<!--{$arrPageLayout.description|escape}-->" />
<meta name="keywords" content="<!--{$arrPageLayout.keyword|escape}-->" />
<title><!--{$arrSiteInfo.shop_name}-->/写入客户意见（结束页面）</title>
</head>
<body onload="preLoadImg()">
<a name="top" id="top"></a>

<div id="windowcolumn">
  <div id="windowarea">
    <h2><img src="<!--{$TPL_DIR}-->img/products/review_title.jpg" width="500" height="40" alt="写入客户意见" /></h2>
    <p class="windowtext">请告诉我们您对于以下商品的意见或感想。<br />
     有 「<span class="attention">※</span>」记号的是必须输入项目。<br />
       输入完成后，请点击最下面的「到确认页面」按钮。</p>
        <form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
        <input type="hidden" name="mode" value="confirm" />
        <input type="hidden" name="product_id" value="<!--{$arrForm.product_id}-->" />
        <input type="hidden" name="<!--{$smarty.const.TRANSACTION_ID_NAME}-->" value="<!--{$transactionid}-->" />
        <table summary="写入客户意见">
          <tr>
            <th>商品名</th>
            <td><!--{$arrForm.name|escape}--></td>
          </tr>
          <tr>
            <th>投稿者姓名<span class="attention">※</span></th>
            <td><span class="attention"><!--{$arrErr.reviewer_name}--></span><input type="text" name="reviewer_name" value="<!--{$arrForm.reviewer_name|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.reviewer_name|sfGetErrorColor}-->" size="40" class="box350" /></td>
          </tr>
          <tr>
            <th>主页地址</th>
            <td><span class="attention"><!--{$arrErr.reviewer_url}--></span><input type="text" name="reviewer_url" value="<!--{$arrForm.reviewer_url}-->" maxlength="<!--{$smarty.const.MTEXT_LEN}-->" style="<!--{$arrErr.reviewer_url|sfGetErrorColor}-->" size="40" class="box350" /></td>
          </tr>
          <tr>
            <th>性别</th>
            <td>
              <input type="radio" name="sex" id="man" value="1" <!--{if $arrForm.sex eq 1}--> checked="checked"<!--{/if}--> /><label for="man">男性</label>&nbsp;
              <input type="radio" name="sex" id="woman" value="2" <!--{if $arrForm.sex eq 2}--> checked="checked"<!--{/if}--> /><label for="woman">女性</label>
            </td>
          </tr>
          <tr>
            <th>推荐等级<span class="attention">※</span></th>
            <td>
              <span class="attention"><!--{$arrErr.recommend_level}--></span>
              <select name="recommend_level" style="<!--{$arrErr.recommend_level|sfGetErrorColor}-->">
                <option value="" selected="selected">请选择</option>
                  <!--{html_options options=$arrRECOMMEND selected=$arrForm.recommend_level}-->
              </select>
            </td>
          </tr>
          <tr>
            <th>题目<span class="attention">※</span></th>
            <td>
              <span class="attention"><!--{$arrErr.title}--></span>
              <input type="text" name="title" value="<!--{$arrForm.title|escape}-->" maxlength="<!--{$smarty.const.STEXT_LEN}-->" style="<!--{$arrErr.title|sfGetErrorColor}-->" size="40" class="box350" />
            </td>
          </tr>
          <tr>
            <th>说明<span class="attention">※</span></th>
            <td>
              <span class="attention"><!--{$arrErr.comment}--></span>
              <textarea name="comment" cols="50" rows="10" style="<!--{$arrErr.comment|sfGetErrorColor}-->" class="area350"><!--{$arrForm.comment|escape}--></textarea>
            </td>
          </tr>
        </table>
        <div class="btn">
          <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_confirm_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_confirm.gif',this)" src="<!--{$TPL_DIR}-->img/common/b_confirm.gif" class="box150" alt="到确认页面" name="conf" id="conf" />
        </div>
      </form>
    </div>
  </div>
</body>
</html>
