<table width="678" border="0" cellspacing="1" cellpadding="4" summary=" ">
    <tr bgcolor="#f2f1ec" align="center" class="fs12n">
        <td width="">图标</td>
        <td width="">商品名称</td>
        <td width="">导入版本</td>
        <td width="">安装</td>
        <td width="">设置</td>
        <td width="">购物状态</td>
    </tr>
<!--{foreach from=$arrProducts item=product name=products_list_loop}-->
    <tr bgcolor="#ffffff" class="fs12">
        <td align="center">
            <a href="<!--{$smarty.const.OSTORE_URL}-->products/detail.php?product_id=<!--{$product.product_id|escape}-->"
               target="_blank">
                <img src="<!--{$smarty.const.OSTORE_SSLURL}-->upload/save_image/<!--{$product.main_list_image|escape}-->" width="50" height="50">
            </a>
        </td>
        <td align="center">
            <p>
                <a href="<!--{$smarty.const.OSTORE_URL}-->products/detail.php?product_id=<!--{$product.product_id|escape}-->" target="_blank">
                    <!--{$product.name}-->
                </a>
            </p>
            <p>Version.<!--{$product.version|default:"--"}-->　<!--{$product.last_update_date|sfDispDBDate:false|escape}--></p>
        </td>
        <td align="center"><!--{$product.installed_version|default:"--"|escape}--></td>
        
        <!--{* ダウンロード対象商品なら各種ボタンを表示する *}-->
        <!--{if $product.download_flg}-->
        
        <td align="center">
            <div id="ownersstore_download<!--{$product.product_id|escape}-->">
            <!--{* インストール済み かつ 新バージョンが公開している場合 はアップデートボタン表示 *}-->
            <!--{if $product.installed_flg && $product.version_up_flg}-->
                <span class="icon_confirm">
                <a href="" onclick="OwnersStore.download(<!--{$product.product_id|escape}-->);return false;">更新</a>
                </span>
            <!--{* 未インストールならインストールボタン表示 *}-->
            <!--{elseif !$product.installed_flg}-->
                <span class="icon_confirm">
                <a href="" onclick="OwnersStore.download(<!--{$product.product_id|escape}-->);return false;">安装</a>
                </span>
            <!--{else}-->
                完成
            <!--{/if}-->
            </div>
        </td>
            
        <td align="center">
            <!--{* インストール済みなら設定ボタン表示 *}-->
            <!--{if $product.installed_flg}-->
                <span class="icon_confirm">
                <a href="" onclick="win02('../load_module_config.php?module_id=<!--{$product.product_id}-->', 'load', 600, 400);return false;">
                   设置
                </a>
                </span>
            <!--{else}-->
                <div id='ownersstore_settings<!--{$product.product_id|escape}-->' style="display:none">
                <span class="icon_confirm">
                <a href="" onclick="win02('../load_module_config.php?module_id=<!--{$product.product_id}-->', 'load', 600, 400);return false;">
                   设置
                </a>
                </span>
                </div>
                <div id='ownersstore_settings_default<!--{$product.product_id|escape}-->' style="display:bloc">--</div>
            <!--{/if}-->
        </td>

        <!--{else}-->
        
        <td align="center">--</td>
        <td align="center">--</td>
        <!--{/if}-->
        
        <td align="center"><!--{$product.status|escape|nl2br}--></td>
    </tr>
<!--{/foreach}-->
</table>