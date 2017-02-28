<?php
	$account='bbb';
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
	
	$result=mysql_query("select school_rank.school_place,school_rank.school_score,school_rank.school_name,school.school_photo from school cross join school_rank where school_rank.school_name=school.school_name");
	
	$result2=mysql_query(" select personal.personal_id,school.school_id,personal.account,school.school_name from school cross join personal where school.school_id=personal.school_id and personal.account='$account'");
	//personal_id  school_id 帳號 學校名稱
	
	$rs=mysql_fetch_array($result2);
	
	
	$result3=mysql_query("select * from school_rank where school_name='$rs[3]'");
	
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
	$rs=mysql_fetch_array($result3);
  //rs[1] 名次  [2]卡路里 [3]名字
  
  ?>
	<div class="mbr-section mbr-section__container mbr-section__container--middle">
      <div class="container">
          <div class="row">
              <div class="col-xs-12 text-xs-center">
                  <h3 class="mbr-section-title display-2">校際排行榜</h3>
                  <small class="mbr-section-subtitle"><font color="#000000" style="font-style: normal;">(由計算後分數所排名)</font><br><font color="#000000" style="font-style: normal;"><strong>我的學校排名：<?php echo $rs[1]?></strong></font></small>
              </div>
          </div>
      </div>
    </div>



<?php

$m=date(m);
$d=date(d);
$H=date(H);

echo "刷新日期：";

echo date( "Y年m月d日H時", mktime($H-1,$m,$d) );
?>
<br>
<?php
  for($i=1;$i<=mysql_num_rows($result);$i++){
	$rs=mysql_fetch_array($result);
  ?>
			 
			 
			 <div class="col-xs-12  col-md-6 col-xl-3">
                <div class="mbr-plan card text-xs-center">
                    <div class="mbr-plan-header center bg-primary ">
                      <div class="mbr-plan-label"></div>
                      <div class="card-title">
                        <h2 class="mbr-plan-title">No.<?php echo $rs[0]?></h2>
                        <small class="mbr-plan-subtitle"><?php echo $rs[2]?></small>
                      </div>
                      <div align="center">
					  <img src="<?php echo $rs[3]?>" height="200px" width="200px" >
                      </div>
                    </div>
                    <div class="mbr-plan-body card-block">
                      <div class="mbr-plan-list"><ul class="list-group list-group-flush"><li class="list-group-item"><font size="7"><?php echo $rs[1]?>分</font></li></ul></div>

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