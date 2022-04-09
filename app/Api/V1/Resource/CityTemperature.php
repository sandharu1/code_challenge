<?php

namespace App\Api\V1\Resource;

use Carbon\Carbon;
use Illuminate\Http\Resources\Json\JsonResource;

class CityTemperature extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array|\Illuminate\Contracts\Support\Arrayable|\JsonSerializable
     */
    public function toArray($request)
    {
        return [
            'message' => 'Successfuly Fetched!',
            'cityTempData' => [
                'id' => $this->collection->id,
                'temp_c' => $this->collection->temp_c,
                'temp_f' => $this->collection->temp_f,
                'created_at' => Carbon::parse($this->created_at)->format("M, d F Y, g:i a")
            ],
            'pagination' => [
                'total' => $this->total(),
                'per_page' => $this->perPage(),
                'current_page' => $this->currentPage(),
                'last_page' => $this->lastPage(),
                'from' => $this->firstItem(),
                'to' => $this->lastItem(),
            ]

            //Wed, 10 July 2022, 16:00pm
            //M, d F Y, g:i a
        ];
    }
}
