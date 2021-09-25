<?php
include 'Zemlja.php';
include 'Hotel.php';
include "KomunikacijaSaBazom.php";

$konekcija = new Mysqli('localhost','root','','hoteli');
$konekcija->set_charset("utf8");

$db = new KomunikacijaSaBazom($konekcija);