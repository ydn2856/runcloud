<?php
	$account = $_GET["acc"];
	
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
	
	$result2=mysql_query("select personal.personal_id,Max(record.calorie),personal.nickname,personal.account from record cross join personal where record.personal_id=personal.personal_id and account='$account' group by personal_id order by record.calorie desc");
	//資料表 personal_id  卡路里加總 暱稱 帳號
	$list_arr=array();
	
	$rs=mysql_fetch_array($result2);
	
	$result3=mysql_query("select * from personal_rank where nickname='$rs[2]' and personal_score='$rs[1]'");
	
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

<?php
	$rs=mysql_fetch_array($result3);
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

	
<?php

$m=date(m);
$d=date(d);
$H=date(H);

echo "刷新日期：";

echo date( "Y年m月d日H時", mktime($H-1,$m,$d) );;
?>



<table  data-role="table" data-mode="columntoggle" class="table table-striped ui-responsive container text-center"  id="rank-table" >
   <tr style="background:#F79545 ;">
    <td  align="center"><font size = "5">排名</font></td>
    <td  align="center"><font size = "5">姓名</font></td>
    <td  align="center"> <font size = "5">卡路里</font></td>
 
 
  </tr>
  <?php
  for($i=1;$i<=mysql_num_rows($result);$i++){
	$rs=mysql_fetch_array($result);
  //rs[1] 姓名 [2]卡路里 [3]名次
  ?>
  <tr>
	
    <td align="center"><font size = "4"><?php echo $rs[3]?></font></td>
    <td align="center"><font size = "4"><?php echo $rs[1]?></font></td>
    <td align="center"><font size = "4"><?php echo $rs[2]?></font></td>

  </tr>
  
  <?php
}
  ?>
</table>
<p>&nbsp;</p>
</body>
</html>
		

	