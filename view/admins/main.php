<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!(isset($_SESSION['role']) && $_SESSION['role'] == 'admins')) {
    header('Location: ../../ctrl/redirect.php');
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gamer Pro</title>
    <?php include "../components/head_imports.html"; ?>
</head>
<body>
    <?php include "../components/header.php"; ?>
    
    <?php include "../components/alerts.php"; ?>

    <!-- REGISTRAR EMPLEADO -->
    <section class="container bg-light p-4 my-3 border-bottom">
        <div class="container my-5 py-3 bg-light-subtle">
            <h1 class="display-6 text-center">Agregar empleado</h1>
            
        </div>
    </section>

    <!-- MODIFICAR TARJETAS -->
    <section class="container bg-light p-4 my-3 border-bottom">
        <div class="container my-5 py-3 bg-light-subtle">
            <h1 class="display-6 text-center">Gestionar tarjetas</h1>
            
        </div>
    </section>

    <!-- REPORTES -->
    <section class="container bg-light p-4 my-3 border-bottom">        
        <div class="container my-5 py-3 bg-light-subtle">
            <h1 class="display-6 text-center">Reportes</h1>
            

        <div class="list-group">
            <button type="button" class="list-group-item list-group-item-action list-group-item-warning" data-bs-toggle="modal" data-bs-target="#discount_history_modal">
                Historial de descuentos realizados en un intervalo de tiempo.</button>
            <button type="button" class="list-group-item list-group-item-action list-group-item-warning" data-bs-toggle="modal" data-bs-target="#top_10_sales_modal">
                Top 10 ventas más grandes en un intervalo de tiempo.</button>
            <a href="../../ctrl/admins/top_2_branches_revenue.php" class="list-group-item list-group-item-action list-group-item-warning">Top 2 sucursales que más dinero han ingresado</a>
            <a href="../../ctrl/admins/top_10_products_sales.php" class="list-group-item list-group-item-action list-group-item-warning">Top 10 artículos más vendidos</a>
            <a href="../../ctrl/admins/top_10_customers_spent.php" class="list-group-item list-group-item-action list-group-item-warning">Top 10 clientes que más dinero han gastado</a>
        </div>

        </div>
    </section>



<!-- Modal top_10_sales -->
<div class="modal fade" id="top_10_sales_modal" tabindex="-1" aria-labelledby="top_10_sales_lbl" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="top_10_sales_lbl">Top 10 ventas</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h6>Ingrese el intervalo de tiempo a consultar</h6>
                <form action="/gamer_pro/ctrl/admins/top_10_sales.php" method="POST">
                    <div class="mb-3">
                        <label for="init_date" class="form-label">Fecha Inicial</label>
                        <input type="date" class="form-control" id="init_date" name="init_date" required>
                    </div>
                    <div class="mb-3">
                        <label for="final_date" class="form-label">Fecha Final</label>
                        <input type="date" class="form-control" id="final_date" name="final_date" required>
                    </div>
                    <button type="submit" class="btn btn-warning">Consultar</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Modal discount_history -->
<div class="modal fade" id="discount_history_modal" tabindex="-1" aria-labelledby="discount_history_lbl" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="discount_history_lbl">Historial de descuentos</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <h6>Ingrese el intervalo de tiempo a consultar</h6>
                <form action="/gamer_pro/ctrl/admins/discount_history.php" method="POST">
                    <div class="mb-3">
                        <label for="init_date" class="form-label">Fecha Inicial</label>
                        <input type="date" class="form-control" id="init_date" name="init_date" required>
                    </div>
                    <div class="mb-3">
                        <label for="final_date" class="form-label">Fecha Final</label>
                        <input type="date" class="form-control" id="final_date" name="final_date" required>
                    </div>
                    <button type="submit" class="btn btn-warning">Consultar</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>