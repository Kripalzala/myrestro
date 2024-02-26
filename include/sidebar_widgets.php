<div class="col-lg-4 col-md-5">
                    <div class="blog__sidebar">
                        <div class="blog__sidebar__search">
                            <form action="#">
                                <input type="text" placeholder="Search...">
                                <button type="submit"><span class="icon_search"></span></button>
                            </form>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Categories</h4>
                            <?php
                            include  'include/config.php';
                            $sql = "SELECT * FROM blog_category";
                            $result = mysqli_query($conn, $sql);
                            if (mysqli_num_rows($result) > 0 )
                            {
                                while($row = mysqli_fetch_assoc($result))
                                {
                            ?>
                            <ul>
                            <li><a href="blog_category.php?bcat_id=<?php echo $row['bcat_id']; ?>"><?php echo $row['bcat_name'];?></php></a></li>
                            <?php }} ?>
                            <li><a href="blog.php">All</php></a></li>  
                            </ul>
                        </div>
                        <div class="blog__sidebar__item">
                            <h4>Recent blog</h4>
                            <?php
                                    include 'include/config.php';
                                    $limit = 4;
                                    $sql1 = "SELECT * FROM blog 
                                            LEFT JOIN blog_category ON blog.blog_category = blog_category.bcat_id
                                            ORDER BY blog.blog_id DESC LIMIT {$limit}";
                                    $result1 = mysqli_query($conn, $sql1);
                                    if (mysqli_num_rows($result1) > 0) {
                                        while ($row1 = mysqli_fetch_assoc($result1)) {
                                 ?>
                            <div class="blog__sidebar__recent">
                                <a href="blog-details.php?bid=<?php echo $row1['blog_id']; ?>" class="blog__sidebar__recent__item">
                                    <div class="blog__sidebar__recent__item__pic">
                                        <img src="admin/upload/blog_img/<?php echo $row1['blog_img']; ?>" alt="" width="100px">
                                    </div>
                                    <div class="blog__sidebar__recent__item__text">
                                        <h6><?php echo $row1['blog_title']; ?><br/> <?php echo $row1['bcat_name']; ?></h6>
                                        <span><?php echo $row1['blog_date']; ?></span>
                                    </div>
                                </a>
                            </div>
                            <?php }} ?>
                        </div>
                    </div>
                </div>