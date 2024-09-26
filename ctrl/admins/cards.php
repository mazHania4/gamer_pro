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
    $form_case = $_POST['form_case'];
    if ($form_case == "search"){
        $admin_svc = new Admins_svc();
        $nit = $_POST['nit'];
        $client = $admin_svc->get_client_card_info($nit);
        if($client){
            $_SESSION['card_client'] = $client;
        } else {
            $_SESSION['error'] = "Ocurrió un problema! No se pudo consultar la información del cliente, revise los datos e intentelo de nuevo.";
        }    
        

    } elseif ($form_case == "update"){
        $admin_svc = new Admins_svc();
        $nit = $_POST['nit'];
        $res = $admin_svc->upgrade_card($nit);
        if($res){
            $client = $admin_svc->get_client_card_info($nit);
            $_SESSION['card_client'] = $client;
            $_SESSION['success'] = "Se modificó la tarjeta con exito! :)";
        } else {
            $_SESSION['error'] = "No se pudo mejorar la tarjeta del cliente, revise los datos e intentelo de nuevo.";
        }  
    }
    
    header('Location: /gamer_pro/view/admins/main.php');
    exit();
}

?>