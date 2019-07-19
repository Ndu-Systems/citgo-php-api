<?php
 include_once '../../config/Database.php';
 include_once '../../models/Investments.php';

 
 $ClientId = $_GET['ClientId'];
//connect to db
$database = new Database();
$db = $database->connect();

// instantiate investment object
$investments = new Investments($db);

$result = $investments->getClientWallet($ClientId);
$outPut =null;

if($result->rowCount()){
    $investments = $result->fetch(PDO::FETCH_ASSOC);
    $outPut = $investments;

}
echo json_encode($outPut);

