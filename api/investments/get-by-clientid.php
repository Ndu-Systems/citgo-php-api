<?php
 include_once '../../config/Database.php';
 include_once '../../models/Investments.php';

 
 $ClientId = $_GET['ClientId'];
//connect to db
$database = new Database();
$db = $database->connect();

// instantiate investment object
$investments = new Investments($db);

$result = $investments->readByClientId($ClientId,1);
$outPut = array();

if($result->rowCount()){
    $investments = $result->fetchAll(PDO::FETCH_ASSOC);
    $outPut['investments'] = $investments;

}
echo json_encode($outPut);

