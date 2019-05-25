<?php
include_once '../../config/Database.php';
include_once '../../models/Clients.php';

$data = json_decode(file_get_contents("php://input"));

$ClientId = $_GET['ClientId'];
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate client object

$client = new Clients($db);

$result = $client->getClientRefferals($ClientId);

if($result->rowCount()){
    $refferals = $result->fetchAll(PDO::FETCH_ASSOC);
}
$outPut = array();
$outPut['refferals'] = $refferals;
echo json_encode($outPut);









