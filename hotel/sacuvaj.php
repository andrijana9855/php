<?php
include "init.php";

$naziv = strip_tags($_POST['naziv']);
$brojZvezdica = strip_tags($_POST['brojZvezdica']);
$zemlja = strip_tags($_POST['zemlja']);

$uspesno = $db->sacuvajHotel($naziv,$brojZvezdica,$zemlja);

if($uspesno){
    echo "Uspešno sačuvan hotel";
}else{
    echo "Neuspešno sačuvan hotel";
}