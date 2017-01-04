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
	
	$result=mysql_query("select * from school_rank");
	
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
<?php
  for($i=1;$i<=mysql_num_rows($result);$i++){
	$rs=mysql_fetch_array($result);
  ?>
			 
			 
			 <div class="col-xs-12  col-md-6 col-xl-3">
                <div class="mbr-plan card text-xs-center">
                    <div class="mbr-plan-header card-block bg-primary">
                      <div class="mbr-plan-label"></div>
                      <div class="card-title">
                        <h2 class="mbr-plan-title">No.<?php echo $rs[1]?></h2>
                        <small class="mbr-plan-subtitle"><?php echo $rs[3]?></small>
                      </div>
                      <div class="card-text">
<?php
if ($rs[3]=='台中科大'){
	
	
	
}
else if($rs[3]=='北科大'){
	
	
	
}
	

else if($rs[3]=='北科大'){
	
	
	
}

	  
					  
					  
?>
                          <img src="img/nutc_logo1.gif" height="250px" width="250px">
                      </div>
                    </div>
                    <div class="mbr-plan-body card-block">
                      <div class="mbr-plan-list"><ul class="list-group list-group-flush"><li class="list-group-item"><?php echo $rs[2]?></li></ul></div>

                    </div>
                </div>
            </div>

  
 
   
    
    

 
  
  <?php
}
  ?>
</table>
<p>&nbsp;</p>
</body>
</html>