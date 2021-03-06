<?php
include_once '../../config/Database.php';
include_once '../../models/Users.php';
include_once '../../models/Transactionhistory.php';


$data = json_decode(file_get_contents("php://input"));
 $email          = $data->email;
 $password          = $data->password;
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$user = new Users($db);
$log = new Transactionhistory($db);


$result = $user->getUserByEmailandPassword($email, $password);

if($result->rowCount()){
    $user = $result->fetch(PDO::FETCH_OBJ);
    echo json_encode($user);

    $log_result  = $log->add('USER_LOGIN',  json_encode($data),'LOGIN_SUCESS', $email, 'SYS', 'SYS', 1);
}else{
    echo json_encode("Invalid User");
    $log_result  = $log->add('USER_LOGIN',  json_encode($data),'LOGIN_FAILED', $email, 'SYS', 'SYS', 1);

}





