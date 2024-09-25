<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!(isset($_SESSION['role']) && $_SESSION['role'] == 'storers')) {
    header('Location: /gamer_pro/ctrl/redirect.php');
    exit();
}

include "../svc/storers_svc.php";

if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    $branch = $_SESSION['branch'];
    $storers_svc = new Storers_svc();

    $products = $storers_svc->getProducts($branch);
    $_SESSION['products'] = $products;
    
    $product_names = $storers_svc->getProductNames();
    $_SESSION['product_names'] = $product_names;
    header('Location: /gamer_pro/view/storers/main.php');
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $branch_id = $_SESSION['branch'];
    $prod_id = $_POST['product_id'];
    $amount = $_POST['amount'];
    $location = $_POST['location'];
    $notes = $_POST['notes'];

    $storers_svc = new Storers_svc();
    $res = $storers_svc->insert_inventory($branch_id, $prod_id, $amount, $location, $notes);
    if($res){
        $_SESSION['success'] = "El inventario se ha actualizado adecuadamente";
    } else {
        $_SESSION['error'] = "Ocurrió un problema al actualizar el inventario, revise los datos e intentelo de nuevo.";
    }
    
    header('Location: /gamer_pro/ctrl/redirect.php');
    exit();
}
?>