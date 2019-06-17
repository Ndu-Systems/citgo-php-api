<?php
include_once '../../config/Database.php';
include_once '../../models/Investments.php';

$data = json_decode(file_get_contents("php://input"));

$ClientId=$data->ClientId;
$Amount=$data->Amount;
$Profit=$data->Profit;
$Total=$data->Total;
$Name=$data->Name;
$Type=$data->Type;
$ModifyUserId=$data->ModifyUserId;
$StatusId=$data->StatusId;
$InvestmentId=$data->InvestmentId;
$bankId=$data->bankId;
//connect to db
$database = new Database();
$db = $database->connect();

$investment = new Investments($db);

$result = $investment->updateInvestment(
    $ClientId,
    $Amount,
    $Profit,
    $Total,
    $Name,
    $Type,
    $ModifyUserId,
    $StatusId,
    $InvestmentId,
    $bankId
);

echo json_encode($result);

 
 


