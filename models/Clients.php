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

    public function getById($PatientId)
    {

        $query = "
        select patient.PatientId, patient.FirstName, patient.DOB, patient.Surname,patient.IdNumber,patient.Email,patient.Cellphone,patient.Gender,patient.CreateDate,patient.AddressLine1,patient.City ,patient.PostCode ,
        medicalaid.MedicalaidId, medicalaid.MedicalaidName, medicalaid.MedicalaidType, medicalaid.MemberShipNumber, medicalaid.PrimaryMember, medicalaid.PrimaryMemberId,
        count(appointment.AppointmentId) as NumAppointments 
        from patient 
        left join  medicalaid on medicalaid.PatientId = patient.PatientId   
        left join appointment on appointment.PatientId = patient.PatientId        
        where patient.PatientId = ?		
		GROUP by patient.PatientId
        ";

        //Prepare statement
        $stmt = $this->conn->prepare($query);

        //Execute query
        $stmt->execute(array($PatientId));

        return $stmt;
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

        $query = "SELECT * FROM clients inner join users on users.UserId = clients.UserId WHERE ClientId = ?";

        $stmt = $this->conn->prepare($query);
        $stmt->execute(array($ClientId));
        $cleint  = null;
        if($stmt->rowCount()){
            $cleint = $stmt->fetch(PDO::FETCH_ASSOC);
        }
        return $cleint;
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
                City,
                Country,
                PostCode,
                Address,
                StatusId,
                CreateUserId,
                ModifyUserId
            ) 
                VALUES (UUID(),?,?,?,?,?,?,?,?,?,?,?,?,?,?);
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
}
