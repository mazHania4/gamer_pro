<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!(isset($_SESSION['role']) && $_SESSION['role'] == 'storers')) {
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

    <div class="container bg-light p-5 border-bottom">

        <div class="container bg-light-subtle">
            <?php include "../components/alerts.php"; ?>
            
            <h1 class="display-6 text-center">Ingresar productos a la sucursal</h1>
            <form class="row g-3 p-3 " method="POST" action="../../ctrl/storers.php">
                <div class="col-md-3">
                    <label for="product_id" class="form-label px-2">Producto</label>
                    <input list="productnames" name="product_id" id="product_id" class="form-control" placeholder="Nombre o id del producto">
                    <datalist name="productnames" id="productnames">
                        <?php 
                        if (isset($_SESSION['product_names'])){
                            $product_names = $_SESSION['product_names'];
                            foreach ($product_names as $product_name) {
                                echo '<option value="'.$product_name['id'].'">'.$product_name['name'].'</option>';
                            }
                        }
                        ?>
                    </datalist>
                </div>
                <div class="col-md-3">                
                    <label for="amount" class="form-label px-2">Cantidad</label>
                    <input class="form-control" type="number" name="amount" id="amount">
                </div>
                <div class="col-md-3">
                    <label for="location" class="form-label px-2">Ubicación</label>
                    <input class="form-control" type="text" name="location" id="location">
                </div>
                <div class="col-md-3">
                    <label for="notes" class="form-label px-2">Notas</label>
                    <input class="form-control" type="text" name="notes" id="notes">
                </div>
                <div class="col-12 text-center">  
                    <input class="btn btn-danger" type="submit" value="Ingresar producto">
                </div>
            </form>
        </div>

        <h1 class="display-6 text-center mt-4">Productos actuales en la sucursal</h1>
        <table class="table mt-5 table-striped table-bordered border-danger">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre del Producto</th>
                    <th>Precio</th>
                    <th>Cantidad en Exhibición</th>
                    <th>Cantidad en Almacén</th>
                    <th>Ubicación en Exhibición</th>
                    <th>Ubicación en Almacén</th>
                </tr>
            </thead>
            <tbody>
                <?php if (isset($_SESSION['products'])): ?>
                    <?php $products = $_SESSION['products']; $i = 0; ?>
                    <?php foreach ($products as $product): ?>
                        <?php $i++; ?>
                        <tr>
                            <td><?php echo $i ?></td>
                            <td><?php echo htmlspecialchars($product['product_name']); ?></td>
                            <td><?php echo htmlspecialchars($product['product_price']); ?></td>
                            <td><?php echo htmlspecialchars($product['amount_on_display']); ?></td>
                            <td><?php echo htmlspecialchars($product['amount_in_store']); ?></td>
                            <td><?php echo htmlspecialchars($product['location_on_display']); ?></td>
                            <td><?php echo htmlspecialchars($product['location_in_store']); ?></td>
                            
                        </tr>
                    <?php endforeach; ?>
                <?php endif; ?>
            </tbody>
        </table>
    </div>




<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>