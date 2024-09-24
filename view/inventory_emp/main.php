<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!(isset($_SESSION['role']) && $_SESSION['role'] == 'inventory_emp')) {
    header('Location: ../../ctrl/redirect.php');
    exit();
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bodega</title>
    <?php include "../components/head_imports.html"; ?>
</head>
<body>
    <?php include "../components/header.php"; ?>

    <div class="container">
        <table class="table">
            <thead>
                <tr>
                    <th>#</th>
                    <th>Nombre del Producto</th>
                    <th>Descripción</th>
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
                            <td><?php echo htmlspecialchars($product['product_description']); ?></td>
                            <td><?php echo htmlspecialchars($product['product_price']); ?></td>
                            <td><?php echo htmlspecialchars($product['amount_on_display']); ?></td>
                            <td><?php echo htmlspecialchars($product['amount_in_store']); ?></td>
                            <td><?php echo htmlspecialchars($product['location_on_display']); ?></td>
                            <td><?php echo htmlspecialchars($product['location_in_store']); ?></td>
                            <td>
                                <form method="POST" action="new_payment.php">
                                    <input type="hidden" name="contract_id" value="<?php echo htmlspecialchars($contract['contract_id']); ?>">
                                    <input type="hidden" name="payment_amount" value="<?php echo htmlspecialchars($contract['payments_amount']); ?>">
                                    <button type="submit">Generar Pago</button>
                                </form>
                            </td>
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