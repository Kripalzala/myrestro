<?php
if (isset($_POST['singup'])) 
{
	include "include/config.php";
	$username = mysqli_real_escape_string($conn, $_POST['username']);
	$email = mysqli_real_escape_string($conn, $_POST['email']);
	$password = mysqli_real_escape_string($conn, $_POST['password']);
	$cpassword = mysqli_real_escape_string($conn, $_POST['cpassword']);

	$sql1 = "SELECT * FROM user WHERE user_name = '{$username}'";
	$result1 = mysqli_query($conn, $sql1);
	if(mysqli_num_rows($result1) > 0)
	{
		while($row1 = mysqli_fetch_array($result1))
		{
			$exist_user = "Username already exists please try different username";
		}
	}
	else if('{$cpassword}' == '{$password}')
	{
		$confirm_pass_error = "Confirm password do not match please try again";
	}
	else 
	{	
		$sql = "INSERT into user(user_name, user_mail, user_password)
        VALUES ('{$username}', '{$email}', '{$password}')";
		$result = mysqli_query($conn, $sql);
		session_start();
		$_SESSION['username'] = $username;
		$_SESSION['email'] = $email;
		$_SESSION['password'] = $password;
		header ("location: index.php");
	}
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Sign Up</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="login_assets/images/icons/favicon.ico" />
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/vendor/animate/animate.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/vendor/select2/select2.min.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="login_assets/css/util.css">
	<link rel="stylesheet" type="text/css" href="login_assets/css/main.css">
	<!--===============================================================================================-->
</head>

<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<form action="<?php $_SERVER['PHP_SELF']; ?>" method="POST"
					class="login100-form validate-form p-l-55 p-r-55 p-t-178">
					<span class="login100-form-title">
						Sign Up
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter username">
						<input class="input100" type="text" name="username" placeholder="Username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter Email">
						<input class="input100" type="text" name="email" placeholder="Email">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate="Please enter password">
						<input class="input100" type="text" name="password" placeholder="password">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="Please enter Confirm password">
						<input class="input100" type="password" name="cpassword" placeholder="Confirm Password">
						<span class="focus-input100"></span>
					</div>
					<?php
					if (!empty($exist_user)) 
					{
						echo "<p style='color:red;'>$exist_user</p>";
					}
					if (!empty($error)) 
					{
						echo "<p style='color:red;'>$error</p>";
					}			
					if (!empty($confirm_pass_error)) 
					{
						echo "<p style='color:red;'>$confirm_pass_error</p>";
					} 
					?>
					<div class="text-right p-t-13 p-b-23">
						<span class="txt1">
							Forgot
						</span>

						<a href="#" class="txt2">
							Username / Password?
						</a>
					</div>

					<div class="container-login100-form-btn">
						<button type="submit" name="singup" class="login100-form-btn">
							<a class="txt3 text-light">
								Sign up
							</a>
						</button>
					</div>
					<div class="flex-col-c p-t-20 p-b-40">
						<span class="txt1 p-b-9">
						Already have an account?
						</span>
					<a href="login.php" class="txt3">
							login now
					</a>
				</form>
			</div>
		</div>
	</div>


	<!--===============================================================================================-->
	<script src="login_assets/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="login_assets/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="login_assets/vendor/bootstrap/js/popper.js"></script>
	<script src="login_assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="login_assets/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="login_assets/vendor/daterangepicker/moment.min.js"></script>
	<script src="login_assets/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="login_assets/vendor/countdowntime/countdowntime.js"></script>
	<!--===============================================================================================-->
	<script src="login_assets/js/main.js"></script>

</body>

</html>