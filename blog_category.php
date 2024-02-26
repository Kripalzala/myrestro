<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Blog Category</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>

<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <?php
    $page = 'blog';
    include "include/header.php";
    ?>
    <!-- Breadcrumb Section Begin -->
    <section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <?php 
                        $bcat_id = $_GET['bcat_id'];
                        include "include/config.php";
                        $sql = "SELECT * FROM blog_category 
                                LEFT JOIN blog ON blog.blog_category = blog_category.bcat_id
                                WHERE blog_category.bcat_id = {$bcat_id}";
                        $result = mysqli_query($conn, $sql);
                        $row = mysqli_fetch_assoc($result);
                        ?>
                        <h2><?php echo $row['bcat_name']; ?></h2>
                        <div class="breadcrumb__option">
                            <a href="./index.html">Home</a>
                            <span>Blog</span>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Breadcrumb Section End -->

    <!-- Blog Section Begin -->
    <section class="blog spad">
        <div class="container">
            <div class="row">
            <?php include "include/sidebar_widgets.php"; ?>
                <div class="col-lg-8 col-md-7">
                    <div class="row">
                        <?php
                        $sql3 = "SELECT * FROM blog_category 
                        LEFT JOIN blog ON blog.blog_category = blog_category.bcat_id
                        WHERE blog_category.bcat_id = {$bcat_id}";
                        $result3 = mysqli_query($conn, $sql3);
                        if(mysqli_num_rows($result3) > 0 )
                        {
                            while($row3 = mysqli_fetch_assoc($result3))
                            {
                                ?>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="blog__item">
                                        <div class="blog__item__pic">
                                            <img src="admin/upload/blog_img/<?php echo $row3['blog_img']; ?>" alt="">
                                        </div>
                                        <div class="blog__item__text">
                                            <ul>
                                                <li><i class="fa fa-calendar-o"></i>
                                                    <?php echo $row3['blog_date']; ?>
                                                </li>
                                            </ul>
                                            <h5><a href="blog-details.php?bid=<?php echo $row3['blog_id']; ?>">
                                                    <?php echo $row3['blog_title']; ?>
                                                </a></h5>
                                            <p>
                                            <?php $string = substr($row3['blog_content'], 0, 150);
                                                echo $string . "...";?>
                                            </p>
                                            <a href="blog-details.php?bid=<?php echo $row3['blog_id']; ?>" class="blog__btn">READ MORE <span class="arrow_right"></span></a>
                                        </div>
                                    </div>
                                </div>
                            <?php }
                        } ?>
                        <!-- <div class="col-lg-12">
                            <div class="product__pagination blog__pagination">
                                <a href="#">1</a>
                                <a href="#">2</a>
                                <a href="#">3</a>
                                <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                            </div>
                        </div> -->
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
    <?php include "include/footer.php"; ?>
    <!-- Js Plugins -->
    <?php include "include/script.php"; ?>

</body>
</html>