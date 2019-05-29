<?php


class Userroles
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function add(
        $UserId,
        $RoleId,
        $CreateUserId,
        $ModifyUserId,
        $StatusId
    ) {
        if ($this->getRoleByUserId($UserId) > 0) {
            return $this->getFullUserById($UserId);
        }
        $query = "INSERT INTO userroles (
                                        UserId,
                                        RoleId,
                                        CreateUserId,
                                        ModifyUserId,
                                        StatusId
                                        )
                    VALUES (?, ?, ?, ?,?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $UserId,
                $RoleId,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getFullUserById($UserId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

    public function getRoleByUserId($UserId)
    {
        $query = "SELECT * FROM userroles WHERE UserId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($UserId));

        return $stmt->rowCount();
    }

    public function getFullUserById($UserId)
    {

        $query = "SELECT * FROM userroles WHERE UserId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($UserId));
        $cleint  = null;
        if($stmt->rowCount()){
            $cleint = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return $cleint;
    }
}
