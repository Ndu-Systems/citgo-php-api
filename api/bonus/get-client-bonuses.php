<?php
 include_once '../../config/Database.php';
 include_once '../../models/Bonus.php';

 
 $ClientId = $_GET['ClientId'];
//connect to db
$database = new Database();
$db = $database->connect();

// instantiate investment object
$bonuses = new Bonus($db);

$result = $bonuses->getClientBonuses($ClientId);
$outPut = array();

if($result->rowCount()){
    $bonuses = $result->fetchAll(PDO::FETCH_ASSOC);
    $outPut['bonuses'] = $bonuses;
}
echo json_encode($outPut);

