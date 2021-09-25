<?php
include "init.php";

$naziv = strip_tags($_POST['naziv']);
$brojZvezdica = strip_tags($_POST['brojZvezdica']);
$zemlja = strip_tags($_POST['zemlja']);
$hotelID = strip_tags($_POST['hotelID']);

$uspesno = $db->izmeniHotel($hotelID,$naziv,$brojZvezdica,$zemlja);

if($uspesno){
    echo "Uspešno izmenjen hotel";
}else{
    echo "Neuspešno izmenjen hotel";
}