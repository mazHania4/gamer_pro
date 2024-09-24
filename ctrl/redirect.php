<?php
session_start();

// Redirigir si el usuario ya está logueado
if (isset($_SESSION['username'])) {
    switch ($_SESSION['role']) {
        case 'storers':
            header('Location: /gamer_pro/ctrl/storers.php');
            break;
        default:
            header('Location: /gamer_pro/view/' . $_SESSION['role'] . '/main.php');
            break;
    }
} else {
    header('Location: /gamer_pro/index.php#login');
}
exit();
?>