<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
$data = json_decode(file_get_contents("php://input"));

$name = $data->name;
$email= $data->email;
$subject= $data->subject;
$body= $data->body;

 $msg = "
 <div
 style='position:relative;width:80%;font-family:Trebuchet MS;background-color:#ecf0f1;box-sizing: border-box;margin: auto; padding: 3%;'>
 <h2 style='text-align: center;width:100%;'>
 $subject
 </h2>
 <div style='width:100%;padding:3%;padding-bottom: 1%;'>
   <p style='text-align:left;width:80%;'>


     Hello Citgo team <br>
     <br>
     $body
     <br>   <br>

    Thanks in advanced, <br>
    $name
   </p>
   <p class='left'
     style='width:100%;text-align:left;padding-top:2%;border-top-width:1px;border-top-style:solid;border-top-color:rgb(199, 199, 199);'>
     Regrads <br>
     Citgo  Team <br>
     $email
   </p>
 </div>
</div>
      
";

$to = "support@citgoafrica.com ";
$subject = $subject.' - client enquiry';
$from = $email;
 
$headers  = 'MIME-Version: 1.0' . "\r\n";
$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

$headers .= 'From: '.$from."\r\n".
    'Reply-To: '.$from."\r\n" .
    'X-Mailer: PHP/' . phpversion();
if(isset($name)){    
if(mail($to, $subject, $msg, $headers)){
    echo 1;
}else{
    echo 0;
}
}else{
  echo 3;
}

?>