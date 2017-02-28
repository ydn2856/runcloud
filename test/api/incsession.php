<?php
include('conn.php');

// Check for a cookie, if none go to login page
if (!isset($_COOKIE['session_id']))
{
    echo "empty";
}

// Try to find a match in the database
$guid = $_COOKIE['session_id'];

$query = "SELECT account FROM personal WHERE guid = '$guid'";

$result = mysql_query($query);

if (!mysql_num_rows($result))
{
    // No match for guid
    echo "false";
}else {
  $row = mysql_fetch_row($result);
  echo $row[0];
}
?>
