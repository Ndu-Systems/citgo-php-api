<?php
include_once '../../config/Database.php';
include_once '../../models/BankingInfo.php';

$data = json_decode(file_get_contents("php://input"));


$ClientId  = $data->ClientId;
$BankName = $data->BankName;
$BankBranch = $data->BankBranch;
$AccountNumber = $data->AccountNumber;
$AccountType = $data->AccountType;
$CreateUserId = $data->CreateUserId;
$ModifyUserId = $CreateUserId;
$StatusId = $data->StatusId;
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$bankingInfo = new BankingInfo($db);

$result = $bankingInfo->add(
    $ClientId,
    $BankName,
    $BankBranch,
    $AccountNumber,
    $AccountType,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);

echo json_encode($result);







