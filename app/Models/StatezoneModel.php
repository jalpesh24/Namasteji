<?php

namespace App\Models;

use App\Services\StatezoneService;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Support\Facades\Config;

class StatezoneModel extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];

    protected $table = 'statezone';

    // public function companies()
    // {
    //     return $this->belongsTo(CompaniesModel::class);
    // }

    public function storeStatezone(array $requestedData, int $adminId) : int
    {
       
        $StatezoneHelper = new StatezoneService();
        // $dataToInsert = $StatezoneHelper->loadCalculateNetAndVatByGivenGross($requestedData['gross']);

        return $this->insertGetId(
            [
                'name' => $requestedData['name']
            ]
        );
    }

    public function updateStatezone(int $statezoneId, array $requestedData) : int
    {
        // $statezoneHelper = new statezoneService();
        // $dataToInsert = $statezoneHelper->loadCalculateNetAndVatByGivenGross($requestedData['gross']);

        return $this->where('id', $statezoneId)->update(
            [
                'name' => $requestedData['name'],
                'updated_at' => now(),
                'is_active' => 1
            ]
        );
    }

    public function setActive(int $statezoneId, int $activeType) : int
    {
        return $this->where('id', '=', $statezoneId)->update(
            [
                'is_active' => $activeType,
                'updated_at' => now()
            ]
        );
    }

    public function countStatezone() : int
    {
        return $this->get()->count();
    }

    public function getPluckCompanies()
    {
        return CompaniesModel::pluck('name', 'id');
    }

    public function getStatezoneSortedByCreatedAt()
    {
        return $this->all()->sortByDesc('created_at');
    }

    public function getPaginate()
    {
        return $this->paginate(Config::get('crm_settings.pagination_size'));
    }
}
