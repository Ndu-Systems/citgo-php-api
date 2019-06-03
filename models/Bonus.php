

<?php


class Bonus
{
    //DB Stuff
    private $conn;
    //Constructor to DB

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function getClientBonuses($ClientId)
    {
        $query = "SELECT * FROM bonus WHERE ClientId =? and StatusId=?";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($ClientId,1));

        return $stmt;
    }

    //Add
    public function add(
        $bonusId,
        $Amount,
        $ClientId,
        $ParentId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        $query = "INSERT INTO bonus (
                                        bonusId, 
                                        Amount, 
                                        ClientId, 
                                        ParentId, 
                                        CreateUserId, 
                                        ModifyUserId, 
                                        StatusId
                                        )
                    VALUES (UUID(),?, ?, ?, ?, ?,?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $bonusId,
                $Amount,
                $ClientId,
                $ParentId,
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
        $bonusId
    ) {
        $query = "UPDATE bonus SET 
      
        Amount =?, 
        ClientId =?, 
        ParentId =?, 
        CreateUserId =?, 
        ModifyUserId =?, 
        StatusId =?
        where   bonusId =?
        ";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(
            $Amount,
            $ClientId,
            $ParentId,
            $CreateUserId,
            $ModifyUserId,
            $StatusId,
            $bonusId));
        } catch (Exception $e) {
            return $e;
        }
    }
}
