<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Página de Login</title>
    <?php include "view/components/head_imports.html"; ?>
</head>
<body>

    <?php include "view/components/header.php"; ?>

<!-- Login -->
<section class="bg-light py-5 border-bottom" id="login">
    <div class="container px-5 my-5">
        <!-- Mostrar mensaje de error de la sesión si existe -->
        <?php if (isset($_SESSION['error'])): ?>
            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                <?php echo htmlspecialchars($_SESSION['error']); ?>
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            <?php unset($_SESSION['error']); ?>
        <?php endif; ?>
        <div class="text-center mb-5">
            <h2 class="fw-bolder">Inicia Sesión</h2>
            <p class="lead mb-0">Seleccione su tipo de usuario</p>
        </div>            
        <div class="row gx-5 justify-content-center">
            <!-- Card cajero -->
            <div class="col-lg-4 col-xl-3">
                <div class="card mb-5 mb-xl-0 border-success">
                    <div class="card-body p-4">
                        <div class="mb-3 text-center">
                            <span class="display-1"><i style="color: var(--bs-success)" class="fa-solid fa-receipt"></i></span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            <li class="mb-2">
                                <strong>CAJERO</strong>
                            </li>
                            <li class="mb-2 text-muted">
                                Maneja ventas, registra y modifica clientes
                            </li>
                        </ul>
                        <div class="d-grid">    
                            <button type="button" class="btn btn-success m-2" data-bs-toggle="modal" data-bs-target="#loginCajeroModal">Iniciar sesión</button>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Card bodega -->
            <div class="col-lg-4 col-xl-3">
                <div class="card mb-5 mb-xl-0 border-danger">
                    <div class="card-body p-4">
                        <div class="mb-3 text-center">
                            <span class="display-1"><i style="color: var(--bs-danger)" class="fa-solid fa-boxes-packing"></i></span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            <li class="mb-2">
                                <strong>BODEGA</strong>
                            </li>
                            <li class="mb-2 text-muted">
                                Controla ingreso de productos
                            </li>
                        </ul>
                        <div class="d-grid">
                            <button type="button" class="btn btn-danger m-2" data-bs-toggle="modal" data-bs-target="#loginBodegueroModal">Iniciar sesión</button>    
                        </div>
                    </div>
                </div>
            </div> 
            <!-- Card inventario -->
            <div class="col-lg-4 col-xl-3">
                <div class="card mb-5 mb-xl-0 border-info">
                    <div class="card-body p-4">
                        <div class="mb-3 text-center">
                            <span class="display-1"><i style="color: var(--bs-info)" class="fa-solid fa-list-check"></i></span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            <li class="mb-2">
                                <strong>INVENTARIO</strong>
                            </li>
                            <li class="mb-2 text-muted">
                                Traslada productos de bodega a estanterías
                            </li>
                        </ul>
                        <div class="d-grid">
                            <button type="button" class="btn btn-info m-2" data-bs-toggle="modal" data-bs-target="#loginInventarioModal">Iniciar sesión</button>    
                        </div>
                    </div>
                </div>
            </div>
            <!-- Card admin -->
            <div class="col-lg-4 col-xl-3">
                <div class="card mb-5 mb-xl-0 border-warning">
                    <div class="card-body p-4">
                        <div class="mb-3 text-center">
                            <span class="display-1"><i style="color: var(--bs-warning)" class="fa-solid fa-user-tie"></i></span>
                        </div>
                        <ul class="list-unstyled mb-4">
                            <li class="mb-2">
                                <strong>ADMINISTRADOR</strong>
                            </li>
                            <li class="mb-2 text-muted">
                                Generar reportes y registrar trabajadores
                            </li>
                        </ul>
                        <div class="d-grid">
                            <button type="button" class="btn btn-warning m-2" data-bs-toggle="modal" data-bs-target="#loginAdminModal">Iniciar sesión</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<!-- Modal Cajero -->
<div class="modal fade" id="loginCajeroModal" tabindex="-1" aria-labelledby="loginCajeroLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginCajeroLabel">Login Cajero</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="ctrl/login.php" method="POST">
                    <input type="hidden" name="role" value="cashiers">
                    <div class="mb-3">
                        <label for="username" class="form-label">Nombre de usuario</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-success">Iniciar sesión</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal Administrador -->
<div class="modal fade" id="loginAdminModal" tabindex="-1" aria-labelledby="loginAdminLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginAdminLabel">Login Administrador</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="/gamer_pro/ctrl/login.php" method="POST">
                    <input type="hidden" name="role" value="admins">
                    <div class="mb-3">
                        <label for="username" class="form-label">Nombre de usuario</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-warning">Iniciar sesión</button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Modal Bodeguero -->
<div class="modal fade" id="loginBodegueroModal" tabindex="-1" aria-labelledby="loginBodegueroLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginBodegueroLabel">Login Bodeguero</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="ctrl/login.php" method="POST">
                    <input type="hidden" name="role" value="storers">
                    <div class="mb-3">
                        <label for="username" class="form-label">Nombre de usuario</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-danger">Iniciar sesión</button>
                </form>
            </div>
        </div>
    </div>
</div>


<!-- Modal Inventario -->
<div class="modal fade" id="loginInventarioModal" tabindex="-1" aria-labelledby="loginInventarioLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="loginInventarioLabel">Login Inventario</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="ctrl/login.php" method="POST">
                    <input type="hidden" name="role" value="inventory_emp">
                    <div class="mb-3">
                        <label for="username" class="form-label">Nombre de usuario</label>
                        <input type="text" class="form-control" id="username" name="username" required>
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Contraseña</label>
                        <input type="password" class="form-control" id="password" name="password" required>
                    </div>
                    <button type="submit" class="btn btn-info">Iniciar sesión</button>
                </form>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>

</body>
</html>
