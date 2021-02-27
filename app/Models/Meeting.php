<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Arr;
use Config;

class Meeting extends Model
{
    protected $table = 'meeting';
    public $timestamps = true;
    protected $guarded = []; 

    public function storeMeeting(array $requestedData, int $adminId) : int
    {
      
        return $this->insert(
            [
                'name' => $requestedData['name'],
                'market_category' => $requestedData['market_category'],                
                'created_at' => now(),
                'is_active' => 1               
            ]
        );
    }

    public function updateMeeting(int $MeetingId, array $requestedData) : int
    {
        return $this->where('id', '=', $MeetingId)->update(
            [
                'name' => $requestedData['name'],
                'market_category' => $requestedData['market_category'],                
                'updated_at' => now()
            ]
        );
    }

    public function setActive(int $MeetingId, int $activeType) : int
    {
        return $this->where('id', '=', $MeetingId)->update(
            [
                'is_active' => $activeType,
                'updated_at' => now()
            ]
        );
    }
   
}
