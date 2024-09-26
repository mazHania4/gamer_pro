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

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $admin_svc = new Admins_svc();
    $branch = $_SESSION['branch'];
    //$product_names = $cashier_svc->getProductNames($branch);
    //$_SESSION['products'] = $product_names;


    header('Location: /gamer_pro/view/admins/main.php');
    exit();
}

?>