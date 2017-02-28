<?php
include('conn.php');

$id=$_REQUEST['id'];

$query = "SELECT map_latitude,map_longitude FROM record WHERE record_id = '$id'";

$result = mysql_query($query)
  or die ('Error in query');

$emparray = array();
while($row =mysql_fetch_assoc($result))
 {
     $emparray[] = $row;
 }
echo json_encode($emparray);