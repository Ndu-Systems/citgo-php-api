<?php
include_once '../../config/Database.php';
include_once '../../models/Withdrawal.php';

$data = json_decode(file_get_contents("php://input"));

$Amount=$data->Amount;
$CreateUserId=$data->CreateUserId;
$ModifyUserId=$data->ModifyUserId;
$StatusId=$data->StatusId;
$ClientId=$data->ClientId;
//connect to db
$database = new Database();
$db = $database->connect();


$withdrawal = new Withdrawal($db);

$result = $withdrawal->add(
    $Amount,
    $CreateUserId,
    $ModifyUserId,
    $StatusId,
    $ClientId
);
echo json_encode($result);