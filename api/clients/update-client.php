<?php
include_once '../../config/Database.php';
include_once '../../models/Clients.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
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
$ClientId = $data->ClientId;
$ModifyUserId = $data->UserId;
$StatusId = $data->StatusId;
 
//connect to db
$database = new Database();
$db = $database->connect();
$client = new Clients($db);

$insertClient = $client->updateClient(
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
);

echo json_encode($insertClient);
 


