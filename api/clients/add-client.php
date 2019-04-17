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

//create client data


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

echo json_encode($result);
