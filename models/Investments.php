<?php 

class Investments {
      // DB Stuff
      private $conn;

        // properties
        public $InvestmentId; 
        public $Amount; 
        public $Profit; 
        public $Total; 
        public $Name; 
        public $Type; 
        public $InvestmentDate; 
        public $CreateUserId; 
        public $ModifyUserId; 

        // Consutructor
        public function __construct($db) {
            $this->conn = $db;
        }


        // get active, closed, suspended investments for administrator
        public function read($statusId)
        {
            $query = "SELECT * FROM investment where StatusId = ?";

            // prepare query statement
            $stmt = $this->conn->prepare($query);

            // Execute query
            $stmt->execute(array($statusId));
            
            return $stmt;
        }

        // insert investment
        public function insert(
            $Amount, 
            $ClientId,        
            $Name, 
            $Type        
        )
        {
           $query = "INSERT INTO investment(InvestmentId, ClientId,Amount, Profit, Total, Name, Type, InvestmentDate, CreateUserId, ModifyUserId, StatusId) 
                    VALUES (uuid(),?,?,0,0 ,? ,?,Now() ,? ,? ,? )";
            $stmt= $this->conn->prepare($query);
           
            try {
                //code...
                if(
                    $stmt->execute(array(
                        $ClientId,
                        $Amount, 
                        $Name, 
                        $Type, 
                        $ClientId,  
                        $ClientId,  
                        2
        
                    ))){
                        return 1;
                    }
            } catch (Exception $ex) {
                return $ex;
            }
        }

        public function readByClientId($ClientId)
        {
            $query = "
            SELECT 
            InvestmentId,
            ClientId,
            Amount,
            Profit,
            Total,
            Name,
            Type,
            InvestmentDate,
            CreateDate,
            CreateUserId,
            ModifyDate,
            ModifyUserId,
            StatusId,
            CASE
            WHEN StatusId = 1 THEN 'ACTIVE'
            WHEN StatusId = 2 THEN 'PENDING'
            ELSE 'INACTIVE'
            END AS Status
            FROM
            investment
            where ClientId = ? AND StatusId in (1,2)";

            // prepare query statement
            $stmt = $this->conn->prepare($query);

            // Execute query
            $stmt->execute(array($ClientId));
            
            return $stmt;
        }
}