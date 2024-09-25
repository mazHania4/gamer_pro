<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!(isset($_SESSION['role']) && $_SESSION['role'] == 'cashiers')) {
    header('Location: /gamer_pro/ctrl/redirect.php');
    exit();
}

include "../svc/cashiers_svc.php";

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $cashier_svc = new Cashiers_svc();
    $branch = $_SESSION['branch'];
    $product_names = $cashier_svc->getProductNames($branch);
    $_SESSION['products'] = $product_names;

    $clients = $cashier_svc->getClients();
    $_SESSION['clients'] = $clients;

    header('Location: /gamer_pro/view/cashiers/main.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $nit = $_POST['client_nit'];
    $points = $_POST['used_points'];
    $items = $_POST['items'];

    $cashier = $_SESSION['user_id'];
    $branch = $_SESSION['branch'];

    
    $cashier_svc = new Cashiers_svc();
    $res = $cashier_svc->insertSale($nit, $cashier, $points, $items);


    if($res){
        $_SESSION['success'] = "Se agregó la venta con exito! :)";
    } else {
        $_SESSION['error'] = "Ocurrió un problema! No se pudo agregar la venta, revise los datos e intentelo de nuevo.";
    }
    
    header('Location: /gamer_pro/ctrl/redirect.php');
    exit();
}
?>