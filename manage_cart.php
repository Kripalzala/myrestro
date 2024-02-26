<!-- add to card code start -->
<?php
session_start();
if (isset($_SESSION["username"])) {
    $fid = $_GET['fid'];
    
    if (isset($fid)) 
    {
        if (isset($_SESSION['cart'])) 
        {
            $item_arry_id = array_column($_SESSION['cart'], "food_id");
            if (in_array($fid, $item_arry_id)) 
            {
                echo "<script> alert('product already added to cart')</script>";
            }
            else
            {
                $count = count($_SESSION['cart']);
                $food_item = array(
                    "food_id" => $fid,
                    "username" => $_SESSION["username"]
                );

                $_SESSION['cart'][$count] = $food_item;
                header("Location: food.php");
            }
        } 
        else 
        {
            $food_item = array(
                "food_id" => $fid,
                "username" => $_SESSION["username"]
            );

            // create new sassion variable
            $_SESSION['cart'][0] = $food_item;
            print_r($_SESSION['cart']);
            header("Location: food.php");
        }
    }
} else {
    header("Location: login.php");
}
?>
<!-- add to card code end -->