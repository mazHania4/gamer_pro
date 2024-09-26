<?php

include '../model/db.php';

class Cashiers_svc {
    
    private $db;
    private $pdo;

    function __construct() {
        $this->db = new DB();
        $this->pdo = $this->db->getPDO("gp_cashier", "gp_cashier_pass");
    }

    public function insertSale($nit, $cashier, $points, $items){
        try {
            $this->pdo->beginTransaction();
            
            //inicializar venta
            $stmt = $this->pdo->prepare("INSERT INTO sales_mgmt.sales (client_nit, cashier_id) VALUES (:nit, :cashier) RETURNING sale_id");
            $stmt->execute(['nit' => $nit, 'cashier' => $cashier]);
            $res = $stmt->fetch();
            $sale_id = $res[0];

            //llenar detalles
            foreach($items as $item){
                $stmt = $this->pdo->prepare("INSERT INTO sales_mgmt.sale_items (sale_id, product_id, amount) VALUES (:sale_id, :product_id, :amount)");
                $stmt->execute([
                    'sale_id' => $sale_id, 
                    'product_id' => $item['id'],
                    'amount' => $item['amount']
                ]);
            }

            //aplica descuento de puntos
            $stmt = $this->pdo->prepare("INSERT INTO sales_mgmt.points_usage (points, sale_id) VALUES (:points, :sale_id)");
            $stmt->execute(['points' => $points, 'sale_id' => $sale_id]);

            //acumula puntos
            $stmt = $this->pdo->prepare("SELECT add_points(:sale_id)");
            $stmt->execute(['sale_id' => $sale_id]);

            $this->pdo->commit();
            return true;
        } catch (PDOException $e){
            $this->pdo->rollBack();
            return false;    
        }
    }

    public function registerClient($nit, $name, $phone_number){
        try {
            $stmt = $this->pdo->prepare("INSERT INTO sales_mgmt.clients (nit, name, phone_number) VALUES (:nit, :name, :phone_number)");
            $stmt->bindParam(':nit', $nit);
            $stmt->bindParam(':name', $name);
            $stmt->bindParam(':phone_number', $phone_number);
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            return false;
        }

    }

    public function getProductNames($branch){
        $stmt = $this->pdo->prepare("SELECT * FROM get_branch_inventory(" . $branch . ");");
        $stmt->execute();
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $products;
    }

    public function getClients(){
        $stmt = $this->pdo->prepare("SELECT nit, points, name FROM sales_mgmt.clients;");
        $stmt->execute();
        $clients = $stmt->fetchAll(PDO::FETCH_ASSOC);     
        return $clients;
    }

}
?>