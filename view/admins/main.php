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
    <div class="container pt-5">
        <?php include "../components/alerts.php"; ?>
    </div>

    <!-- REGISTRAR EMPLEADO -->
    <section class="container bg-light p-4 my-3 border-bottom">
        <div class="row my-5 justify-content-center py-3 bg-light-subtle">
            <h1 class="display-6 text-center">Agregar empleado</h1>
            <div class="col-md-6">
                <form action="../../ctrl/admins/admins.php" class="mb-5" method="POST">
                    <div class="col mb-3">
                        <label for="name" class="form-label">Nombre:</label>
                        <input type="text" class="form-control" name="name" id="name" required>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <label for="username" class="form-label">Nombre de Usuario:</label>
                            <input type="text" class="form-control"  name="username" id="username" required>
                        </div>
                        <div class="col mb-3">
                            <label for="password" class="form-label">Contraseña:</label>
                            <input type="password" class="form-control" name="password" id="password" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col mb-3">
                            <label for="branch_id" class="form-label">ID de la Sucursal:</label>
                            <input type="number" class="form-control" name="branch_id" id="branch_id" required>
                        </div>
                        <div class="col mb-3">
                            <label for="checkout_number" class="form-label">Número de Caja (solo para cajeros):</label>
                            <input type="number" class="form-control" name="checkout_number" id="checkout_number">
                        </div>
                    </div>
                    <div class="mb-3">
                        <label for="employee_type" class="form-label">Tipo de Empleado:</label>
                        <select class="form-control" name="employee_type" id="employee_type" required>
                            <option value="cashier">Cajero</option>
                            <option value="storer">Bodeguero</option>
                            <option value="inventory_emp">Empleado de Inventario</option>
                        </select>
                    </div>
                    <div>
                        <button type="submit" class="btn btn-warning w-100" name="submit">Agregar Empleado</button>
                    </div>
                </form>
            </div>
        </div>
    </section>

    <!-- MODIFICAR TARJETAS -->
    <section class="container bg-light p-4 my-3 border-bottom">
        <div class="container my-5 py-3 bg-light-subtle">
            <h1 class="display-6 text-center">Mejorar tarjeta</h1>
            <form action="../../ctrl/admins/cards.php" class="mb-5" method="POST">
                <input type="hidden" class="form-control" name="form_case" id="form_case" value="search">
                <div class="mb-3">
                    <label for="name" class="form-label">Nit del usuario a consultar:</label>
                    <input type="text" class="form-control" name="nit" id="nit" required>
                </div>
                <div>
                    <button type="submit" class="btn btn-warning w-100" name="submit">Consultar</button>
                </div>
            </form>
            <?php if (isset($_SESSION['card_client'])): ?>
                <?php $res = $_SESSION['card_client']; ?>
                <table class="table mt-5 table-striped table-bordered border-warning">
                    <thead>
                        <tr>
                            <th>NIT</th>
                            <th>Nombre</th>
                            <th>Tarjeta</th>
                            <th>Fecha modificación</th>
                            <th>Gastos acumulados</th>
                        </tr>
                    </thead>
                    <tbody>
                            <tr>
                                <td><?php echo htmlspecialchars($res['client_nit']); ?></td>
                                <td><?php echo htmlspecialchars($res['client_name']); ?></td>                            
                                <td><?php echo htmlspecialchars($res['current_card']); ?></td>
                                <td><?php echo htmlspecialchars($res['last_card_update']); ?></td>
                                <td><?php echo htmlspecialchars($res['total_spent']); ?></td>
                            </tr>
                    </tbody>
                </table>
                <form action="../../ctrl/admins/cards.php" class="mb-5" method="POST">
                    <input type="hidden" class="form-control" name="form_case" id="form_case" value="update">
                    <input type="hidden" class="form-control" name="nit" id="nit" value="<?php echo htmlspecialchars($res['client_nit']); ?>">
                    <div>
                        <button type="submit" class="btn btn-warning w-100" name="submit">Mejorar Tarjeta</button>
                    </div>
                </form>
            <?php endif; ?>
        </div>
    </section>

    <!-- REPORTES -->
    <section class="container bg-light p-4 my-3 border-bottom">        
        <div class="container my-5 p-2 bg-light-subtle">
            <h1 class="display-6 text-center">Reportes</h1>
            

        <div class="list-group text-center px-5 mx-5 my-3">
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