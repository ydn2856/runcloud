<?php
$conn = mysql_connect('localhost','root','runcloud');
	/*if(!$conn)
		{die("無法建立連線");}
	else
		{echo "成功建立連線<br>";}*/
	
	mysql_query("SET NAMES 'utf8'");
	
	
	$db_selected=mysql_select_db('runcloud');
	$result=mysql_query("select * from school");



?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>資料庫網頁建置</title>
</head>

<body>

<li>
<Select name="school_id" class="listitem" >
<?php
  for($i=1;$i<=mysql_num_rows($result);$i++){
	$rs=mysql_fetch_array($result);
  ?>


	
		<Option Value="<?php echo $i?>"><?php echo $rs[1]?></Option>
		

<?php
}
  ?>

</li>



<p>&nbsp;</p>
</body>
</html>