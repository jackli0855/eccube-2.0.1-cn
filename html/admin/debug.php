<?php
    require_once("./require.php");
	error_reporting(E_ALL); ini_set('display_errors','On'); 
	
    // DBの文字コード情報の取得
    $objQuery = new SC_Query();
    $arrRet = $objQuery->getAll("SHOW VARIABLES LIKE 'char%'");
    print(getTableTag($arrRet));
    
    $arrRet = $objQuery->getAll("SHOW VARIABLES LIKE 'version'");
    print(getTableTag($arrRet));
    
    // テンプレートが読み込めるか確認する。
    $objView = new SC_AdminView();
    $path = $objView->_smarty->template_dir;
    
    if(file_exists($path)) {
    	print("exists " . $path . "<br>");
    } else {
    	print("not exists " . $path . "<br>");
    }
    	
    if(is_readable($path)) {
    	print("readable " . $path . "<br>");
    } else {
    	print("not readable " . $path . "<br>");
    }
    
    print("realpath " . realpath(dirname( __FILE__)));
    
    // PHP情報の表示
    phpinfo();
    
    /**
     * 配列をテーブルタグで出力する。
     * 
     * @return string
     */
    function getTableTag($array) {
        $html = "<table>";
        $html.= "<tr>";
        foreach($array[0] as $key => $val) {
            $html.="<th>$key</th>";
        }
        $html.= "</tr>";
        
        $cnt = count($array);
        
        for($i = 0; $i < $cnt; $i++) {
            $html.= "<tr>";         
            foreach($array[$i] as $val) {
                $html.="<td>$val</td>";
            }
            $html.= "</tr>";
        }
        return $html;
    }
?>