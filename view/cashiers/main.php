<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

session_start();

if (!(isset($_SESSION['role']) && $_SESSION['role'] == 'cashiers')) {
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

    <div class="container bg-light p-4 border-bottom">
        <?php include "../components/alerts.php"; ?>
        
        <div class="container my-5 py-3 bg-light-subtle">
            
            <!-- REGISTRAR VENTA -->
            <h1 class="display-6 text-center">Nueva venta</h1>

            <datalist name="products" id="products">
                <?php 
                if (isset($_SESSION['products'])){
                    $products = $_SESSION['products'];
                    foreach ($products as $product) {
                        echo '<option value="'.$product['product_id'].'" name="'.$product['product_name'].'" price="'.$product['product_price'].
                        '" stock="'.($product['stock']).'">'.$product['product_name'].'</option>';
                    }
                }
                ?>
            </datalist>
            <datalist name="clients" id="clients">
                <?php 
                if (isset($_SESSION['clients'])){
                    $clients = $_SESSION['clients'];
                    foreach ($clients as $client) {
                        echo '<option value="'.$client['nit'].'" points="'.$client['points'].'">'.$client['name'].'</option>';
                    }
                }
                ?>
            </datalist>
            <form class="row g-3 p-3 " method="POST" action="../../ctrl/cashiers.php">
                <input type="hidden" id="form_case" name="form_case" value="register_sale" required>
                <div class="col-md-3">
                    <label for="client_nit" class="form-label px-2">Cliente</label>
                    <input list="clients" name="client_nit" id="client_nit" class="form-control" placeholder="Nombre o nit del cliente">
                </div>
                
                <div class="col-md-3">
                    <label for="client_points" class="form-label px-2">Puntos del Cliente</label>
                    <input type="text" id="client_points" class="form-control" placeholder="Puntos" readonly>
                </div>
                <div class="col-md-3">                
                    <label for="used_points" class="form-label px-2">Puntos a usar</label>
                    <input class="form-control" type="number" name="used_points" id="used_points">
                </div>
                <!-- Sección para agregar productos a la venta -->
                <div>
                    <h4>Productos:</h4>
                    <table class="table table-success  table-striped table-bordered border-success">
                        <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">ID</th>
                                <th scope="col">Nombre</th>
                                <th scope="col">Precio U.</th>
                                <th scope="col">Stock</th>
                                <th scope="col">Cantidad</th>
                                <th scope="col">Total</th>
                                <th scope="col">Acción</th>
                            </tr>
                        </thead>
                        <tbody id="sale-details-body">
                        </tbody>
                    </table>
                    <div class="row justify-content-between">
                        <div class="col">
                            <button class="btn btn-outline-success" type="button" onclick="addRow()">Agregar Producto</button>
                        </div>
                        <div class="col text-end px-4 total-sale">
                            <h4>Total de la venta:  <strong><span id="total-sale">0.00</span> </strong> </h4>
                        </div>
                    </div>
                </div>
                <div class="d-grid gap-2">  
                    <input class="btn btn-lg btn-success" type="submit" value="Confirmar venta">
                </div>
            </form>
        </div>

        <hr>

        <!-- REGISTRAR CLIENTE -->
        <div class="container my-5 py-3 bg-light-subtle">
            <h1 class="display-6 text-center mt-4">Registrar Cliente</h1>
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <form action="../../ctrl/cashiers.php" class="mb-5" method="POST">
                        <input type="hidden" id="form_case" name="form_case" value="register_client" required>
                        <div class="mb-3">
                            <label for="nit" class="form-label">NIT</label>
                            <input type="number" class="form-control" id="nit" name="nit" min="1" max="999999999" required>
                        </div>
                        <div class="mb-3">
                            <label for="name" class="form-label">Nombre</label>
                            <input type="text" class="form-control" id="name" name="name" maxlength="100" required>
                        </div>
                        <div class="mb-3">
                            <label for="phone_number" class="form-label">Número de Teléfono</label>
                            <input type="number" class="form-control" id="phone_number" name="phone_number" min="1" max="99999999" required>
                        </div>
                        <button type="submit" class="btn btn-success w-100">Agregar Cliente</button>
                    </form>
                </div>
            </div>
        </div>
    </div>

    

<script>
    let itemIndex = 1; // Índice para los detalles de venta
    function addRow() {
        const tableBody = document.getElementById('sale-details-body');
        const newRow = document.createElement('tr');
        newRow.innerHTML = `
            <th scope="row">${itemIndex}</th>
            <td><input list="products" name="items[${itemIndex}][id]" id="items[${itemIndex}][id]" class="form-control" placeholder="Nombre o id del producto"></td>
            <td><span class="name">--</span></td>
            <td><span class="price">--</span></td>
            <td><span class="stock">--</span></td>
            <td><input type="number" class="form-control" name="items[${itemIndex}][amount]"></td>
            <td><span class="total">0.00</span></td>
            <td><button type="button" class="btn btn-danger" onclick="removeRow(this)">Eliminar</button></td>
        `;
        tableBody.appendChild(newRow);
        itemIndex++;
    }

    function removeRow(button) {
        const row = button.closest('tr');
        row.remove();
        updateTotalSale();
    }

    document.getElementById('client_nit').addEventListener('input', function() {
        var clientNit = this.value;
        var options = document.getElementById('clients').options;
        var points = '';

        // Buscar el cliente seleccionado en el datalist
        for (var i = 0; i < options.length; i++) {
            if (options[i].value === clientNit) {
                points = options[i].getAttribute('points');
                break;
            }
        }

        // Actualizar el campo de puntos
        document.getElementById('client_points').value = points ? points : 'No disponible';
    });

    document.getElementById('sale-details-body').addEventListener('input', function(event) {
        // El input que ha cambiado está asociado al datalist de productos?
        if (event.target && event.target.matches('input[list="products"]')) {
            const input = event.target;
            const prod_id = input.value;
            const row = input.closest('tr'); // Obtener la fila actual
            const options = document.getElementById('products').options;
            let name = '';
            let price = '';
            let stock = '';
            for (let i = 0; i < options.length; i++) {
                if (options[i].value === prod_id) {
                    name = options[i].getAttribute('name');
                    price = options[i].getAttribute('price');
                    stock = options[i].getAttribute('stock');
                    break;
                }
            }
            row.querySelector('.name').textContent = name ? name : 'No disponible';
            row.querySelector('.price').textContent = price ? price : 'No disponible';
            row.querySelector('.stock').textContent = stock ? stock : 'No disponible';
            amountInput = row.querySelector('input[name*="[amount]"]');
            const amount = parseFloat(amountInput.value) || 0; 
            const totalCell = row.querySelector('.total');  
            const total = amount * price;  
            totalCell.textContent = total.toFixed(2); 
            updateTotalSale();
        }
        if (event.target.matches('input[name*="[amount]"]')) {
            const input = event.target;
            const row = input.closest('tr');  
            const amount = parseFloat(input.value) || 0; 
            const priceSpan = row.querySelector('.price');
            const price = parseFloat(priceSpan.textContent) || 0;  
            const totalCell = row.querySelector('.total');  
            const total = amount * price;  
            totalCell.textContent = total.toFixed(2); 
            updateTotalSale();
        }
    });
    function updateTotalSale() {
        const rows = document.querySelectorAll('#sale-details-body tr');  // Todas las filas del cuerpo de la tabla
        let totalSale = 0;
        rows.forEach(function(row) {
            const totalCell = row.querySelector('.total');
            const rowTotal = parseFloat(totalCell.textContent) || 0;
            totalSale += rowTotal;
        });
        document.getElementById('total-sale').textContent = totalSale.toFixed(2);
        console.log(totalSale);
    }
</script>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>