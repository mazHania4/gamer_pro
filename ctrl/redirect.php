<?php
session_start();

// Redirigir si el usuario ya está logueado
if (isset($_SESSION['username'])) {
    switch ($_SESSION['role']) {
        case 'storers':
            header('Location: /gamer_pro/ctrl/storers.php');
            break;
        case 'cashiers':
            header('Location: /gamer_pro/ctrl/cashiers.php');
            break;
        case 'admins':
            header('Location: /gamer_pro/view/admins/main.php');
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