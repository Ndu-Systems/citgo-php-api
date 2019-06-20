<?php
include_once '../../config/Database.php';
include_once '../../models/Beneficiaries.php';

$data = json_decode(file_get_contents("php://input"));


$BeneficiaryId = $data->BeneficiaryId;
$ClientId = $data->ClientId;
$Name= $data->Name;
$Surname= $data->Surname;
$IDNumber= $data->IDNumber;
$Relation= $data->Relation;
$CreateUserId= $data->CreateUserId;
$ModifyUserId= $data->ModifyUserId;
$StatusId= $data->StatusId;
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$request = new Beneficiaries($db);

$result = $request->update(
    $ClientId,
    $Name,
    $Surname,
    $IDNumber,
    $Relation,
    $CreateUserId,
    $ModifyUserId,
    $StatusId,
    $BeneficiaryId
);

echo json_encode($result);



