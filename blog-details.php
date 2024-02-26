<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Ogani | Template</title>

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
    <?php include "include/header.php"; ?>    
    
    <!-- Blog Details Hero Begin -->
    <section class="blog-details-hero set-bg" data-setbg="img/blog/details/details-hero.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                <?php
                    include "include/config.php";
                    $bid = $_GET['bid'];
                    $sql = "SELECT * FROM blog WHERE blog_id = {$bid}";
                    $result = mysqli_query($conn, $sql);
                    if(mysqli_num_rows($result) >0 )
                    {
                        while($row = mysqli_fetch_assoc($result))
                        {
                    ?>
                    <div class="blog__details__hero__text">
                        <h2><?php echo $row['blog_title']; ?></h2>
                        <ul>
                            <li><?php echo $row['blog_admin']; ?></li>
                            <li><?php echo $row['blog_date']; ?></li>
                        </ul>
                    </div>
                    <?php }}?>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Hero End -->

    <!-- Blog Details Section Begin -->
    <section class="blog-details spad">
        <div class="container">
            <div class="row">
            <?php include "include/sidebar_widgets.php"; ?>
                <?php
                    include "include/config.php";
                    $bid = $_GET['bid'];
                    $sql1 = "SELECT * FROM blog WHERE blog_id = {$bid}";
                    $result1 = mysqli_query($conn, $sql1);
                    if(mysqli_num_rows($result1) >0 )
                    {
                        while($row1 = mysqli_fetch_assoc($result1))
                        {
                            $blog_category=$row1['blog_category'];
                    ?>
                <div class="col-lg-8 col-md-7 order-md-1 order-1">
                    <div class="blog__details__text">
                        <img src="admin/upload/blog_img/<?php echo $row1['blog_img']; ?>" alt="">
                        <p><?php echo $row1['blog_content']; ?></p>
                    </div>
                    <div class="blog__details__content">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="blog__details__author">
                                    <div class="blog__details__author__pic">
                                        <img src="admin/upload/admin/details-author.jpg" alt="">
                                    </div>
                                    <div class="blog__details__author__text">
                                        <!-- <h6>Michael Scofield</h6> -->
                                        <span><?php echo $row1['blog_admin']; ?></span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="blog__details__widget">
                                    <?php 
                                    $sql2 = "SELECT * FROM blog_category";
                                    $result2 = mysqli_query($conn, $sql2);
                                    if(mysqli_num_rows($result2) > 0)
                                    {
                                        while($row2 = mysqli_fetch_array($result2))
                                        {
                                            if($row2['bcat_id'] == $row1['blog_category'])
                                            {
                                    ?>
                                    <ul>
                                        <li><span>Categories:</span> <?php echo $row2['bcat_name']; ?></li>
                                        <li><span>Tags:</span> <?php echo $row1['blog_tag']; ?></li>
                                    </ul>
                                    <?php }}}?>
                                    <?php }} ?>
                                    <div class="blog__details__social">
                                        <a href="#"><i class="fa fa-facebook"></i></a>
                                        <a href="#"><i class="fa fa-twitter"></i></a>
                                        <a href="#"><i class="fa fa-google-plus"></i></a>
                                        <a href="#"><i class="fa fa-linkedin"></i></a>
                                        <a href="#"><i class="fa fa-envelope"></i></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Details Section End -->

    <!-- Related Blog Section Begin -->
    <section class="related-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title related-blog-title">
                        <h2>Post You May Like</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                    $sql3 = "SELECT * FROM blog 
                            LEFT JOIN blog_category ON blog.blog_category = blog_category.bcat_id
                            WHERE blog_category.bcat_id = {$blog_category}";
                    $result3 = mysqli_query($conn, $sql3);
                    if(mysqli_num_rows($result3) > 0 )
                    {
                        while($row3 = mysqli_fetch_assoc($result3))
                        {
                ?>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="admin/upload/blog_img/<?php echo $row3['blog_img']; ?>" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i> <?php echo $row3['blog_date']; ?></li>
                                <li><i class="fa fa-tag"></i>   <?php echo $row3['bcat_name']; ?></li>
                            </ul>
                            <h5><a href="blog-details.php?bid=<?php echo $row3['blog_id']; ?>"><?php echo $row3['blog_title']; ?></a></h5>
                            <p>
                                <?php $string = substr($row3['blog_content'], 0, 150);
                                                echo $string . "...";
                                ?>
                            </p>
                        </div>
                    </div>
            </div>
            <?php }} ?>
        </div>
    </section>
    <!-- Related Blog Section End -->
    <?php include "include/footer.php"; ?>

    <!-- Js Plugins -->
    <?php include "include/script.php"; ?>
</body>

</html>
