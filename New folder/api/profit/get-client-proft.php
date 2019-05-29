<?php
include_once '../../config/Database.php';
include_once '../../models/Profit.php';


$clentId = $_GET['clentId'];
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$profit = new Profit($db);

$result = $profit->getClientProfit($clentId);
$outputList = Array();

if($result->rowCount()){
    $outputList = $result->fetchAll(PDO::FETCH_ASSOC);
}
echo json_encode($outputList);




