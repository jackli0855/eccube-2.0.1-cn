<?php /* Smarty version 2.6.13, created on 2008-06-18 15:22:08
         compiled from step3.tpl */ ?>
<?php require_once(SMARTY_CORE_DIR . 'core.load_plugins.php');
smarty_core_load_plugins(array('plugins' => array(array('modifier', 'script_escape', 'step3.tpl', 42, false),array('modifier', 'escape', 'step3.tpl', 42, false),)), $this); ?>
<script type="text/javascript">
<!--
    // モードとキーを指定してSUBMITを行う。
    function fnModeSubmit(mode) {
        switch(mode) {
        case 'drop':
            if(!window.confirm('The data deleted once cannot be returned.\nStill, do you delete it?')){
                return;
            }
            break;
        default:
            break;
        }
        document.form1['mode'].value = mode;
        document.form1.submit();
    }
//-->
</script>

<table width="502" border="0" cellspacing="1" cellpadding="0" summary=" ">
<form name="form1" id="form1" method="post" action="<?php echo ((is_array($_tmp=((is_array($_tmp=$_SERVER['PHP_SELF'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
">
<input type="hidden" name="mode" value="<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_mode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
">
<input type="hidden" name="step" value="0">

<?php $_from = ((is_array($_tmp=$this->_tpl_vars['arrHidden'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array'); }if (count($_from)):
    foreach ($_from as $this->_tpl_vars['key'] => $this->_tpl_vars['item']):
?>
<input type="hidden" name="<?php echo ((is_array($_tmp=$this->_tpl_vars['key'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
" value="<?php echo ((is_array($_tmp=((is_array($_tmp=$this->_tpl_vars['item'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)))) ? $this->_run_mod_handler('escape', true, $_tmp) : smarty_modifier_escape($_tmp)); ?>
">
<?php endforeach; endif; unset($_from); ?>

<tr><td height="30"></td></tr>
<tr><td align="left" class="fs12st">■Initializing the DB</td></tr>
<tr><td align="left" class="fs12"><?php if (((is_array($_tmp=$this->_tpl_vars['tpl_db_version'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>Connection information：<?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_db_version'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp));  endif; ?></td></tr>
<tr><td align="left" class="fs12">The initialization of the DB begins. </td></tr>
<tr><td align="left" class="fs12">※If the table etc. have already been made, it is interrupted.</td></tr>
<?php if (((is_array($_tmp=$this->_tpl_vars['tpl_mode'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != 'complete'): ?>
<tr><td align="left" class="fs12"><input type="checkbox" id="skip" name="db_skip" <?php if (((is_array($_tmp=$this->_tpl_vars['tpl_db_skip'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) == 'on'): ?>checked<?php endif; ?>> <label for="skip">I don't initialize the DB.</label></td></tr>
<?php endif; ?>

<?php if (count ( ((is_array($_tmp=$this->_tpl_vars['arrErr'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) ) > 0 || ((is_array($_tmp=$this->_tpl_vars['tpl_message'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
<tr>
    <td bgcolor="#cccccc" class="fs12">
    <table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
        <tr>
            <td bgcolor="#ffffff" class="fs12" height="50">
            <?php echo ((is_array($_tmp=$this->_tpl_vars['tpl_message'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
<br>
            <span class="red"><?php echo ((is_array($_tmp=$this->_tpl_vars['arrErr']['all'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
</span>
            <?php if (((is_array($_tmp=$this->_tpl_vars['arrErr']['all'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)) != ""): ?>
            <input type="button" onclick="fnModeSubmit('drop');" value="I delete all existing data.">
            <?php endif; ?>
            </td>
        </tr>
    </table>
    </td>
</tr>
<?php endif; ?>
</table>

<table width="500" border="0" cellspacing="1" cellpadding="8" summary=" ">
    <tr><td height="20"></td></tr>
    <tr>
        <td align="center">
        <a href="#" onmouseover="chgImg('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/back_on.jpg','back')" onmouseout="chgImg('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/back.jpg','back')" onclick="document.form1['mode'].value='return_step2';document.form1.submit();return false;" /><img  width="105" src="../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/back.jpg"  height="24" alt="Return" border="0" name="back"></a>
        <input type="image" onMouseover="chgImgImageSubmit('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/next_on.jpg',this)" onMouseout="chgImgImageSubmit('../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/next.jpg',this)" src="../<?php echo ((is_array($_tmp=$this->_tpl_vars['default_dir'])) ? $this->_run_mod_handler('script_escape', true, $_tmp) : smarty_modifier_script_escape($_tmp)); ?>
/img/install/next.jpg" width="105" height="24" alt="Next" border="0" name="next" onClick="document.body.style.cursor = 'wait';">
        </td>
    </tr>
    <tr><td height="30"></td></tr>
</from>
</table>