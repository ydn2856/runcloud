<html>
<head>
<script type="text/javascript">
	function test()
	{
		alert(
"<?php
$conn = mysql_connect('localhost','root','runcloud') ;//連接資料庫
    mysql_query("SET NAMES 'utf8'");//設定語系
    $db_selected=mysql_select_db('runcloud');
    $sql = "select * from testinput";//查詢整個表單
    $result = mysql_query($sql) ;
    while($row = mysql_fetch_array($result)){//印出資料
       echo $row['test_id'];
       echo $row['textmessages'];
    }

?>"
);
	}
</script>
</head>
<body>

	<input type="button" onclick=<?php echo 'test()';?>  value="測試用按鈕">
<?php
$conn = mysql_connect('localhost','root','runcloud') ;//連接資料庫
    mysql_query("SET NAMES 'utf8'");//設定語系
    $db_selected=mysql_select_db('runcloud');
    $sql = "select * from testinput";//查詢整個表單
    $result = mysql_query($sql) ;
    while($row = mysql_fetch_array($result)){//印出資料
       echo $row['test_id'];
       echo $row['textmessages'];
    }

?>


</body>
</html>

