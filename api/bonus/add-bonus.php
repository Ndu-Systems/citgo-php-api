    <?php
include_once '../../config/Database.php';
include_once '../../models/Bonus.php';

$data = json_decode(file_get_contents("php://input"));

$ClientId =$data->ClientId;
$InvestmentId=$data->InvestmentId;
$DocumentCode=$data->DocumentCode; 
$DocumentName=$data->DocumentName; 
$DocumentUrl=$data->DocumentUrl;
$CreateUserId=$data->CreateUserId; 
$ModifyUserId=$data->ModifyUserId;
$StatusId=$data->StatusId;
//connect to db
$database = new Database();
$db = $database->connect();

//Instantiate user object

$bonus = new Bonus($db);

$result = $bonus->add(
    $bonusId,
    $Amount,
    $ClientId,
    $ParentId,
    $CreateUserId,
    $ModifyUserId,
    $StatusId
);
echo json_encode($result);