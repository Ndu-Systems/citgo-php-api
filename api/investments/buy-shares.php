<?php

include_once '../../config/Database.php';
include_once '../../models/Investments.php';

$data = json_decode(file_get_contents("php://input"));
// Investment data
$Amount = $data->Amount;
$Name = $data->Name;
$Type = $data->Type;
$ClientId = $data->ClientId;

//connect to db
$database = new Database();
$db = $database->connect();

$investment = new Investments($db);

$result = $investment->insert($Amount,$ClientId,$Name,$Type);

if($result > 0){
    $output = $investment->readByClientId($ClientId,1);
    $outPut = array();
    
    if($output->rowCount()){
        $investments = $output->fetchAll(PDO::FETCH_ASSOC);
        $outPut['investments'] = $investments;
    
    }
    echo json_encode($outPut);
}
else {
    echo ("internal server error;");
}