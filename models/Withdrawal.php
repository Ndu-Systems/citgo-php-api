

<?php


class Withdrawal
{
    //DB Stuff
    private $conn;
    //Constructor to DB

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function getWithdrawalsByStatus($StatusId)
    {
        $query = "SELECT * FROM withdrawal WHERE StatusId=?";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($StatusId));

        return $stmt;
    }
    public function getWithdrawalsForClient($ClientId)
    {
        $query = "
                SELECT
                w.WithdrawalId,
                w.Amount,
                w.CreateDate AS WithdrawalCreateDate,
                cw.Id,
                cw.SourceInvestmentId,
                cw.SourceBonusId,
                cw.Amount
                FROM
                clientwithdrawals cw
                JOIN withdrawal w ON
                cw.WithdrawalId = w.WithdrawalId
                WHERE
                cw.ClientId =?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($ClientId));

        return $stmt;
    }

    //Add
    public function add(
        $Amount,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        $query = "INSERT INTO withdrawal (
                                    WithdrawalId,
                                    Amount,
                                    CreateUserId,
                                    ModifyUserId,
                                    StatusId
                                        )
                    VALUES (?, ?, ?, ?, ?)           
                   ";
        $id = getUuid($this->conn);
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $id,
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

    //update
    public function update(
        $WithdrawalId,
        $Amount,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "UPDATE withdrawal SET 
      
                    
                    Amount=?,
                    CreateUserId=?,
                    ModifyUserId=?,
                    StatusId=?
        where       WithdrawalId =?
        ";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(
                $WithdrawalId,
                $Amount,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ));
        } catch (Exception $e) {
            return $e;
        }
    }

    //get cleint to return
    public function getById($WithdrawalId)
    {
        $query = "SELECT * FROM withdrawal WHERE WithdrawalId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($WithdrawalId));
        $cleint  = null;
        if ($stmt->rowCount()) {
            $cleint = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return $cleint;
    }
}
