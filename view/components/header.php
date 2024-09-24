<?php session_start(); ?>
<nav class="navbar navbar-expand-lg bg-dark fixed-top" data-bs-theme="dark">
    <div class="container">
        <a class="navbar-brand" href="/gamer_pro/index.php"><img width="350px" src="/gamer_pro/view/assets/img/logo.png" alt="..."></a>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav text-uppercase ms-auto py-4 py-lg-0">
                <li class="nav-item"><a class="nav-link" href="/gamer_pro/ctrl/redirect.php">Home</a></li>
                <?php if (!isset($_SESSION['username'])): ?> 
                    <li class="nav-item"><a class="nav-link" href="#login">Iniciar sesión</a></li>
                <?php endif; ?>
                <?php if (isset($_SESSION['username'])): ?> 
                    <li class="nav-item"> <a class="nav-link"><?php echo "usuario: " . $_SESSION['username'] . " --- Sucursal: " . $_SESSION['branch']?> </a> </li>
                    <li class="nav-item"><a class="nav-link" href="/gamer_pro/ctrl/logout.php">Cerrar sesión</a></li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</nav>

<header class="masthead">
    <div class="container">
        <?php if (!isset($_SESSION['role'])): ?> 
            <div class="masthead-subheading">Bienvenido a Gamer Pro Xela</div>
            <div class="masthead-heading text-uppercase">Tómate un descanso, juega un videojuego!</div>
        <?php endif; ?>
        <?php if (isset($_SESSION['role'])): ?> 
            <div class="masthead-subheading">Gamer Pro Xela</div>
            <div class="masthead-heading text-uppercase">Modulo <?php echo $_SESSION['role']; ?></div>
        <?php endif; ?>
    </div>
</header>

