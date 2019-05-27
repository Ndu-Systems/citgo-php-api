<?php
include_once '../../config/Database.php';
include_once '../../models/Documents.php';

$data = json_decode(file_get_contents("php://input"));

$ClientId =$data->ClientId;
$InvestmentId=$data->InvestmentId;
$DocumentCode=$data->DocumentCode; 
$DocumentName=$data->DocumentName; 
$DocumentUrl=$data->DocumentUrl;
$CreateUserId=$data->CreateUserId; 
$ModifyUserId=$data->ModifyUserId;
$StatusId=$data->StatusId;
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$documents = new Documents($db);

$result = $documents->add(
    $ClientId, 
    $InvestmentId, 
    $DocumentCode, 
    $DocumentName, 
    $DocumentUrl, 
    $CreateUserId, 
    $ModifyUserId, 
    $StatusId
);

// if event id -- update status


echo json_encode($result);