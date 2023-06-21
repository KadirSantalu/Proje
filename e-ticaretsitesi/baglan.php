<?php
ob_start();
session_start();

try {
     $db = new PDO('mysql:host=localhost;dbname=eticaret;charset=utf8', "root", "12345");
     //print "Bağlantı Başarılı!";
} catch (PDOException $e ) {
     //print "Bağlantı Kurulamadı. Hata : " . $e->getMessage() . "<br/>";
     die();
}

$Ayar=$db->query("SELECT * FROM ayar")-> fetch();

if(strpos($_SERVER['SCRIPT_NAME'],"template-yonet/") && substr($_SERVER['SCRIPT_NAME'], -9)!="login.php" && substr($_SERVER['SCRIPT_NAME'], -17)!="login_kontrol.php"){
     if (!isset($_SESSION['kullanici_id'])) {
          header("Location:login.php");
          exit();
     }
}
  ?>