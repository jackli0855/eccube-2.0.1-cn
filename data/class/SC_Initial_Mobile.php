<?php
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

// {{{ requires
require_once(CLASS_PATH . "SC_Initial.php");

/**
 * モバイルアプリケーションの初期設定クラス.
 *
 * @author LOCKON CO.,LTD.
 * @version $Id: SC_Initial_Mobile.php 16582 2007-10-29 03:06:29Z nanasess $
 */
class SC_Initial_Mobile extends SC_Initial {

    // {{{ cunstructor

    /**
     * コンストラクタ.
     */
    function SC_Initial_Mobile() {
        parent::SC_Initial();

        define('MOBILE_SITE', true);
    }
}
?>