<!-- add to wishlist code start -->
<?php
session_start();
if(isset($_SESSION["username"]))
{   
	$fid = $_GET['fid'];
if (isset($fid))
 {
        if(isset($_SESSION['wishlist']))
        {
            $item_arry_id = array_column($_SESSION['wishlist'], "food_id");

            if(in_array($fid, $item_arry_id))
            {
                echo "<script> alert('product already added to wishlist')</script>";
            }

            else
            {
                $count = count($_SESSION['wishlist']);
                $food_item = array(
                    "food_id" => $fid,
                    "username" => $_SESSION["username"]
                );

                $_SESSION['wishlist'][$count] = $food_item;
                print_r($_SESSION['wishlist']);
                // header("Location: food.php");
            }
        }
        else
        {
            $food_item = array(
                "food_id" => $fid,
                "username" => $_SESSION["username"]
            );
            
            // create new sassion variable
            $_SESSION['wishlist'][0] = $food_item;
            print_r($_SESSION['wishlist']);
            // header("Location: food.php");
        }
            }
        }
else
{
    header("Location: login.php");
}
?>
<!-- add to wishlist code end -->