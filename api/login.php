<?php
  $conn = mysql_connect('localhost','root','runcloud') ;//連接資料庫
  if(!$conn)
        {die("無法建立連線");}
  else
        {echo "成功建立連結<br>";}

    mysql_query("SET NAMES 'utf8'");//設定語系
    $db_selected=mysql_select_db('runcloud');
    if (!$db_selected)
        {die("無法開啟runcloud".mysql_error($conn));}
    else
        {echo "成功開啟runcloud<br>";}
    $sql = "select * from personal where account='".$_GET['account']."'";//查詢整個表單
    echo $sql."<br>";
    $result = mysql_query($sql) ;
    $row_result=mysql_fetch_assoc($result);
    //如果表單中的名稱是有值的
    if(isset($_GET['account']) && isset($_GET['password']))
    {
    //將讀取出來的資料取出欄位名稱為username的資料，並且存在$admin
    	 $account=$row_result["account"];
     	 $password=$row_result["password"];
     	 if(($_GET['account']==$account) && ($_GET['password']==$password))
     	 {
      	    echo "歡迎".$_GET["account"]." 登入";
     	    header("Location:../index.html?v=0&acc=".$account );
     	 }
     	 else{
     	     header("Location:../login.html?v=1" );
     	 }
    }
    else{header("Location:../login.html?v=2");}


echo "測試讀取資料庫內容並輸出json：<br>";
echo json_encode($row_result);


?>
