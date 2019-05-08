<?php
include_once '../../config/Database.php';
include_once '../../models/Clients.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

//create user data only
$Email = $data->Email;
$CellphoneNumber = $data->CellphoneNumber;
$Password = 'pass@123!';
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $CreateUserId;
$StatusId = $data->StatusId;


//check for email
if ($Email == '') {
    $Email = time() . '@citgo-africa.co.za';
}



//connect to db
$database = new Database();
$db = $database->connect();


// create user first to get UserId
$user = new Users($db);

$result = $user->add(
    $Email,
    $CellphoneNumber,
    $Password,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);


//create client data
$UserId = $result;
$FirstName = $data->FirstName;
$MiddleName = $data->MiddleName;
$Surname = $data->Surname;
$IDNumber = $data->IDNumber;
$Gender = $data->Gender;
$Province = $data->Province;
$City = $data->City;
$PostCode = $data->PostCode;
$Address = $data->Address;
$Country = $data->Country;

$client = new Clients($db);

$insertClientId = $client->add(
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
);

echo json_encode($insertClientId);
