<?php
include('conn.php');

$id=$_REQUEST['id'];

$query = "SELECT *FROM record WHERE personal_id = '$id'";

$result = mysql_query($query)
  or die ('Error in query');

$emparray = array();
while($row =mysql_fetch_assoc($result))
 {
     $emparray[] = $row;
 }
echo json_encode($emparray);
?>
