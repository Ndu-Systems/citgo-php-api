<? 
include_once '../../config/Database.php';
include_once '../../models/Accounts.php';

$data = json_decode(file_get_contents("php://input"));

$Password  = $data->Password;              
$Email     = $data->Email; 
$ModifyUserId = $data->UserId;

//connect to db
$database = new Database();
$db = $database->connect();

$account = new Accounts($db);

$result = $account->updatePassword($Password, $Email, $ModifyUserId);

echo json_encode($result);