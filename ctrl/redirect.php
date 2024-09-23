<?php
session_start();

// Redirigir si el usuario ya está logueado
if (isset($_SESSION['username'])) {
    header('Location: /gamer_pro/view/' . $_SESSION['role'] . '/main.php');
    exit();
}
?>