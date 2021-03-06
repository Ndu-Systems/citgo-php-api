<?php
include_once '../../config/Database.php';
include_once '../../models/Withdrawal.php';

$data = json_decode(file_get_contents("php://input"));

$WithdrawalId=$data->WithdrawalId;
$Amount=$data->Amount;
$CreateUserId=$data->CreateUserId;
$ModifyUserId=$data->ModifyUserId;
$StatusId=$data->StatusId;
//connect to db
$database = new Database();
$db = $database->connect();


$withdrawal = new Withdrawal($db);

$result = $withdrawal->update(
    $WithdrawalId,
    $Amount,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);
echo json_encode($result);