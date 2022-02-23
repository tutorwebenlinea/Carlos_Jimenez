<?php

class Fruit1
{
    // Properties
    public $name;
    public $color;

    // Methods
    public function set_name($name)
    {
        $this->name = $name;
    }
    public function get_name()
    {
        return $this->name;
    }
}

// $instancia = new Fruit1();

// $instancia->set_name("Aguacate");

// echo "Valor es " . $instancia->get_name();

// ====================================================================
class Fruit2
{
    // Properties
    public $name;
    public $color;

    // Methods

    public function __construct($name)
    {
        $this->name = $name;
    }
    public function set_name($name)
    {
        $this->name = $name;
    }
    public function get_name()
    {
        return $this->name;
    }
}

$instancia1 = new Fruit2("Aguacate1");
$instancia2 = new Fruit2("Aguacate2");
$instancia3 = new Fruit2("Aguacate3");
$instancia4 = new Fruit2("Aguacate4");

// $instancia->set_name("Aguacate");

echo "Valor es " . $instancia1->get_name() . "<br>";
echo "Valor es " . $instancia2->get_name() . "<br>";
echo "Valor es " . $instancia3->get_name() . "<br>";
echo "Valor es " . $instancia4->get_name() . "<br>";
