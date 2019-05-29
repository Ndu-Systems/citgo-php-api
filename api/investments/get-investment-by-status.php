<?php
include_once '../../config/Database.php';
include_once '../../models/Investments.php';

$data = json_decode(file_get_contents("php://input"));

$StatusId = $_GET['StatusId'];

//connect to db
$database = new Database();
$db = $database->connect();

// create user first to get UserId
$investment = new Investments($db);

$result = $investment->getInvestmentByStatus($StatusId);

echo json_encode($result);

 
 


