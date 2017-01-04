<?php
  header("Content-Type:text/html; charset=utf-8");
  include("conn.php");
  $account=$_POST[account];
  $text=$_POST[text];
  $time=$_POST[time];
  $class=$_POST[_class];
  $title=$_POST[title];

  mysql_query("SET NAMES UTF8");

  $sql="INSERT INTO article (account,textmessage,ttime,class,title) VALUES ('$account','$text','$time','$class','$title')";
  echo "/n".$sql;
  $result = mysql_query ($sql) or die (mysql_error());

  mysql_close($conn);
?>
