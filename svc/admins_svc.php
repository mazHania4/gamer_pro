<?php

include '../../model/db.php';

class Admins_svc {
    
    private $db;
    private $pdo;

    function __construct() {
        $this->db = new DB();
        $this->pdo = $this->db->getPDO("gp_admin", "gp_admin_pass");
    }
    

    public function get_discount_history($init_date, $final_date) {
        $stmt = $this->pdo->prepare("SELECT * FROM get_discount_history(:init_date, :final_date)");
        $stmt->bindParam(':init_date', $init_date, PDO::PARAM_STR);
        $stmt->bindParam(':final_date', $final_date, PDO::PARAM_STR);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $res;
    }

    public function get_top_10_sales($init_date, $final_date) {
        $stmt = $this->pdo->prepare("SELECT * FROM get_top_10_sales(:init_date, :final_date)");
        $stmt->bindParam(':init_date', $init_date, PDO::PARAM_STR);
        $stmt->bindParam(':final_date', $final_date, PDO::PARAM_STR);
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $res;
    }

    public function getTop_2_branches_revenue() {
        $stmt = $this->pdo->prepare("SELECT * FROM top_2_branches_revenue");
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $res;
    }


    public function getTop_10_products_sales() {
        $stmt = $this->pdo->prepare("SELECT * FROM top_10_products_sales");
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $res;
    }


    public function getTop_10_customers_spent() {
        $stmt = $this->pdo->prepare("SELECT * FROM top_10_customers_spent");
        $stmt->execute();
        $res = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $res;
    }


}
?>