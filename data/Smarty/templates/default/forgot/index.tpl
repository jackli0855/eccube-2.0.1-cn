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
<title><!--{$arrSiteInfo.shop_name}-->/忘记密码的客户(输入页面)</title>
</head>

<body onload="preLoadImg('<!--{$smarty.const.URL_DIR}-->')">
<noscript>
 <p>请允许使用JavaScript</p>
</noscript>
<div id="windowcolumn">
  <div id="windowarea">
    <h2><img src="<!--{$TPL_DIR}-->img/forget/title.jpg" width="500" height="40" alt="忘记密码的客户" /></h2>
    <p>输入注册时填写的电子邮件后，请点击「继续」按钮。<br />
      <span class="attention">※我们会重新生成新的密码，所以您忘记了的密码以后就不能再用了。</span></p>
    <form action="<!--{$smarty.server.PHP_SELF|escape}-->" method="post" name="form1">
      <input type="hidden" name="mode" value="mail_check" />
      <div id="completebox">
        <p>电子邮件：&nbsp;<!--★メールアドレス入力★--><input type="text" name="email" value="<!--{$tpl_login_email|escape}-->" size="40" class="box300" style="<!--{$errmsg|sfGetErrorColor}-->; ime-mode: disabled;" /></p>
        <span class="attention"><!--{$errmsg}--></span>
      </div>
      <div class="btn">
        <input type="image" onmouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next_on.gif',this)" onmouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/common/b_next.gif',this)" src="<!--{$TPL_DIR}-->img/common/b_next.gif" alt="继续" class="box150" name="next" id="next" />
      </div>
    </form>
  </div>
</div>
</body>
</html>
