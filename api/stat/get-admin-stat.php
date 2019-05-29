<?php
include_once '../../config/Database.php';
include_once '../../models/Stat.php';

$data = json_decode(file_get_contents("php://input"));

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate client object

$stat = new Stat($db);

$result = $stat->getAdminStat();
echo json_encode($result);









