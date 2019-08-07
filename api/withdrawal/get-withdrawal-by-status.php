<?php
 include_once '../../config/Database.php';
 include_once '../../models/Withdrawal.php';

  $StatusId = $_GET['StatusId'];
 $statuses = explode("_", $StatusId);

 //connect to db
$database = new Database();
$db = $database->connect();

$withdrawal = new Withdrawal($db);

$result = $withdrawal->getWithdrawalsByStatus($statuses);
$outPut = array();

if($result->rowCount()){
    $beds = $result->fetchAll(PDO::FETCH_ASSOC);
    $outPut = $beds;

}
echo json_encode($outPut);

