<?php

include '../model/db.php';

class Login_svc {
    
    private $db;
    private $pdo;

    function __construct() {
        $this->db = new DB();
        $this->pdo = $this->db->getPDO("gp_login", "gp_login_pass");
    }

    public function validateLogin($username, $password, $role){
        $hash = hash('sha256', $password); 
        $role_ = substr($role, 0, strlen($role)-1);
        $stmt = $this->pdo->prepare("SELECT *,". $role_ . "_id as user_id FROM branch_mgmt." . $role . " WHERE username = :username AND password = :password AND state = 'active'");
        $stmt->bindParam(':username', $username, PDO::PARAM_STR);
        $stmt->bindParam(':password', $hash, PDO::PARAM_STR);
        
        // Ejecutar la consulta
        $stmt->execute();
        $user = $stmt->fetch();
        
        return $user;
    }

}

?>
