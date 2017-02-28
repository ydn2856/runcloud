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
	
	$result=mysql_query("select personal.personal_id,Max(record.calorie) , personal.nickname from record cross join personal where record.personal_id=personal.personal_id group by personal_id order by record.calorie desc");
	
	$list_arr=array();

  for($i=1;$i<=mysql_num_rows($result);$i++){
	$rs=mysql_fetch_array($result);
  //rs[1]卡路里 [2]名字 
    echo $rs[1]."<br>";
	echo $rs[2]."<br>";
	$sql="insert into personal_rank(nickname,personal_score,peraonal_place,self_evaluation) values ('$rs[2]','$rs[1]','$i','0')";
	mysql_query($sql) ;
	
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


	