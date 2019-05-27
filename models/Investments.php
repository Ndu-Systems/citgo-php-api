<?php

class Investments
{
    // DB Stuff
    private $conn;

    // Consutructor
    public function __construct($db)
    {
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
    ) {
        $query = "INSERT INTO investment(InvestmentId, ClientId,Amount, Profit, Total, Name, Type, InvestmentDate, CreateUserId, ModifyUserId, StatusId) 
                    VALUES (uuid(),?,?,0,0 ,? ,?,Now() ,? ,? ,? )";
        $stmt = $this->conn->prepare($query);

        try {
            //code...
            if (
                $stmt->execute(array(
                    $ClientId,
                    $Amount,
                    $Name,
                    $Type,
                    $ClientId,
                    $ClientId,
                    2

                ))
            ) {
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
            WHEN StatusId = 3 THEN 'AWAITING-CONFIRMATION'
            ELSE 'INACTIVE'
            END AS Status
            FROM
            investment
            where ClientId = ? AND StatusId in (1,2,3)
            order by  CreateDate desc
            ";

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // Execute query
        $stmt->execute(array($ClientId));

        return $stmt;
    }

    public function updateInvestment(
        $ClientId,
        $Amount,
        $Profit,
        $Total,
        $Name,
        $Type,
        $ModifyUserId,
        $StatusId,
        $InvestmentId
    ) {
        $query = "
            UPDATE investment SET  
                ClientId=?, 
                Amount=?, 
                Profit=?, 
                Total=?, 
                Name=?, 
                Type=?, 
                ModifyDate=now(), 
                ModifyUserId=?, 
                StatusId=? 
                WHERE 
                InvestmentId =?

            ";

        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $ClientId,
                $Amount,
                $Profit,
                $Total,
                $Name,
                $Type,
                $ModifyUserId,
                $StatusId,
                $InvestmentId
            ))) {
                return $this->getInvestmentById($InvestmentId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }


    public function getInvestmentById($InvestmentId)
    {
        $query = "SELECT * FROM investment WHERE InvestmentId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($InvestmentId));

        if ($stmt->rowCount()) {
            $emails = $stmt->fetch(PDO::FETCH_ASSOC);
            return  $emails;
        }
    }
    public function getInvestmentAndDocumentsById($InvestmentId)
    {
        $query = "SELECT *,
        CASE
            WHEN i.StatusId = 1 THEN 'ACTIVE'
            WHEN  i.StatusId = 2 THEN 'PENDING'
            WHEN  i.StatusId = 3 THEN 'AWAITING-CONFIRMATION'
            ELSE 'INACTIVE'
            END AS Status,
            i.CreateDate as InvestmentDate
         FROM investment i left join documents d 
                   on i.InvestmentId = d.InvestmentId 
                  WHERE i.InvestmentId =?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($InvestmentId));

        if ($stmt->rowCount()) {
            $emails = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return  $emails;
        }
    }
}
