<?php


class Users
{
    //DB Stuff
    private $conn;

    //Return properties
    public $UserId;
    public $Email;
    public $Password;

    //Constructor to DB

    public function __construct($db)
    {
        $this->conn = $db;
    }

    //Get a user
    public function read($email, $password)
    {

        $query = "SELECT 
        UserId, 
        Email ,
        Username
        FROM 
        users 
        WHERE 
        Email =   ?
        AND 
        Password = ?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($email, $password));

        return $stmt;
    }
    //Add user 
    public function add(
        $Email,
        $CellphoneNumber,
        $Password,
        $CreateUserId,
        $ModifyUserId,
        $StatusId

    ) {
        // if ($this->getByEmail($Email) > 0) {
        //     return "User with email address (" . $Email . ") already exists";
        // }

        $query = "INSERT INTO users(
                UserId,
                Email,
                CellphoneNumber,
                Password,
                CreateUserId,
                ModifyUserId,
                StatusId
                ) 
                    VALUES (UUID(),?,?,?,?,?,?);
                     ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $Email,
                $CellphoneNumber,
                $Password,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $this->getUserByEmail($Email);
            }
        } catch (Exception $e) {
            return $e;
        }
    }
    public function getByEmail($email)
    {

        $query = "SELECT * FROM users WHERE Email = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($email));

        return $stmt->rowCount();
    }
    public function getUserByEmail($email)
    {

        $query = "SELECT UserId FROM users WHERE Email = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($email));

        if ($stmt->rowCount()) {
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            return  $user['UserId'];
        }
    }
}
