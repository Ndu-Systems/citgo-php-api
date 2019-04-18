
<?php


class Beneficiaries
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

        $query = "SELECT * FROM beneficiaries WHERE Status =? ORDER BY QuiID";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array(1));

        return $stmt;
    }

    //Add  
    public function add(
        $ClientId,
        $Name,
        $Surname,
        $IDNumber,
        $Relation,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        $query = "INSERT INTO beneficiaries (
                                        BeneficiaryId,
                                        ClientId,
                                        Name,
                                        Surname,
                                        IDNumber,
                                        Relation,
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
                $Name,
                $Surname,
                $IDNumber,
                $Relation,
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
