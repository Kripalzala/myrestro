-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2024 at 07:55 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restro`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(30) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `blog_id` int(30) NOT NULL,
  `blog_title` varchar(255) NOT NULL,
  `blog_content` longtext NOT NULL,
  `blog_admin` varchar(255) NOT NULL,
  `blog_category` varchar(255) NOT NULL,
  `blog_tag` varchar(255) NOT NULL,
  `blog_img` varchar(255) NOT NULL,
  `blog_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_title`, `blog_content`, `blog_admin`, `blog_category`, `blog_tag`, `blog_img`, `blog_date`) VALUES
(12, 'blog01', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '1', 'new, best, blog', '1706336738-sanket-shah-eEWlcfydzQ4-unsplash.jpg', '2024-01-27'),
(13, 'blog02', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '2', 'new, best, blog', '1706336774-azmaan-baluch-tG9eGRhaSXE-unsplash.jpg', '2024-01-27'),
(14, 'blog03', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '5', 'new, best, blog', '1706336785-kabir-cheema-8T9AVksyt7s-unsplash.jpg', '2024-01-27'),
(15, 'blog04', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '6', 'new, best, blog', '1706336796-gayatri-malhotra-mlwXrYYAOms-unsplash.jpg', '2024-01-27'),
(16, 'blog05', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '7', 'new, best, blog', '1706336839-prchi-palwe-wwgulilpmlg-unsplash.jpg', '2024-01-27'),
(17, 'blog06', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '8', 'new, best, blog', '1706336942-zaid-hussain-sayed-HGPlnmepMAA-unsplash.jpg', '2024-01-27'),
(18, 'blog07', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '1', 'new, best, blog', '1706336850-vishnu-vk-Y8D0t9baHJw-unsplash.jpg', '2024-01-27'),
(19, 'blog08', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '2', 'new, best, blog', '1706336956-sahand-hoseini-R2H4asDtjvY-unsplash.jpg', '2024-01-27'),
(22, 'blog09', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '5', 'new, best, blog', '1706337043-sean-bernstein-ACVu-cqSmw4-unsplash.jpg', '2024-01-27'),
(23, 'blog10', '    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Eum maiores ea odio in pariatur ut obcaecati. Atque distinctio repellendus asperiores corporis quia officiis provident alias labore maiores ullam necessitatibus minus, saepe quos error dolorum quo veniam mollitia nobis nostrum consequatur amet sint accusantium. Aliquid corrupti modi quas aliquam illum accusamus ab dignissimos ea perspiciatis beatae eaque libero eos neque iure pariatur nulla excepturi quasi, et alias assumenda. Voluptates, ea. Cupiditate dicta alias inventore natus. Numquam modi reiciendis nemo dolore voluptas atque voluptatum, ut maxime non vel, et officia doloribus, ea iste quasi? A temporibus reprehenderit sit impedit ducimus illo vero officia iusto dicta similique, laborum explicabo saepe exercitationem eligendi nam doloremque maxime. Magni numquam beatae quos dolores laboriosam accusantium voluptatum ullam, id explicabo obcaecati quidem, molestias magnam placeat ad. \r\n    \r\n    Aliquid perferendis atque, eligendi ipsa debitis repudiandae est similique molestiae? Neque a quia ab, qui accusantium minima voluptas? Nihil sint qui esse illo minima unde nobis iure dignissimos optio eaque totam fugiat molestias inventore magnam deserunt, quae labore odit aspernatur quidem tenetur! Nihil quidem temporibus voluptas hic voluptatem fugit laudantium delectus! \r\n    \r\n    Inventore, sequi ad rerum minima maiores laudantium sed corrupti ut consectetur voluptatem consequuntur quos veritatis, nihil corporis, debitis quia ratione velit neque numquam nulla recusandae quaerat aliquid nesciunt voluptatum.\r\n    \r\n    Facere officiis perferendis vel quisquam fugit molestias commodi rerum hic similique vero earum cupiditate aliquam magni voluptas laudantium quas praesentium explicabo libero neque, minima et. Aperiam cumque natus iure! Unde, adipisci. Iure et beatae recusandae! Vero exercitationem ipsam, ipsa totam harum aut officiis animi, esse nihil accusamus similique explicabo, libero sunt consequatur? Aut facere nulla sit ducimus provident excepturi voluptates est vitae eligendi earum qui at harum fuga doloremque itaque sunt, nostrum necessitatibus non distinctio, dolore sed quas quae modi. Deleniti voluptate dolore quos nihil repellendus facilis, molestias quam autem ab quod dolores fugit rem inventore ipsa repellat suscipit sapiente velit excepturi perspiciatis? Ab deleniti velit iusto, sapiente ducimus, a voluptate eveniet, voluptates quia veniam minus cum vitae. Rem voluptates odit fuga quos eos vero doloremque dolore ex quasi sed placeat adipisci temporibus suscipit sint, corrupti porro ipsa doloribus. Reiciendis voluptatibus libero corrupti optio cupiditate accusantium natus cum, rerum architecto, blanditiis aut dolor repellendus distinctio provident aspernatur pariatur voluptates repudiandae ipsa velit porro, tempore placeat maiores? Incidunt rem tenetur vitae aut nesciunt eaque architecto ipsam neque perspiciatis ipsum, nihil libero dolores! Quis ratione possimus sapiente aliquam alias maxime minima quibusdam! Illo, sequi magnam dicta iusto maiores sit, debitis, optio porro amet veniam minus quo enim similique? Dolore, minus sunt ipsam consectetur sequi, amet modi molestias optio blanditiis ea fuga deleniti praesentium dicta debitis molestiae eius deserunt, illum facere dolorem. Eveniet non eos accusamus?\r\n    \r\n    A inventore, iure tenetur est quia eligendi expedita fuga veritatis? Explicabo in consequuntur beatae quo doloribus provident fugit minus molestias velit sed quaerat exercitationem, tempora totam, eligendi omnis dolor. Soluta fuga officia recusandae, minima cupiditate nulla accusamus expedita beatae praesentium eius corporis tempore ipsa nisi eaque ex! Iusto ad quod at veritatis maiores. Recusandae repudiandae unde similique et.', 'admin', '6', 'new, best, blog', '1706337060-chaitanya-shinde-mTyCp_D5vwk-unsplash.jpg', '2024-01-27');

-- --------------------------------------------------------

--
-- Table structure for table `blog_category`
--

CREATE TABLE `blog_category` (
  `bcat_id` int(30) NOT NULL,
  `bcat_name` varchar(255) NOT NULL,
  `bcat_post` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `blog_category`
--

INSERT INTO `blog_category` (`bcat_id`, `bcat_name`, `bcat_post`) VALUES
(1, 'Cooking Tips', '2'),
(2, 'Food Trends', '2'),
(5, 'Recipes ', '2'),
(6, '“How to eat” tutorials', '2'),
(7, 'New dish', '1'),
(8, 'healthy food', '1');

-- --------------------------------------------------------

--
-- Table structure for table `cart_data`
--

CREATE TABLE `cart_data` (
  `cart_id` int(255) NOT NULL,
  `user_id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `food_id` int(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_price` varchar(255) NOT NULL,
  `food_img` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_dish` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_dish`) VALUES
(1, 'starters', '1'),
(2, 'Pizza', '1'),
(3, 'sandwich', '1'),
(4, 'Burger', '1'),
(5, 'Chinese', '1'),
(6, 'Panjabi', '1'),
(7, 'Roti', '3'),
(8, 'Italian', '1'),
(9, 'Dessert', '1'),
(10, 'Ice Cream', '1'),
(11, 'Tandoori', '9'),
(12, 'Curd', '1'),
(13, 'Cold drinkes and Mocktails', '1'),
(14, 'Indian bread', '1');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `food_id` int(255) NOT NULL,
  `food_name` varchar(255) NOT NULL,
  `food_about` varchar(2000) NOT NULL,
  `food_description` varchar(255) NOT NULL,
  `food_info` varchar(255) NOT NULL,
  `food_img` varchar(255) NOT NULL,
  `food_price` varchar(255) NOT NULL,
  `food_type` varchar(255) NOT NULL,
  `food_time` varchar(255) NOT NULL,
  `food_category` varchar(255) NOT NULL,
  `food_tag` varchar(255) NOT NULL,
  `food_date` varchar(255) NOT NULL,
  `food_admin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`food_id`, `food_name`, `food_about`, `food_description`, `food_info`, `food_img`, `food_price`, `food_type`, `food_time`, `food_category`, `food_tag`, `food_date`, `food_admin`) VALUES
(33, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999212-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin'),
(34, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999216-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin'),
(36, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999216-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin'),
(37, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999217-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin'),
(38, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999217-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin'),
(39, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999217-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin'),
(40, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999217-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin'),
(41, 'test001', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Voluptate recusandae ipsam nulla facere veritatis quidem optio neque rem rerum unde temporibus magni nostrum ea voluptatem repellat, ad cum placeat excepturi eligendi nobis blanditiis voluptates nes', '1702999218-70c17c6a9dbb76b66b84f9952771526d.jpg', '500', 'Veg', '15', '11', 'tandoori', '2023-12-19', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(30) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_mail` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_mail`, `user_password`) VALUES
(31, 'admin', 'kripalsinhz50@gmail.com', 'kripal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `blog_category`
--
ALTER TABLE `blog_category`
  ADD PRIMARY KEY (`bcat_id`);

--
-- Indexes for table `cart_data`
--
ALTER TABLE `cart_data`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`food_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `blog_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `blog_category`
--
ALTER TABLE `blog_category`
  MODIFY `bcat_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart_data`
--
ALTER TABLE `cart_data`
  MODIFY `cart_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `food_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
