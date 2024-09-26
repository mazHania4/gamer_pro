<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!(isset($_SESSION['role']) && $_SESSION['role'] == 'admins')) {
    header('Location: /gamer_pro/ctrl/redirect.php');
    exit();
}

include "../../svc/admins_svc.php";

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $admin_svc = new Admins_svc();
    $res = $admin_svc->getTop_10_products_sales();
    $_SESSION['top_10_products_sales'] = $res;
    header('Location: /gamer_pro/view/admins/top_10_products_sales.php');
    exit();
}

?>