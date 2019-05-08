<?php
 include_once '../../config/Database.php';
 include_once '../../models/Investments.php';

 $data = json_decode(file_get_contents("php://input"));

//connect to db
$database = new Database();
$db = $database->connect();

// instantiate investment object
$investments = new Investments($db);

$result = $investments->read(1);

if($result->rowCount()){
    $investments = $result->fetchAll(PDO::FETCH_ASSOC);
}
$outPut = array();
$outPut['investments'] = $investments;
echo json_encode($outPut);

