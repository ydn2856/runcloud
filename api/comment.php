<?php
  header("Content-Type:text/html; charset=utf-8");
  include("conn.php");
  $account=$_POST[account];
  $text=$_POST[text];
  $time=$_POST[time];
  $article_id=$_POST[article_id];

  mysql_query("SET NAMES UTF8");

  $sql="INSERT INTO comment (account,textmessage,ttime,article_id) VALUES ('$account','$text','$time','$article_id')";
  echo "/n".$sql;
  $result = mysql_query ($sql) or die (mysql_error());

  mysql_close($conn);
?>
