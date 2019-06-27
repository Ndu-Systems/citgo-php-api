<?php


class Clients
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
    public function read($statusId)
    {

        $query = "
        select patient.PatientId,patient.Title, patient.DOB,patient.StatusId, patient.Province, patient.FirstName, patient.Surname,patient.IdNumber,patient.Email,patient.Cellphone,patient.Gender,patient.CreateDate,patient.AddressLine1,patient.City ,patient.PostCode ,
        medicalaid.MedicalaidId, medicalaid.MedicalaidName, medicalaid.MedicalaidType, medicalaid.MemberShipNumber, medicalaid.PrimaryMember, medicalaid.PrimaryMemberId,
        count(appointment.AppointmentId) as NumAppointments 
        from patient 
        left join  medicalaid on medicalaid.PatientId = patient.PatientId   
        left join appointment on appointment.PatientId = patient.PatientId        
        where patient.StatusId = ?		
		GROUP by patient.PatientId
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($statusId));

        return $stmt;
    }

    public function getById($ClientId)
    {

        $query = "SELECT * from clients where ClientId = ?";
        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ClientId));

        if ($stmt->rowCount()) {
            return $stmt->fetch(PDO::FETCH_ASSOC);
        }
    }
    //Get user by Email
    public function getByUserId($UserId)
    {

        $query = "SELECT * FROM users WHERE UserId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($UserId));

        return $stmt->rowCount();
    }
    public function getClientById($ClientId)
    {

        $query = "SELECT 
        c.ClientId,
        c.UserId,
        c.FirstName,
        c.MiddleName,
        c.Surname,
        c.Province,
        c.Address,
        c.IDNumber,
        c.Gender,
        c.Country,
        c.City,
        c.PostCode,
        c.ParentId,
        c.StatusId AS ClientStatus,
        b.BankingDetailsId,
        b.BankName,
        b.AccountHolder,
        b.BankBranch,
        b.AccountNumber,
        b.AccountType,
        u.UserId,
        u.Email,
        u.CellphoneNumber,
        u.StatusId
    FROM
        clients c
            INNER JOIN
        users u ON u.UserId = c.UserId
            LEFT JOIN
        bankingdetails b ON c.ClientId = b.ClientId
    WHERE
        c.ClientId  = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ClientId));
        $cleint  = null;
        if($stmt->rowCount()){
            $cleint = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return $cleint;
    }
    public function getClientRefferals($ClientId)
    {

        $query = 'SELECT 
        c.FirstName, c.Surname, c.StatusId, b.Amount, b.StatusId as "BonusStatus"
    FROM
        clients c
            LEFT JOIN
        bonus b ON c.ClientId = b.ParentId
    WHERE
        c.ParentId = ?';

        // prepare query statement
        $stmt = $this->conn->prepare($query);

        // Execute query
        $stmt->execute(array($ClientId));
        
        return $stmt;

    }
 
    //Add user 
    public function add(
        $FirstName,
        $MiddleName,
        $Surname,
        $IDNumber,
        $UserId,
        $Gender,
        $Province,
        $ParentId,
        $City,
        $PostCode,
        $Address,
        $StatusId,
        $CreateUserId,
        $ModifyUserId,
        $Email,
        $Country
    ) {
        
        $query = "INSERT INTO clients(
                ClientId,
                FirstName,
                MiddleName,
                Surname,
                IDNumber,
                UserId,
                Gender,
                Province,
                ParentId,
                City,
                Country,
                PostCode,
                Address,
                StatusId,
                CreateUserId,
                ModifyUserId
            ) 
                VALUES (UUID(),?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);
                 ";
        try {
            $stmt = $this->conn->prepare($query);
            if ($stmt->execute(array(
                $FirstName,
                $MiddleName,
                $Surname,
                $IDNumber,
                $UserId,
                $Gender,
                $Province,
                $ParentId,
                $City,
                $Country,
                $PostCode,
                $Address,
                $StatusId,
                $CreateUserId,
                $ModifyUserId
            ))) {
                return $this->getClientByUserId($UserId);
            }
        } catch (Exception $e) {
            return $e;
        }
    }

 
    public function getClientByUserId($UserId)
    {

        $query = "select * from clients inner join users on  clients.UserId=users.UserId WHERE clients.UserId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($UserId));

        if ($stmt->rowCount()) {
            $user = $stmt->fetch(PDO::FETCH_ASSOC);
            return  $user;
        }
    }

    public function updateClient(
        $FirstName,
        $MiddleName,
        $Surname,
        $IDNumber,
        $ClientId,
        $Gender,
        $Province,     
        $City,
        $PostCode,
        $Address,
        $StatusId,        
        $ModifyUserId,       
        $Country
    )
    {
        $query = "UPDATE clients set              
            FirstName=?,
            MiddleName=?,
            Surname=?,
            IDNumber=?,            
            Gender=?,
            Province=?,
            City=?,
            Country=?,
            PostCode=?,
            Address=?,
            StatusId=?,        
            ModifyUserId=?,
            ModifyDate=NOW()
            WHERE ClientId =?
         ";            
            try {
                $stmt = $this->conn->prepare($query);          
                if ($stmt->execute(array(
                    $FirstName,
                    $MiddleName,
                    $Surname,
                    $IDNumber,                  
                    $Gender,
                    $Province,
                    $City,
                    $Country,
                    $PostCode,
                    $Address,
                    $StatusId,                 
                    $ModifyUserId,
                    $ClientId
                ))) {
                    return $this->getById($ClientId);
                }
            } catch (Exception $e) {
                return $e;
            }
    }

    
  
    public function getClientAndShares()
    {

        $query = "
            SELECT 
        c.ClientId,
        c.FirstName,
        c.Surname,
        c.StatusId,
        c.Gender,
        c.CreateDate,
        SUM(i.Amount) AS Shares,
        COUNT(i.ClientId) AS NumberOfShares
    FROM
        clients c
            LEFT JOIN
        investment i ON c.ClientId = i.ClientId
    WHERE
        i.Amount > 0
    GROUP BY i.ClientId; 
        ";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array());

        if ($stmt->rowCount()) {
            return $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
}
