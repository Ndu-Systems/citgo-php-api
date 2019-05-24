<?php

class Accounts {

    // connect to database
    private $conn;
    
    public function __construct($db)
    {
       $this->conn = $db;
    }

    public function updatePassword(
        $Password ,           
        $Email,
        $ModifyUserId 
    )
    {
        $result = $this->conn->prepare("
        UPDATE users 
        SET Password = ?,
        ModifyUserId = ?,
        ModifyDate = now()
        WHERE Email = ?
        ");

        if($result->execute(array($Password, $ModifyUserId, $Email))){
            echo 1;
        }
        else{
            echo json_encode("error while trying to update password please try again");
        }
    }

}