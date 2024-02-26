<?php
if (isset($_POST['signin']))
{
	include "include/config.php";
	$username = $_POST['username'];	
	$password = $_POST['password'];	

	$sql = "SELECT * FROM user WHERE user_name = '{$username}' AND user_password = '{$password}'";
	$result = mysqli_query($conn, $sql);
	if(mysqli_num_rows($result))
	{
		session_start();
		while($row = mysqli_fetch_array($result))
		{	
			$_SESSION['username'] = $row['user_name'];
			$_SESSION['password'] = $row['user_password'];
			$_SESSION['mail'] = $row['user_mail'];
			$_SESSION['status'] ="login success";
			$_SESSION['status_msg'] ="you are login successfully";
			header("Location: index.php");
		}
	}
	else
	{
		$_SESSION['status'] ="not ";
		$_SESSION['status_msg'] ="error";
		$error = "Username and password does not match please try again";
        header("Location: index.php");
	}
}
?>