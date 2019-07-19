<?php
 include_once '../../config/Database.php';
 include_once '../../models/Withdrawal.php';

$ClientId = $_GET['ClientId'];

 //connect to db
$database = new Database();
$db = $database->connect();

$withdrawal = new Withdrawal($db);

$result = $withdrawal->getWithdrawalsForClient($ClientId);
$outPut = array();

if($result->rowCount()){
    $beds = $result->fetchAll(PDO::FETCH_ASSOC);
    $outPut = $beds;

}
echo json_encode($outPut);

