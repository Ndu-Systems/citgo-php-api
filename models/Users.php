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
        u.UserId, 
        u.Email ,
        c.FirstName
        FROM 
        users u
        inner join
        clients c on u.UserId = c.UserId
        WHERE 
        u.Email =   ?
        AND 
        u.Password = ?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($email, $password));

        return $stmt;
    }

    public function getUserEmails()
    {
        $query = "SELECT * FROM users WHERE 1";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array());

        if ($stmt->rowCount()) {
            $emails = $stmt->fetchAll(PDO::FETCH_ASSOC);
            return  $emails;
        }
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
        if ($this->getByEmail($Email) > 0) {
            return "User with email address (" . $Email . ") already exists";
        }

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
    //Get a user
    public function getUserByEmailandPassword($email, $password)
    {
        $query = "SELECT         
        u.UserId,  
        r.RoleId as Role,
        c.ClientId
        FROM 
        users u JOIN 
        userroles ur on u.UserId = ur.UserId 
        LEFT JOIN roles r on ur.RoleId = r.RoleId
        LEFT JOIN clients c on u.UserId = c.UserId
        WHERE 
        Email =  ?
        AND 
        Password = ?
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($email, $password));

        return $stmt;
    }
    public function getUserToVerify($UserId)
    {
        // echo $UserId;
        $query = "SELECT * from users where UserId  = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($UserId));

        if ($stmt->rowCount()) {
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            return  $user;
        }
    }
}

