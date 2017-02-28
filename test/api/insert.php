<?php
$a=$_POST['name1'];
$b=$_POST['name2'];
$c=date("Y-m-d H:i:s");
$conn = mysql_connect("localhost","root","runcloud");
mysql_select_db("runcloud");
 if(@mysql_select_db("runcloud"))
        {
         echo "資料庫存在";
        }else{
               echo "資料庫不存在";
        }
mysql_query("SET NAMES 'UTF8'");
$sql="INSERT INTO record(distance,calorie,date) VALUES ('$a','$b','$c')";
$result=mysql_query($sql) or die(mysql_error());
if (@$result)
{return 200;}
mysql_close($conn);
echo "successfully";
?>
