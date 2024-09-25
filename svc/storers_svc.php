<?php

include '../model/db.php';

class Storers_svc {
    
    private $db;
    private $pdo;

    function __construct() {
        $this->db = new DB();
        $this->pdo = $this->db->getPDO("gp_storers", "gp_storers_pass");
    }

    public function getProducts($branch){
        $stmt = $this->pdo->prepare("SELECT * FROM get_branch_inventory(" . $branch . ");");
        $stmt->execute();
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $products;
    }

    public function getProductNames(){
        $stmt = $this->pdo->prepare("SELECT product_id id, name FROM product_mgmt.products ORDER BY name ASC;");
        $stmt->execute();
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $products;
    }

    public function insert_inventory($branch_id, $prod_id, $amount, $location, $notes){
        $stmt = $this->pdo->prepare("SELECT insert_inventory (:branch, :prod, :amount, :location, :notes);");
        $stmt->bindParam(':branch', $branch_id, PDO::PARAM_INT);
        $stmt->bindParam(':prod', $prod_id, PDO::PARAM_INT);
        $stmt->bindParam(':amount', $amount, PDO::PARAM_INT);
        $stmt->bindParam(':location', $location, PDO::PARAM_STR);
        $stmt->bindParam(':notes', $notes, PDO::PARAM_STR);
        try {
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            return false;
        }
    }

}
?>