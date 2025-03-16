<?php
include 'Admin/connection/conect.php';
if (isset($_GET['menuid'])) {
    $menuid = $_GET['menuid'];
    $selectmenu = "select * from tbl_menu where menuid = '$menuid'";
    $resultmenu = $con->query($selectmenu);
    $datamenu = $resultmenu->fetch_assoc();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Shop</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="author" content="TemplatesJungle">
    <meta name="keywords" content="Online Store">
    <meta name="description" content="Stylish - Shoes Online Store HTML Template">

    <link rel="stylesheet" href="css/vendor.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" type="text/css" href="css/styleload.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700;800;900&family=Playfair+Display:ital,wght@0,900;1,900&family=Source+Sans+Pro:wght@400;600;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css">
</head>
<style>

</style>

<body>

    <!-- searchbox -->
    <div class="search-box bg-dark position-relative">
        <div class="search-wrap">
            <div class="close-button d-flex justify-content-center align-items-center">
                <i class="fa-solid fa-x close text-white fs-4" style="margin-top: 15px;"></i>
            </div>
            <form id="search-form" class="text-lg-center text-md-left pt-3 d-flex justify-content-center align-items-center" action="" method="get">
                <input type="text" class="search-input" placeholder="Search">
                <i class="fa-solid fa-magnifying-glass text-white fs-4" style="margin-left: 10px;"></i>
            </form>
        </div>
    </div>

    <!-- login -->
    <div class="modal fade" id="modallogin" tabindex="-1" aria-modal="true" role="dialog">
        <div class="modal-dialog modal-fullscreen-md-down modal-md modal-dialog-centered" role="document">
            <div class="modal-content p-4 bg-white">
                <div class="modal-header border-0">
                    <h2 class="modal-title fs-3 fw-normal">Login</h2>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="login-detail">
                        <div class="login-form p-0">
                            <div class="col-lg-12 mx-auto">
                                <form id="login-form">
                                    <input type="text" name="username" placeholder="Username or Email Address *"
                                        class="mb-3 ps-3 text-input">
                                    <input type="password" name="password" placeholder="Password" class="ps-3 text-input">
                                    <div class="checkbox d-flex justify-content-between mt-4">
                                        <p class="checkbox-form">
                                            <label class="">
                                                <input name="rememberme" type="checkbox" id="remember-me" value="forever"> Remember me </label>
                                        </p>
                                        <p class="lost-password">
                                            <a href="#">Forgot your password?</a>
                                        </p>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer mt-5 d-flex flex-column justify-content-center">
                            <button type="button" class="btn btn-red hvr-sweep-to-right dark-sweep">Login</button>
                            <a href="login" data-bs-toggle="modal" data-bs-target="#modalsignup" class="border-0 text-dark">
                                Not a Member? Register Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- signup -->
    <div class="modal fade" id="modalsignup" tabindex="-1" aria-modal="true" role="dialog">
        <div class="modal-dialog modal-fullscreen-md-down modal-md modal-dialog-centered" role="document">
            <div class="modal-content p-4 bg-light">
                <div class="modal-header border-0">
                    <h2 class="modal-title fs-3 fw-normal">Register</h2>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="login-detail">
                        <div class="login-form p-0">
                            <div class="col-lg-12 mx-auto">
                                <form id="login-form">
                                    <input type="text" name="username" placeholder="Username"
                                        class="mb-3 ps-3 text-input">
                                    <input type="text" name="username" placeholder="Email Address *"
                                        class="mb-3 ps-3 text-input">
                                    <input type="password" name="password" placeholder="Password" class="ps-3 text-input">
                                </form>
                            </div>
                        </div>
                        <div class="modal-footer mt-5 d-flex flex-column justify-content-center">
                            <button type="button" class="btn btn-success hvr-sweep-to-right dark-sweep">Register</button>
                            <a href="login" data-bs-toggle="modal" data-bs-target="#modallogin" class="border-0 text-dark">
                                Already Have Account? Login Now
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- header and menu -->
    <header id="header" class="site-header text-black bg-white border border-width-1 border-bottom position-sticky top-0" style="z-index: 100;">
        <div class="header-top border-bottom py-2">
            <div class="container-lg">
                <div class="row justify-content-evenly">
                    <div class="col">
                        <ul class="social-links list-unstyled d-flex m-0">
                            <li class="pe-2">
                                <a href="#">
                                    <i class="fa-brands fa-facebook-f"></i>
                                </a>
                            </li>
                            <li class="pe-2">
                                <a href="#">
                                    <i class="fa-brands fa-instagram"></i>
                                </a>
                            </li>
                            <li class="pe-2">
                                <a href="#">
                                    <i class="fa-brands fa-youtube"></i>
                                </a>
                            </li>
                            <li class="pe-2">
                                <a href="#">
                                    <i class="fa-brands fa-tiktok"></i>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <i class="fa-brands fa-telegram"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <div class="col d-none d-md-block">
                        <p class="text-center text-black m-0">Discount up to 50% for upcoming <strong>Christmas</strong></p>
                    </div>
                    <div class="col">
                        <ul class="d-flex justify-content-end gap-3 list-unstyled m-0">
                            <li>
                                <a href="#">Contact</a>
                            </li>
                            <li>
                                <a href="#">Cart</a>
                            </li>
                            <li>
                                <a href="#">Login</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <nav id="header-nav" class="navbar navbar-expand-lg">
            <div class="container-lg">
                <a class="navbar-brand" href="index.php">
                    <img src="img/logo.png" class="logo" alt="logo" style="width: 60px; height: 45px;">
                </a>
                <button class="navbar-toggler d-flex d-lg-none order-3 border-0 p-1 ms-2" type="button"
                    data-bs-toggle="offcanvas" data-bs-target="#bdNavbar" aria-controls="bdNavbar" aria-expanded="false"
                    aria-label="Toggle navigation">
                    <i class="fa-solid fa-bars text-dark"></i>
                </button>
                <div class="offcanvas offcanvas-end" tabindex="-1" id="bdNavbar">
                    <div class="offcanvas-header px-4 pb-0">
                        <a class="navbar-brand ps-3" href="index.php">
                            <img src="img/logo.png" class="logo" alt="logo" style="width: 60px; height: 45px;">
                        </a>
                        <button type="button" class="btn-close btn-close-black p-5" data-bs-dismiss="offcanvas" aria-label="Close"
                            data-bs-target="#bdNavbar"></button>
                    </div>
                    <div class="offcanvas-body">
                        <ul id="navbar" class="navbar-nav fw-bold justify-content-end align-items-center flex-grow-1">
                            <li class="nav-item">
                                <a class="nav-link me-5" href="index.php"><i class="fa-solid fa-home"></i></a>
                            </li>
                            <?php
                            $select = "select * from tbl_menu where status = 'Active' order by `order` asc";
                            $result = $con->query($select);
                            while ($data = $result->fetch_assoc()) {
                            ?>
                                <li class="nav-item">
                                    <a class="nav-link me-5" href="menu.php?menuid=<?php echo $data['menuid'] ?>"><?php echo $data['name'] ?></a>
                                </li>
                            <?php
                            }
                            ?>
                        </ul>
                    </div>
                </div>
                <div class="user-items ps-0 ps-md-5">
                    <ul class="d-flex justify-content-end list-unstyled align-item-center m-0">
                        <li class="pe-3">
                            <a href="login" data-bs-toggle="modal" data-bs-target="#modallogin" class="border-0">
                                <i class="fa-solid fa-user"></i>
                            </a>
                        </li>
                        <li class="pe-3">
                            <a href="#" data-bs-toggle="modal" data-bs-target="#modallong" class="border-0">
                                <i class="fa-solid fa-shopping-cart"></i>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="search-item border-0" data-bs-toggle="collapse" data-bs-target="#search-box"
                                aria-label="Toggle navigation">
                                <i class="fa-solid fa-magnifying-glass"></i>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    <div class="pb-5 d-flex justify-content-center align-items-center">
        <div class="container-xl">
            <?php
            if ($datamenu['name'] == 'All') {
                $select = "select count(productid) as count from tbl_prd";
                $selectprd = "select * from tbl_prd";
            } else {
                $select = "select count(productid) as count from tbl_prd where menuid = '$menuid'";
                $selectprd = "select * from tbl_prd where menuid = '$menuid' order by date desc ";
            }
            $result = $con->query($select);
            $data = $result->fetch_assoc();
            ?>
            <h1 class="mt-3"><?php echo $datamenu['name'] ?>'s Shoes (<?php echo $data['count'] ?>)</h1>
            <div class="row justify-content-between">
                <?php
                $result = $con->query($selectprd);
                while ($data = $result->fetch_assoc()) {
                    $menu = $data['menuid'];
                    $selectmenu = "select name from tbl_menu where menuid = '$menu'";
                    $resultmenu = $con->query($selectmenu);
                    $datamenu = $resultmenu->fetch_assoc();
                ?>
                    <a href="detail.php?prdid=<?php echo $data['productid']?>" class="col-lg-4 col-6 my-lg-5 my-2">
                        <div>
                            <img src="Admin/upload/Detail/<?php echo $data['img'] ?>" alt="" class="img-fluid">
                        </div>
                        <div>
                            <h3 class="text-dark pt-2"><?php echo $data['name'] ?></h3>
                            <p class="text-dark m-0"><?php echo $datamenu['name'] ?>'s Shoes</p>
                            <p class="text-dark m-0">
                                <?php
                                if ($data['discount'] != 0) {
                                ?>
                                <del>$<?php echo $data['price']?></del> $<?php echo number_format($data['price'] * (100 - $data['discount']) / 100 , 2)?>
                                <?php
                                }
                                ?>
                            </p>
                            <p class="text-dark m-0">Stock: <?php echo $data['stock']?></p>
                        </div>
                    </a>
                <?php
                }
                ?>
            </div>
        </div>
    </div>

    <?php include 'footer.php' ?>
</body>
<script src="js/jquery-1.11.0.min.js"></script>
<script src="js/plugins.js"></script>
<script src="js/script.js"></script>
<script src="https://unpkg.com/@dotlottie/player-component@2.7.12/dist/dotlottie-player.mjs" type="module"></script>

</html>