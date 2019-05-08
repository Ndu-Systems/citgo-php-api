
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


    public function getClientProfit($clentId)
    {

        $query = "SELECT 
                   cl.ClientId,
                    cl.FirstName,
                    cl.Surname,
                    i.Amount AS InvestmentAmount,
                    i.Name as InvestmentName,
                    i.InvestmentId,
                    p.ProfitAmount,
                    p.CreateDate,
                    p.StatusId AS ProfitId,
                    MONTH(p.CreateDate) AS PMonth,
                    YEAR(p.CreateDate) AS PYear
            FROM
                clients cl
                    INNER JOIN
                investment i ON cl.ClientId = i.ClientId
                    INNER JOIN
                profit p ON i.InvestmentId = p.InvestmentId
            WHERE
                cl.ClientId = ?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($clentId));

        return $stmt;
    }
}
