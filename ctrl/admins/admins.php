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
    $name = $_POST['name'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $branch_id = $_POST['branch_id'];
    $state = $_POST['state'];
    $employee_type = $_POST['employee_type'];
    $checkout_number = isset($_POST['checkout_number']) ? $_POST['checkout_number'] : null;

    $res = $admin_svc->newEmployee($employee_type, $branch_id, $name, $checkout_number, $username, $password);

    if($res){
        $_SESSION['success'] = "Se registró el empleado con exito! :)";
    } else {
        $_SESSION['error'] = "Ocurrió un problema! No se pudo registrar el empleado, revise los datos e intentelo de nuevo.";
    }    
    
    header('Location: /gamer_pro/view/admins/main.php');
    exit();
}

?>