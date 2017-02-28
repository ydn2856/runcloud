<?php
  $article_id=$_POST[article_id];
  $conn = mysql_connect('localhost','root','runcloud') ;//連接資料庫

    mysql_query("SET NAMES 'utf8'");//設定語系
    $db_selected=mysql_select_db('runcloud');

    $sql = "select *from comment where article_id='$article_id'";//查詢整個表單
    $result = mysql_query($sql) ;

    $emparray = array();
   while($row =mysql_fetch_assoc($result))
   {
       $emparray[] = $row;
   }
   echo json_encode($emparray);

   //close the db connection
   mysql_close($conn);
?>
