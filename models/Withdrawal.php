

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
        $query = "SELECT
        c.FirstName, c.Surname, c.ClientId, w.Amount, w.CreateDate
    FROM
        withdrawal w
    LEFT JOIN clients c ON
        w.ClientId = c.ClientId
    WHERE
        w.StatusId = ?";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($StatusId));

        return $stmt;
    }
    public function getWithdrawalsForClient($ClientId)
    {
        $query = "SELECT * from withdrawal w left join clients c on w.ClientId= c.ClientId WHERE w.ClientId =?";

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
        $StatusId,
        $ClientId

    ) {
        $query = "INSERT INTO withdrawal (
                                    WithdrawalId,
                                    Amount,
                                    CreateUserId,
                                    ModifyUserId,
                                    StatusId,
                                    ClientId
                                        )
                    VALUES (?, ?, ?, ?, ?,?)           
                   ";
        $id = getUuid($this->conn);
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $id,
                $Amount,
                $CreateUserId,
                $ModifyUserId,
                $StatusId,
                $ClientId
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
