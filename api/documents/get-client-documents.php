<?php
 include_once '../../config/Database.php';
 include_once '../../models/Documents.php';

 
 $ClientId = $_GET['ClientId'];
//connect to db
$database = new Database();
$db = $database->connect();

// instantiate investment object
$documents = new Documents($db);

$result = $documents->getClientDocuments($ClientId);
$outPut = array();

if($result->rowCount()){
    $documents = $result->fetchAll(PDO::FETCH_ASSOC);
    $outPut['documents'] = $documents;

}
echo json_encode($outPut);

