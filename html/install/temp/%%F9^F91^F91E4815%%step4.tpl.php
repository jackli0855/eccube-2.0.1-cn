<?php /* Smarty version 2.6.13, created on 2008-06-18 15:28:35
         compiled from step4.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'step4.tpl', 23, false),array('modifier', 'escape', 'step4.tpl', 23, false),)), $this); ?>
<table width="502" border="0" cellspacing="1" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<?php echo ((is_array($_tmp=((is_array($_tmp=$_SERVER['PHP_SELF'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
">
<input type="hidden" name="mode" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_mode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
<input type="hidden" name="step" value="0">
<input type="hidden" name="db_skip" value=<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_db_skip'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
>
<input type="hidden" name="senddata_site_url" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_site_url'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
<input type="hidden" name="senddata_shop_name" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_shop_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
<input type="hidden" name="senddata_cube_ver" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_cube_ver'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
<input type="hidden" name="senddata_php_ver" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_php_ver'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
<input type="hidden" name="senddata_db_ver" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_db_ver'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
<?php $_from = ((is_array($_tmp=$this->_tpl_vars['arrHidden'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?>
<input type="hidden" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
">
<?php endforeach; endif; unset($_from); ?>

<tr><td height="30"></td></tr>
<tr><td align="left" class="fs12st">■About the site information</td></tr>
<tr><td align="left" class="fs12">Please offer the information for improvement and the debugging of "EC-CUBE".</td></tr>
<tr>
    <td bgcolor="#cccccc" class="fs12">
    <table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
        <tr>
            <td bgcolor="#ffffff" class="fs12" height="50">
                - URL：<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_site_url'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<br/>
                - Shop：<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_shop_name'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<br/>
                - EC-CUBE：<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_cube_ver'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<br/>
                - PHP：<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_php_ver'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<br/>
                - DB：<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_db_ver'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<br/>
            </td>
        </tr>
    </table>
    </td>
</tr>
<tr><td align="left" class="fs12"><input type="radio" id="ok" name="send_info" checked value=true><label for="ok">はい(推奨)</label>　<input type="radio" id="ng" name="send_info" value=false><label for="ng">いいえ</label></td></tr>
</table>

<table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
    <tr><td height="20"></td></tr>
    <tr>
        <td align="center">
        <a href="#" onmouseover="chgImg('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/back_on.jpg','back')" onmouseout="chgImg('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/back.jpg','back')" onclick="document.form1['mode'].value='return_step3';document.form1.submit();return false;" /><img  width="105" src="../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/back.jpg"  height="24" alt="Return" border="0" name="back"></a>
        <input type="image" onMouseover="chgImgImageSubmit('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/next_on.jpg',this)" onMouseout="chgImgImageSubmit('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/next.jpg',this)" src="../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/next.jpg" width="105" height="24" alt="Next" border="0" name="next">
        </td>
    </tr>
    <tr><td height="30"></td></tr>
</from>
</table>