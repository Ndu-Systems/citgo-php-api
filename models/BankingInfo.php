
<?php


class BankingInfo
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }

public function getClientBankingDetails($ClientId){
    $query = "SELECT * from bankingdetails where ClientId = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ClientId));

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
}

    //Add  
    public function add(
        $ClientId,
        $BankName,
        $AccountHolder,
        $BankBranch,
        $AccountNumber,
        $AccountType,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "INSERT INTO bankingdetails (
                                        BankingDetailsId,
                                        ClientId,
                                        BankName,
                                        AccountHolder,
                                        BankBranch,
                                        AccountNumber,
                                        AccountType,
                                        CreateUserId,
                                        ModifyUserId,
                                        StatusId
                                        )
                    VALUES (UUID(),?, ?, ?, ?, ?,?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $ClientId,
                $BankName,
                $AccountHolder,
                $BankBranch,
                $AccountNumber,
                $AccountType,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return true;
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    //update  
    public function update(
        $ClientId,
        $BankName,
        $AccountHolder,
        $BankBranch,
        $AccountNumber,
        $AccountType,
        $CreateUserId,
        $ModifyUserId,
        $StatusId,
        $BankingDetailsId
    ) {
        $query = "UPDATE bankingdetails  set
                 ClientId=?,
                BankName=?,
                AccountHolder=?,
                BankBranch=?,
                AccountNumber=?,
                AccountType=?,
                CreateUserId=?,
                ModifyDate=Now(),
                ModifyUserId=?,
                StatusId=?
                where 
                BankingDetailsId =?
        
        ";
        try {
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array(  
            $ClientId,
            $BankName,
            $AccountHolder,
            $BankBranch,
            $AccountNumber,
            $AccountType,
            $CreateUserId,
            $ModifyUserId,
            $StatusId,
            $BankingDetailsId));

            return $this->getById($ClientId);
        } catch (Exception $e) {
            return $e;
        }
    }
    public function getById($ClientId)
    {

        $query = "SELECT * from bankingdetails where ClientId = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ClientId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
}
