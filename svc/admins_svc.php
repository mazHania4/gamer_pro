<?php

include '../../model/db.php';

class Admins_svc {
    
    private $db;
    private $pdo;

    function __construct() {
        $this->db = new DB();
        $this->pdo = $this->db->getPDO("gp_admin", "gp_admin_pass");
    }

    public function upgrade_card($nit){
        try{
            $stmt = $this->pdo->prepare("SELECT upgrade_card(:nit)");
            $stmt->bindParam(':nit', $nit, PDO::PARAM_INT);
            $stmt->execute();  
            return true;
        } catch(Exception $e){
            return false;
        }
    }

    public function get_client_card_info($nit){
        $stmt = $this->pdo->prepare("SELECT * FROM get_client_card_info(:nit)");
        $stmt->bindParam(':nit', $nit, PDO::PARAM_INT);
        $stmt->execute();
        $res = $stmt->fetch();     
        return $res;
    }
    
    public function newEmployee($employee_type, $branch_id, $name, $checkout_number, $username, $password) {
        try{
            $hash = hash('sha256', $password); 
            if ($employee_type === 'cashier') {
                $sql = "INSERT INTO branch_mgmt.cashiers (branch_id, name, username, password, checkout_number)
                        VALUES (:branch_id, :name, :username, :password, :checkout_number)";
                $stmt = $this->pdo->prepare($sql);
                $stmt->bindParam(':checkout_number', $checkout_number); // Para cajeros
            } elseif ($employee_type === 'storer') {
                $sql = "INSERT INTO branch_mgmt.storers (branch_id, name, username, password)
                        VALUES (:branch_id, :name, :username, :password)";
                $stmt = $this->pdo->prepare($sql);
            } elseif ($employee_type === 'inventory_emp') {
                $sql = "INSERT INTO branch_mgmt.inventory_emp (branch_id, name, username, password)
                        VALUES (:branch_id, :name, :username, :password)";
                $stmt = $this->pdo->prepare($sql);
            }
            $stmt->bindParam(':branch_id', $branch_id);
            $stmt->bindParam(':name', $name);
            $stmt->bindParam(':username', $username);
            $stmt->bindParam(':password', $hash);

            $stmt->execute();
            return true;
        } catch (Exception $e) {
            return false;
        }
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