<?php
include_once '../../config/Database.php';
include_once '../../models/Beneficiaries.php';

$ben = json_decode(file_get_contents("php://input"));

//connect to db
$database = new Database();
$db = $database->connect();


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



// get response


echo json_encode(true);
