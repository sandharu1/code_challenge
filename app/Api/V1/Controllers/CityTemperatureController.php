<?php

namespace App\Api\V1\Controllers;

use App\Api\V1\Requests\GetCityTemperaturesRequest;
use App\Http\Controllers\Controller;
use App\Models\CityTemperature;
use Illuminate\Http\Request;

class CityTemperatureController extends Controller
{

    public function getCityTemperatures(GetCityTemperaturesRequest $request)
    {
        try {
            $cityTempData = CityTemperature::where('user_id', auth()->user()->id)
                ->where('city_slug', $request->city)
                ->sortBy($request->sort_by, 'DESC')
                ->paginate();
        } catch (\Throwable $th) {
            //throw $th;
        }
    }
}
