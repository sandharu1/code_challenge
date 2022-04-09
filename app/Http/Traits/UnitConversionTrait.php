<?php

namespace App\Http\Traits;

trait UnitConversionTrait
{

    public function celsiusToFahrenheit($value)
    {
        $fahrenheit = (9 / 5) * ($value + 32);
        return $fahrenheit;
    }
}
