

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
            (SELECT COUNT(*) FROM investment where StatusId=?) AS pendingShares,
            (SELECT COUNT(*) FROM investment where StatusId=?) AS activeShares,
            (SELECT COUNT(*) FROM clients where StatusId = ?) AS activeClients
        FROM DUAL
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array(3,1,1));
        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }else{
            $r=Array();
            return $r;
        }
    }

}
