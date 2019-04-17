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
        $UserId = time();
        
        $query = "INSERT INTO users(
                UserId,
                Email,
                CellphoneNumber,
                Password,
                CreateUserId,
                ModifyUserId,
                StatusId
                ) 
                    VALUES (?,?,?,?,?,?,?);
                     ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $UserId,
                $Email,
                $CellphoneNumber,
                $Password,
                $CreateUserId,
                $ModifyUserId,
                $StatusId
            ))) {
                return $UserId;
            }
        } catch (Exception $e) {
            return $e;
        }
    }
}
