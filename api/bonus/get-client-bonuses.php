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

if($result->rowCount()){
    $bonuses = $result->fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($bonuses);
}else{
   echo json_encode(Array());
 
}

