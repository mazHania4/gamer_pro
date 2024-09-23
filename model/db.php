<?php

class DB {

    private $host = 'localhost';
    private $port = '5432';
    private $dbname = 'gamer_pro';
    private $conn;


    public function getConn($user,  $password) {
        $this->conn = null;
        try {

            // Conectar a la base de datos
            $this->conn = pg_connect("host=$this->host port=$this->port dbname=$this->dbname user=$user password=$password")
                or die('Could not connect: ' . pg_last_error());

            // Cerrar la conexión
            //pg_close($this->conn);
            
        }catch (Exception $e){
            echo("Hubo un problema, $e");
        }
        return $this->conn;
    }

    public function getPDO($user,  $password) {
        $this->conn = null;

        try {
            $this->conn = new PDO("pgsql:host=" . $this->host .";port=" . $this->port . ";dbname=" . $this->dbname . ";user=" . $user . ";password=" . $password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch(PDOException $exception) {
            echo "Error de conexión: " . $exception->getMessage();
        }

        return $this->conn;
    }
}

?>
