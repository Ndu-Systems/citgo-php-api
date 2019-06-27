<?php
include_once '../../config/Database.php';
include_once '../../models/Clientwithdrawals.php';

$data = json_decode(file_get_contents("php://input"));

$funds=$data->funds;

$database = new Database();
$db = $database->connect();

$outPut = Array();
foreach ($funds as $fund) {
    $clientwithdrawals = new Clientwithdrawals($db);
    $result = $clientwithdrawals->add(
        $fund->ClientId,
        $fund->WithdrawalId,
        $fund->SourceInvestmentId,
        $fund->SourceBonusId,
        $fund->Amount,
        $fund->CreateUserId,
        $fund->ModifyUserId,
        $fund->StatusId
    );

    $outPut[] = $result;
}
echo json_encode($outPut);