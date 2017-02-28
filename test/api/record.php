<?php
include('conn.php');

$query = "SELECT *FROM record WHERE record_id = '19'";

$result = mysql_query($query)
  or die ('Error in query');

$emparray = array();
while($row =mysql_fetch_assoc($result))
 {
     $emparray[] = $row;
 }
echo json_encode($emparray);
?>
