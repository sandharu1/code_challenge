<?php

namespace App\Http\Controllers;

use App\Http\Traits\UnitConversionTrait;
use App\Models\CityTemperature;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Http;

class TestController extends Controller
{

    use UnitConversionTrait;

    public function testAPI(Request $request)
    {
        try {
            $api_baseurl = config('openweathermap.api_baseurl');
            $cities = config('openweathermap.cities');
            $api_key = config('openweathermap.api_key');
            $user = auth()->user();


            if (!empty($cities)) {
                foreach ($cities as $key => $value) {

                    // call weather map API
                    $response = Http::get($api_baseurl . '/data/2.5/onecall', [
                        'lat' => $value['lat'],
                        'lon' => $value['lon'],
                        'exclude' => 'minutely,hourly,daily,alerts',
                        'units' => 'metric',
                        'appid' => $api_key
                    ]);

                    if ($response->successful()) {
                        // response object
                        $res_obj = $response->object();

                        // convert celsius to fahrenheit
                        $tempFahrenheit = $this->celsiusToFahrenheit($res_obj->current->temp ?? 0);

                        // add temperature dataset
                        CityTemperature::create([
                            'user_id' => $user->id,
                            'city_slug' => $value['slug'],
                            'temp_c' => $res_obj->current->temp ?? NULL,
                            'temp_f' => $tempFahrenheit ?? NULL,
                        ]);
                    }
                }
            }
        } catch (\Throwable $th) {
            throw $th;
        }
    }
}
