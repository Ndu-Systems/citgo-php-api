<?php
include_once '../../config/Database.php';
include_once '../../models/Clients.php';

$data = json_decode(file_get_contents("php://input"));

$ClientId = $_GET['ClientId'];


//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new Clients($db);

$result = $user->getClientById($ClientId);
echo json_encode($result);









