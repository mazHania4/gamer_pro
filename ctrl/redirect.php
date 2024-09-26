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
        case 'inventory_emp':
            header('Location: /gamer_pro/ctrl/inventory.php');
            break;
        default:
            header('Location: /gamer_pro/index.php#login');
            break;
    }
} else {
    header('Location: /gamer_pro/index.php#login');
}
exit();
?>