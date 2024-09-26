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
    $init_date = $_POST['init_date'];
    $final_date = $_POST['final_date'];

    $admin_svc = new Admins_svc();
    try{
        $res = $admin_svc->get_discount_history($init_date, $final_date);
        $_SESSION['discount_history'] = $res;
        header('Location: /gamer_pro/view/admins/discount_history.php');
        exit();
    }catch(PDOException $e){
        $_SESSION['error'] = "Ocurrió un problema al realizar la consulta revise los datos e intentelo de nuevo.";
        header('Location: /gamer_pro/ctrl/redirect.php');
        exit();
    }
}

?>