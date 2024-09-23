<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

include "redirect.php";
include "../svc/login_svc.php";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $role = $_POST['role'];
    $username = $_POST['username'];
    $password = $_POST['password'];
    $roles = array("cashiers", "inventory_emp", "storers", "admins");
    if (in_array($role, $roles)){
        $login_svc = new Login_svc();
        $user = $login_svc->validateLogin($username, $password, $role);
        if ($user){
            $_SESSION['username'] = $username;
            $_SESSION['role'] = $role;
            header('Location: ../view/' . $_SESSION['role'] . '/main.php');
            exit();
        } else {
            $_SESSION['error'] = "Usuario o contraseña incorrectos.";
            header('Location: /gamer_pro/index.php#login');
            exit();
        }
    } else {
        header('Location: /gamer_pro/index.php#login');
    }
}
?>
