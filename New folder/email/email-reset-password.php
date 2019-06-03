<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Methods: GET, POST, PATCH, PUT, DELETE, OPTIONS');
header('Access-Control-Allow-Headers: Origin, Content-Type, X-Auth-Token');
$data = json_decode(file_get_contents("php://input"));

$name = $data->name;
$email= $data->email;
$link= $data->link;

 $msg = "
 <div
 style='position:relative;width:80%;font-family:Trebuchet MS;background-color:#ecf0f1;box-sizing: border-box;margin: auto; padding: 3%;'>
 <h2 style='text-align: center;width:100%;'>
     Forgot password
 </h2>
 <div style='width:100%;padding:3%;padding-bottom: 1%;'>
     <p style='text-align:left;width:80%;'>

         Hello $name <br>
         <br>
          We got a request to reset your Citgo Africa account password. <br />
          <div style='width:100%; text-align: left;padding:1%;margin: 2rem 0;'>
             <a style='text-decoration:none; background-color: #2ecc71;border: none;color: white; padding: 12px 16px;font-size: 16px;cursor: pointer;box-sizing: border-box;border-radius: 30px;text-transform: capitalize;'
                 href=$link>reset password</a>
         </div>
         If you ignore this message, your password won't be changed.<br/>          
         If you believe you received this email by <b>mistake</b> or have any questions,
         feel free to shoot us an email at support@citgoafrica.com

         All the best,
         The Citgo Team
     </p>
     <p class='left'
         style='width:100%;text-align:left;padding-top:2%;border-top-width:1px;border-top-style:solid;border-top-color:rgb(199, 199, 199);'>
         Regrads <br>
         Citgo Team <br>
         account@citgoafrica.com
     </p>
 </div>
</div>
      
";

$to = "mrnnmthembu@gmail.com ,Freedom.Khanyile1@gmail.com, ".$email;
$subject = 'Citgo  new account Confirmation';
$from = 'ndumiso@ndu-systems.net';
 
 
// headers
$headers .= "Reply-To: The Sender <account@citgoafrica.com>\r\n"; 
$headers .= "Return-Path: The Sender <account@citgoafrica.com>\r\n"; 
$headers .= "From: The Sender <account@citgoafrica.com>\r\n";  
$headers .= "Organization: Citgo Africa\r\n";
$headers .= "MIME-Version: 1.0\r\n";
$headers .= "Content-type: text/plain; charset=iso-8859-1\r\n";
$headers .= "X-Priority: 3\r\n";
$headers .= "X-Mailer: PHP". phpversion() ."\r\n" ;
//end headers

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