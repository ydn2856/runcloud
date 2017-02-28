<?php
	$account = $_POST['account'];
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
	
	$result=mysql_query("select * from personal where account='$account'");
	
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
	$rs=mysql_fetch_array($result);
	$result2=mysql_query("select * from personal_rank where nickname='$rs[10]'");
	
	

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>資料庫網頁建置</title>
</head>

<body>
  <?php
	$rs=mysql_fetch_array($result2);
  //rs[1] 姓名 [2]卡路里 [3]名次
  ?>
<div class="mbr-section mbr-section__container mbr-section__container--middle">
      <div class="container">
          <div class="row">
              <div class="col-xs-12 text-xs-center">
                  <h3 class="mbr-section-title display-2">校內排行榜</h3>
                  <small class="mbr-section-subtitle"><font color="#000000" style="font-style: normal;">(由計算後分數所排名)</font><br><font color="#000000" style="font-style: normal;"><strong>我的排名：<?php echo $rs[3]?></strong></font></small>
              </div>
          </div>
      </div>
    </div>

<p>&nbsp;</p>
</body>
</html>