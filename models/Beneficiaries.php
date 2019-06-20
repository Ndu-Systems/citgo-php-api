
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

    public function getClientBeneficiaries($ClientId){
        $query = "SELECT * from beneficiaries where ClientId = ?";
            $stmt = $this->conn->prepare($query);
            $stmt->execute(array($ClientId));
    
            if ($stmt->rowCount()) {
                return $stmt->fetchAll(PDO::FETCH_ASSOC);
            }
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
        $ClientId,
        $Name,
        $Surname,
        $IDNumber,
        $Relation,
        $CreateUserId,
        $ModifyUserId,
        $StatusId,
        $BeneficiaryId
    ) {
        $query = "UPDATE beneficiaries  set
        ClientId=?,
        Name=?,
        Surname=?,
        IDNumber=?,
        Relation=?,
       CreateUserId=?,
       ModifyDate=Now(),
       ModifyUserId=?,
       StatusId=?
       where 
       BeneficiaryId =?

";
try {
   $stmt = $this->conn->prepare($query);
   $stmt->execute(array(  
    $ClientId,
    $Name,
    $Surname,
    $IDNumber,
    $Relation,
    $CreateUserId,
    $ModifyUserId,
    $StatusId,
    $BeneficiaryId
));

   return $this->getById($ClientId);
} catch (Exception $e) {
   return $e;
}
    }
    public function getById($ClientId)
    {

        $query = "SELECT * from beneficiaries where BeneficiaryId = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ClientId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
}
