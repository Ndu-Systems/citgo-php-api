

<?php


class Documents
{
    //DB Stuff
    private $conn;
    //Constructor to DB    

    public function __construct($db)
    {
        $this->conn = $db;
    }


    public function getClientDocuments($ClientId)
    {

        $query = "SELECT * FROM documents WHERE ClientId =? and StatusId=?";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($ClientId,1));

        return $stmt;
    }

    //Add  
    public function add(
        $DocumentId, 
        $ClientId, 
        $DocumentCode, 
        $DocumentName, 
        $DocumentUrl, 
        $CreateUserId, 
        $ModifyUserId, 
        $StatusId
    ) {
        $query = "INSERT INTO documents (
                                        DocumentId, 
                                        ClientId, 
                                        DocumentCode, 
                                        DocumentName, 
                                        DocumentUrl, 
                                        CreateUserId, 
                                        ModifyUserId, 
                                        StatusId
                                        )
                    VALUES (UUID(),?, ?, ?, ?, ?, ?, ?)           
                   ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $DocumentId, 
                $ClientId, 
                $DocumentCode, 
                $DocumentName, 
                $DocumentUrl, 
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
        $query = "UPDATE documents SET Status = ? Where QuiID=? ";
        try {
            $stmt = $this->conn->prepare($query);
            return $stmt->execute(array(2, $QuiID));
        } catch (Exception $e) {
            return $e;
        }
    }
}
