<?php
include_once '../../config/Database.php';
include_once '../../models/Bed.php';

$data = json_decode(file_get_contents("php://input"));

$ClientId=$data->ClientId;
$WithdrawalId=$data->WithdrawalId;
$SourceInvestmentId=$data->SourceInvestmentId;
$SourceBonusId=$data->SourceBonusId;
$Amount=$data->Amount;
$CreateUserId=$data->CreateUserId;
$ModifyUserId=$data->ModifyUserId;
$StatusId=$data->StatusId;
//connect to db
$database = new Database();
$db = $database->connect();


$clientwithdrawals = new Clientwithdrawals($db);

$result = $clientwithdrawals->add(
    $ClientId,
    $WithdrawalId,
    $SourceInvestmentId,
    $SourceBonusId,
    $Amount,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);
echo json_encode($result);