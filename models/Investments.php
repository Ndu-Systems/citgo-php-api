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
            $Profit, 
            $Total, 
            $Name, 
            $Type, 
            $InvestmentDate, 
            $CreateUserId, 
            $ModifyUserId, 
            $StatusId
        )
        {
           $query = "";
        }
}