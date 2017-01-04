<html>
<head>
<script type="text/javascript">
<?php
  $conn = mysql_connect('localhost','root','runcloud') ;//連接資料庫
//  if(!$conn)
//        {die("無法建立連線");}
// else
//        {echo "成功建立連結<br>";}

    mysql_query("SET NAMES 'utf8'");//設定語系
    $db_selected=mysql_select_db('runcloud');
//    if (!$db_selected)
//        {die("無法開啟runcloud".mysql_error($conn));}
//    else
//        {echo "成功開啟runcloud<br>";}
    $sql = "select * from testinput";//查詢整個表單
    $result = mysql_query($sql) ;
    while($row = mysql_fetch_array($result)){//印出資料
//        echo $row['test_id']."<br>";
        echo $row['textmessages']."<br>";

    }
?>

