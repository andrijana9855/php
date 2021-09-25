<?php
include "init.php";

$zvezdica = $_GET['zvezdica'];

$hoteli = $db->pretraziHotele($zvezdica);

if(count($hoteli)>0){
?>
<table class="table table-hover">
    <thead>
    <tr>
        <th>Naziv Hotela</th>
        <th>Zemlja</th>
        <th>Broj zvezdica</th>
        <th>Učitaj</th>
        <th>Obriši</th>
    </tr>
    </thead>
    <tbody>
    <?php

    foreach ($hoteli as $hotel){
        ?>
        <tr>
            <td><?php echo $hotel->getNaziv(); ?></td>
            <td><?php echo $hotel->getZemlja()->getZemlja(); ?></td>
            <td><?php echo $hotel->getBrojZvezdica(); ?></td>
            <td><button class="btn btn-info" onclick="ucitaj(<?php echo $hotel->getIdHotel(); ?>,'<?php echo $hotel->getNaziv(); ?>','<?php echo $hotel->getBrojZvezdica(); ?>',<?php echo $hotel->getZemlja()->getId(); ?>)"><i class="icon-refresh"></i> </button> </td>
            <td><button class="btn btn-danger" onclick="obrisi(<?php echo $hotel->getIdHotel(); ?>)"><i class="icon-trash"></i> </button> </td>
        </tr>
        <?php
    }
    ?>
    </tbody>
</table>
<?php
}else{
    echo "Nema rezultata za ovaj broj zvezdica";
}