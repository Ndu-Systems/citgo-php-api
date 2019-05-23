
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


    public function getActive()
    {

        $query = "SELECT * FROM bankingdetails WHERE Status =? ORDER BY QuiID";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array(1));

        return $stmt;
    }

    //Add  
    public function add(
        $ClientId,
        $BankName,
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
                                        BankBranch,
                                        AccountNumber,
                                        AccountType,
                                        CreateUserId,
                                        ModifyUserId,
                                        StatusId
                                        )
                    VALUES (UUID(),?, ?, ?, ?, ?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $ClientId,
                $BankName,
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
        $QuiID
    ) {
        $query = "UPDATE que SET Status = ? Where QuiID=? ";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(2, $QuiID));
        } catch (Exception $e) {
            return $e;
        }
    }
}
