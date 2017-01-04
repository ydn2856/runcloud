<?php
  $MyName=$_POST[myname];
  echo $MyName;
  
  $conn=mysql_connect("localhost","root","runcloud");
  mysql_select_db("runcloud");
  if(@mysql_select_db("runcloud"))
  {echo "資料庫存在";}else{echo "資料庫不存在";}

  mysql_query("SET NAMES 'UTF-8'");

  $sql="INSERT INTO testinput (textmessages) VALUES ('$MyName')";
  $result = mysql_query ($sql) or die (mysql_error());
 

  mysql_close($conn);
  echo "留言已送出";

?>
