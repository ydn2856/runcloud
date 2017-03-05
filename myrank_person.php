<?php
	$conn = mysql_connect('localhost','root','runcloud');
	/*if(!$conn)
		{die("無法建立連線");}
	else
		{echo "成功建立連線<br>";}*/
	
	mysql_query("SET NAMES 'utf8'");
	
	
	$db_selected=mysql_select_db('runcloud');
	/*if (!$db_selected)
		{die( "無法開啟runcloud".mysql_error($conn));}
	else
		{echo "成功開啟runcloud<br>";}*/
	
	$result=mysql_query("select * from personal_rank");
	
	$list_arr=array();
	/*$i=0;

	while($row = mysql_fetch_array($result))
	{
		echo $row['personal_rank_id']."<br>";
		echo $row['nickname']."<br>";
		echo $row['personal_score']."<br>";
		$list_arr[$i]=$row;
		$i=$i+1;
		if($i==10)break;
		
	}
	*/
	//echo json_encode($list_arr);
	
	if(!empty($_POST['data1'])){
    $value = array("status"=>"1","msg"=>"保存成功");
    echo json_encode($value);
}
else {
    $value = array("status"=>"0","msg"=>"保存失败");
    echo json_encode($value);
}

文／GBaby大熊（簡書作者）
原文鏈接：http://www.jianshu.com/p/c6cc84b556ff
著作權歸作者所有，轉載請聯繫作者獲得授權，並標註“簡書作者”。
	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>資料庫網頁建置</title>
</head>

<body>













<p>&nbsp;</p>
</body>
</html>