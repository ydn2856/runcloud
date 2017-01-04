<?php
  $cookieexpiry = (time() - 21600);
setcookie ("session_id","",$cookieexpiry);
  //setcookie("session_id","",$cookieexpiry);
  echo "logout";
?>
