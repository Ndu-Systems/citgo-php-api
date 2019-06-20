<?php
include_once '../../config/Database.php';
include_once '../../models/Beneficiaries.php';

$data = json_decode(file_get_contents("php://input"));
$ClientId = $_GET['ClientId'];

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$request = new Beneficiaries($db);

$result = $request->getClientBeneficiaries($ClientId);
echo json_encode($result);




