<?php
  $conn=mysql_connect("localhost","root","runcloud");
  mysql_select_db("runcloud");
  if(@mysql_select_db("runcloud"))
  {echo "資料庫存在";}else{echo "資料庫不存在";}

  mysql_query("SET NAMES 'UTF-8'");

$account=$_GET['account'];
$password=$_GET['password'];
$school_id=$_GET['school_id'];
$group_data_id=$_GET['group_data_id'];
$birth=$_GET['birth'];
$height=$_GET['height'];
$weight=$_GET['weight'];
$sex=$_GET['sex'];
$personal_photo=$_GET['personal_photo'];
$nickname=$_GET['nickname'];
$personal_place=$_GET['personal_place'];

  if(isset($_GET['account']) && isset ($_GET['password']))
{

    $sql = "select * from personal";//查詢整個表單
    $result = mysql_query($sql);
    $list_arr=array();
    $i=0;
    $a=0;
    while($row = mysql_fetch_array($result)){//印出資料
        echo $row['record_id']."<br>";
	if ($row['account']==$account){$a=$a+1;}

        $list_arr[$i]=$row;
        $i=$i+1;

    }




if ($a==0)
{
 $sql2="INSERT INTO personal (account,password,school_id,group_data_id,birth,height,weight,sex,personal_photo,nickname,personal_place) VALUES ('$account','$password','$school_id','$group_data_id','$birth','$height','$weight','$sex','$personal_photo','$nickname','$personal_place')";


 $result = mysql_query ($sql2) or die (mysql_error());


  mysql_close($conn);
  echo "註冊成功";
  header("Location:../index.html?v=4" );
}
else {
  echo "帳號已存在";
  header("Location:../login.html?v=3" );
}
}
?>
