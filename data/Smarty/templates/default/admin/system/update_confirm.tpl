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
FTP连接成功。<br/>
安装文件暂时保存在以下目录中。</br>
<!--{$local_save_dir}--><br/>
请赋予上层目录写权限。</br>
并请在安装过程中注意以下信息。</br>

<!--{section name=cnt loop=$arrFile}-->
	<!--{if $arrFile[cnt].main_file != ""}-->
		・写入<!--{$arrFile[cnt].main_file|escape}-->。</br>请赋予上层目录写权限。</br>
	<!--{/if}-->
	<!--{if $arrFile[cnt].sql_file != ""}-->
		・请注意，要重构<!--{$arrFile[cnt].sql_file}-->表。</br>数据就会自动进行备份</br>
	<!--{/if}-->
<!--{/section}-->

<form name="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->">
<input type="hidden" name="mode" value="install">
<input type="hidden" name="update_id" value="<!--{$smarty.post.update_id}-->">
<input type="button" name="back" value="返回" onclick="location.href='./update.php'";>　<input type="submit" value="安装">
</form1>