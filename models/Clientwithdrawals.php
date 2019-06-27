

<?php


class Clientwithdrawals
{
    //DB Stuff
    private $conn;
    //Constructor to DB

    public function __construct($db)
    {
        $this->conn = $db;
    }



    //Add
    public function add(
        $ClientId,
        $WithdrawalId,
        $SourceInvestmentId,
        $SourceBonusId,
        $Amount,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        $query = "INSERT INTO clientwithdrawals (
                                   id,
                                    ClientId,
                                    WithdrawalId,
                                    SourceInvestmentId,
                                    SourceBonusId,
                                    Amount,
                                    CreateUserId,
                                    ModifyUserId,
                                    StatusId           
                                        )
                    VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)           
                   ";
        $id = getUuid($this->conn);
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $id,
                $ClientId,
                $WithdrawalId,
                $SourceInvestmentId,
                $SourceBonusId,
                $Amount,
                $CreateUserId,
                $ModifyUserId,
                $StatusId           
            ))) {
                return $this->getById($id);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    
    //get cleint to return
    public function getById($Id)
    {

        $query = "SELECT * FROM clientwithdrawals WHERE Id = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($Id));
        $cleint  = null;
        if($stmt->rowCount()){
            $cleint = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return $cleint;
    }
}
