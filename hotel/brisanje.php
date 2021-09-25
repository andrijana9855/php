<?php
include "init.php";

$id = $_GET['id'];

$uspesno = $db->obrisi($id);

if($uspesno){
    echo "Uspešno obrisan hotel";
}else{
    echo "Neuspešno obrisan hotel";
}