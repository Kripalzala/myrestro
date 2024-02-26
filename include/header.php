<?php
session_start();
if (isset($_SESSION['cart'])) {
    $count = count($_SESSION['cart']);
    $cart_status = "<li><a href='food-cart.php'><i class='fa fa-shopping-bag'></i><span>$count</span></a></li>";
} else {
    $cart_status = "<li><a href='food-cart.php'><i class='fa fa-shopping-bag'></i><span>0</span></a></li>";
}

if (isset($_SESSION['wishlist'])) {
    $count = count($_SESSION['wishlist']);
    $wishlist_status = "<li><a href='wishlist.php'><i class='fa fa-shopping-bag'></i><span>$count</span></a></li>";
} else {
    $wishlist_status = "<li><a href='wishlist.php'><i class='fa fa-shopping-bag'></i><span>0</span></a></li>";
}

?>

<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="index.php"><img src="img/restrologo.png" height="10px" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="food-cart.php"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">item: <span>$150.00</span></div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <div class="header__top__right__auth">
            <a href="login.php"><i class="fa fa-user"></i>Login</a>
        </div>
        <ul>
            <li class="active"><a href="index.php">Home</a></li>
            <li><a href="food.php">Food</a></li>
            <li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="food-details.php">Shop Details</a></li>
                    <li><a href="checkout.php">Check Out</a></li>
                    <li><a href="blog-details.php">Blog Details</a></li>
                </ul>
            </li>
            <li><a href="blog.php">Blog</a></li>
            <li><a href="contact.php">Contact</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> hello@gmail.com</li>
            <li>Free dish for all Order of ₹699</li>
        </ul>
    </div>
</div>
<!-- Humberger End -->

<!-- Header Section Begin -->
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> hello@gmail.com</li>
                            <li>Free dish for all Order of ₹699</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>
                        <div class="header__top__right__auth">
                            <a href="login.php"><i class="fa fa-user"></i> Login </a>
                        </div>
                        <div class="header__top__right__auth">
                            <a href="logout.php"><i class="fa fa-sign-out"></i> Logout</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="index.php"><img src="img/restrologo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li class="<?php if ($page == "home") {
                            echo 'active';
                        } ?>"> <a href="index.php">Home</a></li>
                        <li class="<?php if ($page == "food") {
                            echo 'active';
                        } ?>"> <a href="food.php">Food</a></li>
                        <li> <a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="food-details.php">Shop Details</a></li>
                                <li><a href="food-cart.php">Shoping Cart</a></li>
                                <li><a href="checkout.php">Check Out</a></li>
                                <li><a href="blog-details.php">Blog Details</a></li>
                            </ul>
                        </li>
                        <li class="<?php if ($page == "blog") {
                            echo 'active';
                        } ?>"><a href="blog.php">Blog</a></li>
                        <li class="<?php if ($page == "contant") {
                            echo 'active';
                        } ?>"><a
                                href="contact.php">Contact</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <?php
                        echo $wishlist_status;
                        ?>
                        <?php
                        echo $cart_status;
                        ?>
                    </ul>
                    <div class="header__cart__price">item: <span>$150.00</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->