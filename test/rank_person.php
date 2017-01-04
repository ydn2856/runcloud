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
?>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>資料庫網頁建置</title>
</head>

<body>
<p>

</p>
<table  data-role="table" data-mode="columntoggle" class="table table-striped ui-responsive container text-center"  id="rank-table" border="1">
   <tr style="background:#82CAFA;">
    <td >排名</td>
    <td >姓名</td>
    <td >卡路里</td>
 
 
  </tr>
  <?php
  for($i=1;$i<=mysql_num_rows($result);$i++){
	$rs=mysql_fetch_array($result);
  //rs[1] 姓名 [2]卡路里 [3]名次
  ?>
  <tr>
	
    <td><?php echo $rs[3]?></td>
    <td><?php echo $rs[1]?></td>
    <td><?php echo $rs[2]?></td>

  </tr>
  
  <?php
}
  ?>
</table>
<p>&nbsp;</p>
</body>
</html>
		

	