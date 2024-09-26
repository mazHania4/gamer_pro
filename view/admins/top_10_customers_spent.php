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

    <section class="container bg-light p-4 my-3 border-bottom">        
        <div class="container my-5 py-3 bg-light-subtle">
            <h1 class="display-6 text-center">Top 10 clientes que más dinero han gastado</h1>
            <table class="table mt-5 table-striped table-bordered border-warning">
            <thead>
                <tr>
                    <th>#</th>
                    <th>NIT</th>
                    <th>Nombre del cliente</th>
                    <th>Numero de telefono</th>
                    <th>Tipo de tarjeta</th>
                    <th>Total gastado</th>
                </tr>
            </thead>
            <tbody>
                <?php if (isset($_SESSION['top_10_customers_spent'])): ?>
                    <?php $res_a = $_SESSION['top_10_customers_spent']; $i = 0; ?>
                    <?php foreach ($res_a as $res): ?>
                        <?php $i++; ?>
                        <tr>
                            <td><?php echo $i ?></td>
                            <td><?php echo htmlspecialchars($res['nit']); ?></td>
                            <td><?php echo htmlspecialchars($res['client_name']); ?></td>                            
                            <td><?php echo htmlspecialchars($res['client_phone']); ?></td>
                            <td><?php echo htmlspecialchars($res['card_type']); ?></td>
                            <td><?php echo htmlspecialchars($res['total_spent']); ?></td>
                        </tr>
                    <?php endforeach; ?>
                <?php endif; ?>
            </tbody>
        </table>

        

        </div>
    </section>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>