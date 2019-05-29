<?php
include_once '../../config/Database.php';
include_once '../../models/Clients.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Email = $data->Email;
$CellphoneNumber = $data->CellphoneNumber;
$FirstName = $data->FirstName;
$Surname = $data->Surname;
$MiddleName = $data->MiddleName;
$IDNumber = $data->IDNumber;
$City = $data->City;
$Province = $data->Province;
$Country = $data->Country;
$PostCode = $data->PostCode;
$Address = $data->Address;
$Gender = $data->Gender;
$UserId = $data->UserId;
$ClientId = $data->ClientId;
$ModifyUserId = $UserId;
$Password = $data->Password; 
$StatusId = $data->StatusId;
 
//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$user = new Users($db);

$result = $user->updateUser(
    $Email,
    $CellphoneNumber,
    $Password,
    $ModifyUserId,
    $StatusId,
    $UserId
);

if($result==null){
    //User with the email address already exists
    echo json_encode(0);
    return 0;
}
if($result == $UserId){

    $client = new Clients($db);

    $insertClient = $client->updateClient(
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
        $ModifyUserId,  
        $Country
    );
    
    echo json_encode($insertClient);
}
 
 


