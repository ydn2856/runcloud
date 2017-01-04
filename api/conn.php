<?php
  header("Content-Type:text/html; charset=utf-8");
  $conn=mysql_connect("localhost","root","runcloud");
  mysql_select_db("runcloud");
  if(@mysql_select_db("runcloud"))
  {}else{echo "資料庫不存在";}

  mysql_query("SET NAMES UTF8");

?>
