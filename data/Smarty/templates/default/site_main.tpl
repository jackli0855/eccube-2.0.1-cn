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
<body onload="preLoadImg('<!--{$smarty.const.URL_DIR}-->'); <!--{$tpl_onload}-->">
<!--{$GLOBAL_ERR}-->
<noscript>
  <p>请允许使用 JavaScript.</p>
</noscript>

<a name="top" id="top"></a>

<!--{* ▼HEADER *}-->
<!--{if $arrPageLayout.header_chk != 2}-->
<!--{include file= $header_tpl}-->
<!--{/if}-->
<!--{* ▲HEADER *}-->

<!--{* ▼CONTENTS *}-->
<div id="container">

  <!--{if $tpl_column_num > 1}-->
  <!--{* ▼LEFT COLUMN *}-->
  <div id="leftcolumn">

    <!--{* ▼左ナビ *}-->
    <!--{if $arrPageLayout.LeftNavi|@count > 0}-->
      <!--{foreach key=LeftNaviKey item=LeftNaviItem from=$arrPageLayout.LeftNavi}-->
        <!-- ▼<!--{$LeftNaviItem.bloc_name}--> ここから-->
          <!--{if $LeftNaviItem.php_path != ""}-->
            <!--{include_php file=$LeftNaviItem.php_path}-->
          <!--{else}-->
            <!--{include file=$LeftNaviItem.tpl_path}-->
          <!--{/if}-->
        <!-- ▲<!--{$LeftNaviItem.bloc_name}--> ここまで-->
      <!--{/foreach}-->
    <!--{/if}-->
    <!--{* ▲左ナビ *}-->
  </div>
  <!--{* ▲LEFT COLUMN *}-->
  <!--{/if}-->

  <!--{if $tpl_column_num == 3}-->
  <!--{* ▼CENTER COLUMN *}-->
  <div id="centercolumn">
  <!--{/if}-->

    <!--{* ▼メイン上部 *}-->
    <!--{if $arrPageLayout.MainHead|@count > 0}-->
      <!--{foreach key=MainHeadKey item=MainHeadItem from=$arrPageLayout.MainHead}-->
        <!-- ▼<!--{$MainHeadItem.bloc_name}--> 从这里-->
        <!--{if $MainHeadItem.php_path != ""}-->
          <!--{include_php file=$MainHeadItem.php_path}-->
        <!--{else}-->
          <!--{include file=$MainHeadItem.tpl_path}-->
        <!--{/if}-->
        <!-- ▲<!--{$MainHeadItem.bloc_name}--> 到这里-->
      <!--{/foreach}-->
    <!--{/if}-->
    <!--{* ▲メイン上部 *}-->

    <!--{if $tpl_column_num == 1}-->
    <div id="one_column">
    <!--{/if}-->
    <!--{include file=$tpl_mainpage}-->
    <!--{if $tpl_column_num == 1}-->
    </div>
    <!--{/if}-->

    <!--{* ▼メイン下部 *}-->
    <!--{if $arrPageLayout.MainFoot|@count > 0}-->
      <!--{foreach key=MainFootKey item=MainFootItem from=$arrPageLayout.MainFoot}-->
        <!-- ▼<!--{$MainFootItem.bloc_name}--> 从这里-->
        <!--{if $MainFootItem.php_path != ""}-->
          <!--{include_php file=$MainFootItem.php_path}-->
        <!--{else}-->
          <!--{include file=$MainFootItem.tpl_path}-->
        <!--{/if}-->
        <!-- ▲<!--{$MainFootItem.bloc_name}--> 到这里-->
      <!--{/foreach}-->
    <!--{/if}-->
    <!--{* ▲メイン下部 *}-->

  <!--{if $tpl_column_num == 3}-->
  </div>
  <!--{* ▲CENTER COLUMN *}-->

  <!--{* ▼RIGHT COLUMN *}-->
  <div id="rightcolumn">
    <!--{* ▼右ナビ *}-->
    <!--{if $arrPageLayout.RightNavi|@count > 0}-->
      <!--{foreach key=RightNaviKey item=RightNaviItem from=$arrPageLayout.RightNavi}-->
        <!-- ▼<!--{$RightNaviItem.bloc_name}--> 从这里-->
        <!--{if $RightNaviItem.php_path != ""}-->
          <!--{include_php file=$RightNaviItem.php_path}-->
        <!--{else}-->
          <!--{include file=$RightNaviItem.tpl_path}-->
        <!--{/if}-->
        <!-- ▲<!--{$RightNaviItem.bloc_name}--> 到这里-->
      <!--{/foreach}-->
    <!--{/if}-->
    <!--{* ▲右ナビ *}-->
  </div>
  <!--{* ▲RIGHT COLUMN *}-->
  <!--{/if}-->

</div>
<!--{* ▲CONTENTS *}-->

<!--{* ▼FOTTER *}-->
<!--{if $arrPageLayout.footer_chk != 2}-->
<!--{include file=$footer_tpl}-->
<!--{/if}-->
<!--{* ▲FOTTER *}-->

<!--{* EBiSタグ表示用 *}-->
<!--{$tpl_mainpage|sfPrintEbisTag}-->
<!--{* アフィリエイトタグ表示用 *}-->
<!--{$tpl_conv_page|sfPrintAffTag:$tpl_aff_option}-->
</body>
