

<?php


class Stat
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function getAdminStat()
    {

        $query = "
        SELECT 
        (SELECT COUNT(*) FROM investment where StatusId=1) AS activeShares ,
        (SELECT COUNT(*) FROM investment where StatusId=2) AS pendingShares,
         (SELECT COUNT(*) FROM investment where StatusId=3) AS awiatingConframation,
         
        (SELECT COUNT(*) FROM clients where StatusId =4 ) AS activeClients,
        (SELECT COUNT(*) FROM clients where StatusId = 2) AS waitingAccountConfirmation,
        (SELECT COUNT(*) FROM clients where StatusId = 10) AS blockedClients,

        (SELECT COUNT(*) FROM withdrawal where StatusId = 2) AS pendingWithdrawal

        
    FROM DUAL 
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array());
        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }else{
            $r=Array();
            return $r;
        }
    }

}
