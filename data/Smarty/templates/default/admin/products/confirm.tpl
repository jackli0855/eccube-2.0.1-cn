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
<!--★★メインコンテンツ★★-->
<table width="878" border="0" cellspacing="0" cellpadding="0" summary=" ">
	<tr valign="top">
		<td background="<!--{$TPL_DIR}-->img/contents/navi_bg.gif" height="402">
			<!--▼SUB NAVI-->
			<!--{include file=$tpl_subnavi}-->
			<!--▲SUB NAVI-->
		</td>
		<td class="mainbg">
			<!--▼CONTENTS-->
			<table width="737" border="0" cellspacing="0" cellpadding="0" summary=" ">
				<!--メインエリア-->
				<tr>
					<td align="center">
					<!--▼MAIN CONTENTS-->
						<table width="706" border="0" cellspacing="0" cellpadding="0" summary=" ">
						<!--▼登録テーブルここから-->
						<form name="form1" id="form1" method="post" action="<!--{$smarty.server.PHP_SELF|escape}-->" enctype="multipart/form-data">
						<!--{foreach key=key item=item from=$arrForm}-->
						<input type="hidden" name="<!--{$key}-->" value="<!--{$item|escape}-->">
						<!--{/foreach}-->
						<tr><td height="14"></td></tr>
						<tr>
							<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_top.jpg" width="706" height="14" alt=""></td>
						</tr>
						<tr>
							<td background="<!--{$TPL_DIR}-->img/contents/main_left.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
							<td bgcolor="#cccccc">
							<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
								<tr>
									<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_top.gif" width="678" height="7" alt=""></td>
								</tr>
								<tr>
									<td background="<!--{$TPL_DIR}-->img/contents/contents_title_left_bg.gif"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_left.gif" width="22" height="12" alt=""></td>
									<td bgcolor="#636469" width="638" class="fs14n"><span class="white"><!--コンテンツタイトル-->商品注册</span></td>
									<td background="<!--{$TPL_DIR}-->img/contents/contents_title_right_bg.gif"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="18" height="1" alt=""></td>
								</tr>
								<tr>
									<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/contents_title_bottom.gif" width="678" height="7" alt=""></td>
								</tr>
								<tr>
									<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bar.jpg" width="678" height="10" alt=""></td>
								</tr>
							</table>
							<table width="678" border="0" cellspacing="1" cellpadding="8" summary=" ">
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">商品名称</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.name|escape}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">商品分类目录</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{section name=cnt loop=$arrCategory_id}-->
										<!--{assign var=key value=$arrCategory_id[cnt]}-->
										<!--{$arrCatList[$key]|strip|sfTrim}--><br>
									<!--{/section}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">公开·不公开</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrDISP[$arrForm.status]}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">商品状态</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{section name=cnt loop=$arrForm.product_flag|count_characters}-->
										<!--{if $arrForm.product_flag[cnt] == "1"}--><!--{assign var=key value="`$smarty.section.cnt.iteration`"}--><img src="<!--{$TPL_DIR}--><!--{$arrSTATUS_IMAGE[$key]}-->"><!--{/if}-->
									<!--{/section}-->
									</td>
								</tr>

								<!--{if $tpl_nonclass == true}-->
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">商品编号</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.product_code|escape}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n"><!--{$smarty.const.NORMAL_PRICE_TITLE}--></td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.price01|escape}-->
									元</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n"><!--{$smarty.const.SALE_PRICE_TITLE}--></td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.price02|escape}-->
									元</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">库存数</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{if $arrForm.stock_unlimited == 1}-->
									无限制
									<!--{else}-->
									<!--{$arrForm.stock|escape}-->
									个<!--{/if}-->
									</td>
								</tr>
								<!--{/if}-->
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">积分支付率</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.point_rate|escape}-->
									％</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">预计送货日期</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrDELIVERYDATE[$arrForm.deliv_date_id]|escape}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">购买限制</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{if $arrForm.sale_unlimited == 1}-->
									无限制
									<!--{else}-->
									<!--{$arrForm.sale_limit|escape}-->
									个<!--{/if}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">厂商URL</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.comment1|escape|sfPutBR:$smarty.const.LINE_LIMIT_SIZE}-->
									</td>
								</tr>
								<!--{*
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">构成</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.comment2|escape}-->
									</td>
								</tr>
								*}-->
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">检索关键字</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.comment3|escape}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">一览-主要说明</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.main_list_comment|escape|nl2br}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">明细-主要说明</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{$arrForm.main_comment|nl2br}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">一览-メイン画像</td>
									<td bgcolor="#ffffff" width="557">
									<!--{assign var=key value="main_list_image"}-->
									<!--{if $arrFile[$key].filepath != ""}-->
									<img src="<!--{$arrFile[$key].filepath}-->" alt="<!--{$arrForm.name|escape}-->" /><br />
									<!--{/if}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">明细-主要图片</td>
									<td bgcolor="#ffffff" width="557">
									<!--{assign var=key value="main_image"}-->
									<!--{if $arrFile[$key].filepath != ""}-->
									<img src="<!--{$arrFile[$key].filepath}-->" alt="<!--{$arrForm.name|escape}-->" /><br />
									<!--{/if}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">明细-主要放大图片</td>
									<td bgcolor="#ffffff" width="557">
									<!--{assign var=key value="main_large_image"}-->
									<!--{if $arrFile[$key].filepath != ""}-->
									<img src="<!--{$arrFile[$key].filepath}-->" alt="<!--{$arrForm.name|escape}-->" /><br />
									<!--{/if}-->
									</td>
								</tr>
								<!--{section name=cnt loop=$smarty.const.PRODUCTSUB_MAX}-->
								<!--▼商品<!--{$smarty.section.cnt.iteration}-->-->
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">明细-附属标题（<!--{$smarty.section.cnt.iteration}-->）</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{assign var=key value="sub_title`$smarty.section.cnt.iteration`"}-->
									<!--{$arrForm[$key]|escape}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">明细-附属说明（<!--{$smarty.section.cnt.iteration}-->）</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{assign var=key value="sub_comment`$smarty.section.cnt.iteration`"}-->
									<!--{$arrForm[$key]|nl2br}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">明细-附属图片（<!--{$smarty.section.cnt.iteration}-->）</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{assign var=key value="sub_image`$smarty.section.cnt.iteration`"}-->
									<!--{if $arrFile[$key].filepath != ""}-->
									<img src="<!--{$arrFile[$key].filepath}-->" alt="<!--{$arrForm.name|escape}-->" /><br />
									<!--{/if}-->
									</td>
								</tr>
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">明细-附属放大图片（<!--{$smarty.section.cnt.iteration}-->）</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{assign var=key value="sub_large_image`$smarty.section.cnt.iteration`"}-->
									<!--{if $arrFile[$key].filepath != ""}-->
									<img src="<!--{$arrFile[$key].filepath}-->" alt="<!--{$arrForm.name|escape}-->" /><br />
									<!--{/if}-->
									</td>
								</tr>
								<!--▲商品<!--{$smarty.section.cnt.iteration}-->-->
								<!--{/section}-->

								<!--{if $smarty.const.OPTION_RECOMMEND == 1}-->
								<!--▼関連商品-->
								<!--{section name=cnt loop=$smarty.const.RECOMMEND_PRODUCT_MAX}-->
								<!--{assign var=recommend_no value="`$smarty.section.cnt.iteration`"}-->
								<tr>
									<td bgcolor="#f2f1ec" width="160" class="fs12n">关联商品(<!--{$smarty.section.cnt.iteration}-->)<br>
									<!--{if $arrRecommend[$recommend_no].main_list_image != ""}-->
										<!--{assign var=image_path value="`$arrRecommend[$recommend_no].main_list_image`"}-->
									<!--{else}-->
										<!--{assign var=image_path value="`$smarty.const.NO_IMAGE_DIR`"}-->
									<!--{/if}-->
									<img src="<!--{$smarty.const.SITE_URL}-->resize_image.php?image=<!--{$image_path|sfRmDupSlash}-->&width=65&height=65" alt="<!--{$arrRecommend[$recommend_no].name|escape}-->">
									</td>
									<td bgcolor="#ffffff" width="557" class="fs12n">
									<!--{if $arrRecommend[$recommend_no].name != ""}-->
									商品编号:<!--{$arrRecommend[$recommend_no].product_code_min}--><br>
									商品名称:<!--{$arrRecommend[$recommend_no].name|escape}--><br>
									说明:<br>
									<!--{$arrRecommend[$recommend_no].comment|escape}-->
									<!--{/if}-->
									</td>
								</tr>
								<!--{/section}-->
								<!--▲関連商品-->
								<!--{/if}-->
							</table>
							<table width="678" border="0" cellspacing="0" cellpadding="0" summary=" ">
								<tr>
									<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
									<td><img src="<!--{$TPL_DIR}-->img/contents/tbl_top.gif" width="676" height="7" alt=""></td>
									<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="5" alt=""></td>
								</tr>
								<tr>
									<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
									<td bgcolor="#e9e7de" align="center">
									<table border="0" cellspacing="0" cellpadding="0" summary=" ">
										<tr>
											<td>
											<a href="#" onMouseover="chgImg('<!--{$TPL_DIR}-->img/contents/btn_back_on.jpg','back')" onMouseout="chgImg('<!--{$TPL_DIR}-->img/contents/btn_back.jpg','back');" onclick="fnModeSubmit('confirm_return','',''); return false;"><img src="<!--{$TPL_DIR}-->img/contents/btn_back.jpg" width="123" height="24" alt="返回上一页" border="0" name="back"></a>
												<input type="image" onMouseover="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist_on.jpg',this)" onMouseout="chgImgImageSubmit('<!--{$TPL_DIR}-->img/contents/btn_regist.jpg',this)" src="<!--{$TPL_DIR}-->img/contents/btn_regist.jpg" width="123" height="24" alt="以此内容注册" border="0" name="subm" >
											</td>
										</tr>
									</table>
									</td>
									<td bgcolor="#cccccc"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="1" height="10" alt=""></td>
								</tr>
								<tr>
									<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/tbl_bottom.gif" width="678" height="8" alt=""></td>
								</tr>
							</table>
						</td>
						<td background="<!--{$TPL_DIR}-->img/contents/main_right.jpg"><img src="<!--{$TPL_DIR}-->img/common/_.gif" width="14" height="1" alt=""></td>
					</tr>
					<tr>
						<td colspan="3"><img src="<!--{$TPL_DIR}-->img/contents/main_bottom.jpg" width="706" height="14" alt=""></td>
					</tr>
					<tr><td height="30"></td></tr>

					</table>

					<!--▲登録テーブルここまで-->
					</form>
					<!--▲MAIN CONTENTS-->
					</td>
				</tr>
			</table>
			<!--▲CONTENTS-->
		</td>
	</tr>
</table>
<!--★★メインコンテンツ★★-->
