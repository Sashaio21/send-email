<?php

require 'vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

$mail = new PHPMailer(true);

$mail->CharSet = 'UTF-8';
$mail->isSMTP();
$mail->Host = 'smtp.gmail.com';
$mail->SMTPAuth = true;
$mail->Username = 'saschakowal1233@gmail.com';
$mail->Password = 'onbr jidv fgzc embd';
$mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS; 
$mail->Port = 465;


$mail->setFrom('saschakowal1233@gmail.com', 'Sascha Kowal');
$mail->addAddress("alexandrkowal21@gmail.com", "Саша");

$mail->Subject = 'Приглашение на участие в семинаре';
$mail->Body = "test";
$mail->send();

echo "success";

?>
