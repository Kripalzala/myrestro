<?php

include "include/config.php";

session_start();

session_unset();

$result=session_destroy();
if($result)
{
    session_start();
    $_SESSION['status'] ="logout success";
    $_SESSION['status_msg'] ="logout successfully";
header("location: http://localhost/restro/index.php");
}
?>
