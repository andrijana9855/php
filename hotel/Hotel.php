<?php
class Hotel
{
    private $idHotel;
    private $naziv;
    private $zemlja;
    private $brojZvezdica;

    public function __construct($idHotel, $naziv, $zemlja, $brojZvezdica)
    {
        $this->idHotel = $idHotel;
        $this->naziv = $naziv;
        $this->zemlja = $zemlja;
        $this->brojZvezdica = $brojZvezdica;
    }


    public function getIdHotel()
    {
        return $this->idHotel;
    }

    public function setIdHotel($idHotel)
    {
        $this->idHotel = $idHotel;
        return $this;
    }

    public function getNaziv()
    {
        return $this->naziv;
    }

    public function setNaziv($naziv)
    {
        $this->naziv = $naziv;
        return $this;
    }


    public function getZemlja()
    {
        return $this->zemlja;
    }

    public function setZemlja($zemlja)
    {
        $this->zemlja = $zemlja;
        return $this;
    }


    public function getBrojZvezdica()
    {
        return $this->brojZvezdica;
    }

    public function setBrojZvezdica($brojZvezdica)
    {
        $this->brojZvezdica = $brojZvezdica;
        return $this;
    }

}