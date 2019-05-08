
<?php


class Profit
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function getClientProfit($InvestmentId)
    {

        $query = "SELECT * FROM profit WHERE InvestmentId =? and StatusId=?";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($InvestmentId,1));

        return $stmt;
    }



}
