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
	
	
	$sql="truncate table school_rank";
	mysql_query($sql) or die("清空失敗");
	
	
	
	
	$result=mysql_query("select personal.personal_id,sum(record.calorie) , personal.nickname,school.school_id,school.school_name from record inner join (personal inner join school on personal.school_id = school.school_id)on personal.personal_id=record.personal_id  group by personal_id order by record.calorie desc;");
	
	$list_arr=array();

  for($i=1;$i<=mysql_num_rows($result);$i++){
	$rs=mysql_fetch_array($result);
  //rs  [1]personal_id [2]卡路里 [3]名字 [4]學校id [5]學校名稱
   
	///////
	
	$sql="insert into school_rank(school_place,school_score,school_name) values ('$i','$rs[1]','$rs[4]')";
	mysql_query($sql) or die("mysql_error");
	
}
 
	mysql_close($conn);
	
	
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