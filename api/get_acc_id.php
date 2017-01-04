<?php

include('conn.php');

$acc=$_REQUEST['acc'];
$sql = "SELECT personal_id FROM personal WHERE account = '$acc'";
$result=mysql_query($sql) or die(mysql_error());
$row =mysql_fetch_assoc($result);
echo $row['personal_id'];