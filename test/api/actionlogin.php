<?php
include('conn.php');

$account = $_POST['account'];
$password = $_POST['password'];
//$refer = $_POST['refer'];

if ($account == '' || $password == '')
{
    // No login information
    header('Location: ../login.html?empty');
}
else
{

    $query = "SELECT personal_id, MD5(UNIX_TIMESTAMP() + personal_id + RAND(UNIX_TIMESTAMP()))
        guid FROM personal WHERE account = '$account' AND password = '$password'";

    $result = mysql_query($query)
    	or die ('Error in query');

    if (mysql_num_rows($result))
    {
        $row = mysql_fetch_row($result);
        // Update the user record
        $query = "UPDATE personal SET guid = '$row[1]' WHERE personal_id = $row[0]";

        mysql_query($query)
        	or die('Error in query');

        // Set the cookie and redirect
        // setcookie( string name [, string value [, int expire [, string path
        // [, string domain [, bool secure]]]]])
        // Setting cookie expire date, 6 hours from now
        $cookieexpiry = (time() + 21600);
        setcookie("session_id", $row[1], $cookieexpiry);

        // if (empty($refer) || !$refer)
        // {
        //     $refer = '../index.html';
        // }

        header('Location: ../index.html?v=0');
    }
    else
    {
        // Not authenticated
        header('Location: ../login.html?false=0');
    }
}
?>
