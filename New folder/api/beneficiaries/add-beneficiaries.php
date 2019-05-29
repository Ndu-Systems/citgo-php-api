<?php
include_once '../../config/Database.php';
include_once '../../models/Beneficiaries.php';
include_once '../../models/Clients.php';

$data = json_decode(file_get_contents("php://input"));
$beneficiaries  = $data->beneficiaries;

//connect to db
$database = new Database();
$db = $database->connect();


foreach ($beneficiaries as $ben) {
$beneficiary = new Beneficiaries($db);

    $beneficiary->add(
        $ben->ClientId,
        $ben->Name,
        $ben->Surname,
        $ben->IDNumber,
        $ben->Relation,
        $ben->CreateUserId,
        $ben->CreateUserId,
        $ben->StatusId
    );
}


// get response


echo json_encode(true);
