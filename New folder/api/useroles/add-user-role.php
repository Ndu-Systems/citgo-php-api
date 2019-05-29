<?php
include_once '../../config/Database.php';
include_once '../../models/Userroles.php';

$data = json_decode(file_get_contents("php://input"));


$UserId  = $data->UserId;
$RoleId = $data->RoleId;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$role = new Userroles($db);

$result = $role->add(
    $UserId,
    $RoleId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);







