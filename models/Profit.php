
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
                    p.ProfitId ,
                    p.ProfitAmount,
                    p.CreateDate,
                    p.StatusId AS ProfitId,
                    YEAR(p.CreateDate) AS PYear,

                    CASE
                    WHEN  MONTH(p.CreateDate) = 1 THEN 'January'
                    WHEN  MONTH(p.CreateDate) = 2 THEN 'February'
                    WHEN  MONTH(p.CreateDate) = 3 THEN 'March'
                    WHEN  MONTH(p.CreateDate) = 4 THEN 'April'
                    WHEN  MONTH(p.CreateDate) = 5 THEN 'May'
                    WHEN  MONTH(p.CreateDate) = 6 THEN 'June'
                    WHEN  MONTH(p.CreateDate) = 7 THEN 'July'
                    WHEN  MONTH(p.CreateDate) = 8 THEN 'August'
                    WHEN  MONTH(p.CreateDate) = 9 THEN 'September'
                    WHEN  MONTH(p.CreateDate) = 10 THEN 'October'
                    WHEN  MONTH(p.CreateDate) = 11 THEN 'November'
                    WHEN  MONTH(p.CreateDate) = 12 THEN 'December'
                    
                    END AS PMonth
                    FROM
                clients cl
                    INNER JOIN
                investment i ON cl.ClientId = i.ClientId
                    INNER JOIN
                profit p ON i.InvestmentId = p.InvestmentId
            WHERE
                cl.ClientId = ?

            ORDER BY     (p.CreateDate) 
        ";
//export const MONTHS_MAP = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']
        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($clentId));

        return $stmt;
    }
}
