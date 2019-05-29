

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
        (SELECT 
                COUNT(*)
            FROM
                clients) AS clients,
        (SELECT 
                COUNT(*)
            FROM
            investment) AS investments,
                (SELECT 
                COUNT(*)
            FROM
            users) AS users
        FROM DUAL
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array());
        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }else{
            $r=Array();
            return $r;
        }
    }

}
