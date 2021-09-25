<?php
class KomunikacijaSaBazom
{
    public function __construct($konekcija)
    {
        $this->konekcija = $konekcija;
    }

    public function pretraziHotele($zvezdica)
    {
        $upit = "SELECT * FROM hoteli h join zemlja z on h.id = z.id WHERE brojZvezdica='" . $zvezdica . "'";
        $niz = [];
        $rezultatUpita = $this->konekcija->query($upit);
        while ($red = $rezultatUpita->fetch_object()){
            $niz[] = new Hotel($red->idHotel,$red->naziv,new Zemlja($red->id,$red->zemlja,$red->glgrad,$red->kontinent),$red->brojZvezdica);
        }
        return $niz;
    }

    public function vratiZemlje()
    {
        $upit = "SELECT * FROM zemlja";
        $niz = [];
        $rezultatUpita = $this->konekcija->query($upit);
        while ($red = $rezultatUpita->fetch_object()){
            $niz[] = new Zemlja($red->id,$red->zemlja,$red->glgrad,$red->kontinent);
        }
        return $niz;
    }

    public function obrisi($id)
    {
        $upit = "DELETE FROM hoteli WHERE idHotel = " . $id;
        return $this->konekcija->query($upit);
    }

    public function sacuvajHotel($naziv, $brojZvezdica, $zemlja)
    {
        $upit = "INSERT INTO hoteli(naziv,brojZvezdica,id) VALUES ('".$naziv."','".$brojZvezdica."',".$zemlja.")";
        return $this->konekcija->query($upit);
    }

    public function izmeniHotel($hotelID, $naziv, $brojZvezdica, $zemlja)
    {
        $upit = "UPDATE hoteli SET naziv = '".$naziv."',brojZvezdica='".$brojZvezdica."',id=".$zemlja." WHERE idHotel=".$hotelID;
        return $this->konekcija->query($upit);
    }
}