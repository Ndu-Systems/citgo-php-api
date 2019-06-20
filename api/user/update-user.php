<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';

$data = json_decode(file_get_contents("php://input"));

// create user data only
$Email = $data->Email;
$CellphoneNumber = $data->CellphoneNumber;
$UserId = $data->UserId;
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

    
    echo json_encode($result);

 
 


