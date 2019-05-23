<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Transactionhistory.php';
include_once '../../models/Userroles.php';


$data = json_decode(file_get_contents("php://input"));

$UserId = $data->UserId;
$Email = $data->Email;
$CellphoneNumber = $data->CellphoneNumber;
$Password = $data->Password;
$ModifyUserId = $data->ModifyUserId;
$StatusId = $data->StatusId;

//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new Users($db);

$result = $user->VerifyUser(
    $UserId,
    $StatusId
);
echo json_encode($result);

// create role
$log = new Transactionhistory($db);
$userroles = new Userroles($db);
if(isset($result['UserId'])){
    $userrolescreate = $userroles->add($result['UserId'],2,$ModifyUserId,$ModifyUserId,1);
    $log_result  = $log->add('VERIFY_USER',  json_encode($data),'', $result['UserId'], $ModifyUserId, $ModifyUserId, 1);
}else{
    $log_result  = $log->add('VERIFY_USER',  json_encode($data),'', $result, $ModifyUserId, $ModifyUserId, 1);
}


